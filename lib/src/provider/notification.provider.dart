// import 'dart:convert';

// import 'package:anilist/anilist.dart';
// import 'package:ferry/ferry.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;

// final notificationProvider = Provider((ref) => NotificationService());

// class NotificationService {
//   static final FlutterLocalNotificationsPlugin _notificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   static Future init() async {
//     // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     final DarwinInitializationSettings initializationSettingsDarwin =
//         DarwinInitializationSettings(
//       onDidReceiveLocalNotification: (id, title, body, payload) {},
//     );

//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsDarwin,
//     );

//     await _notificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()!
//         .requestNotificationsPermission();

//     await _notificationsPlugin.initialize(
//       initializationSettings,
//       // onDidReceiveNotificationResponse: (details) => null,
//       // onDidReceiveBackgroundNotificationResponse: (details) => null,
//     );
//   }

//   static Future cancelAll() async {
//     await _notificationsPlugin.cancelAll();
//   }

//   static Future<void> fetch() async {
//     final notificationsPlugin = FlutterLocalNotificationsPlugin();

//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: const AndroidInitializationSettings('@mipmap/ic_launcher'),
//       iOS: DarwinInitializationSettings(
//         onDidReceiveLocalNotification: (id, title, body, payload) {},
//       ),
//     );

//     await notificationsPlugin.initialize(initializationSettings);

//     final pref = await SharedPreferences.getInstance();
//     final isLoggedIn = pref.getBool('isLoggedIn') ?? false;
//     if (!isLoggedIn) return;
//     const flutterSecureStorage = FlutterSecureStorage();
//     final accessToken = await flutterSecureStorage.read(
//       key: 'AniListAccessToken',
//       aOptions: const AndroidOptions(encryptedSharedPreferences: true),
//     );
//     if (accessToken == null) return;
//     await Hive.initFlutter();
//     final box = await Hive.openBox('anilist_graphql');
//     final last = DateTime.tryParse(pref.getString('lastCacheCleared') ?? '');
//     final now = DateTime.now();
//     if (last == null) {
//     } else if (now.month != last.month || now.difference(last).inDays >= 1) {
//       await box.clear();
//       pref.setString('lastCacheCleared', now.toString());
//     }
//     final mediaListBox = await Hive.openBox('mediaListBox');

//     final response = await Client(
//       link: HttpLink(
//         'https://graphql.anilist.co',
//         defaultHeaders: {'Authorization': 'Bearer $accessToken'},
//       ),
//       cache: Cache(
//         store: HiveStore(mediaListBox),
//         possibleTypes: possibleTypesMap,
//       ),
//       defaultFetchPolicies: {OperationType.query: FetchPolicy.CacheAndNetwork},
//     ).request(GNotificationsQueryReq((b) => b..vars.reset = false)).first;

//     final data = response.data?.Page?.notifications;
//     if (data == null) return;
//     final lastTimestamp = pref.getInt("last_update_timestamp") ??
//         DateTime.now().millisecondsSinceEpoch;
//     final lastUpdateTime = DateTime.fromMillisecondsSinceEpoch(lastTimestamp);
//     DateTime max = DateTime.fromMillisecondsSinceEpoch(lastTimestamp);
//     for (int i = 0; i < data.length; i++) {
//       final item = data.elementAt(i);
//       final type = item?.G__typename;
//       bool isAiring = type == 'AiringNotification';
//       if (isAiring) {
//         item
//             as GNotificationsQueryData_Page_notifications__asAiringNotification;
//         DateTime time =
//             DateTime.fromMillisecondsSinceEpoch((item.createdAt ?? 0) * 1000);

//         max = max.compareTo(time) > 0 ? max : time;
//         if (time.compareTo(lastUpdateTime) > 0) {
//           final http.Response response =
//               await http.get(Uri.parse(item.media?.coverImage?.large ?? ''));
//           StyleInformation bigPictureStyleInformation =
//               BigPictureStyleInformation(
//             ByteArrayAndroidBitmap.fromBase64String(
//               base64Encode(response.bodyBytes),
//             ),
//             largeIcon: ByteArrayAndroidBitmap.fromBase64String(
//               base64Encode(response.bodyBytes),
//             ),
//           );
//           await notificationsPlugin.show(
//             item.id,
//             item.media?.title?.userPreferred ?? 'New episode aired',
//             'Episode ${item.episode} aired',
//             NotificationDetails(
//               android: AndroidNotificationDetails(
//                 "kurumi-new-ep",
//                 "kurumi-new-ep-channel",
//                 channelDescription: 'New Episode Alert!',
//                 importance: Importance.max,
//                 priority: Priority.high,
//                 ticker: 'ticker',
//                 styleInformation: bigPictureStyleInformation,
//               ),
//             ),
//           );
//         }
//       } else {
//         item
//             as GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification;
//       }
//     }
//     await pref.setInt("last_update_timestamp", max.millisecondsSinceEpoch);
//   }
// }
