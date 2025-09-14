import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kurumi/src/core/routes/go_router.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
// import 'package:kurumi/src/provider/notification.provider.dart';
// import 'package:workmanager/workmanager.dart';

// @pragma('vm:entry-point')
// void callbackDispatcher() {
//   Workmanager().executeTask((task, inputData) async {
//     try {
//       log.d("Task: $task");
//       log.d("Input Data: $inputData");
//       switch (task) {
//         case "notification_update":
//           await NotificationService.fetch();
//           break;
//         default:
//       }
//       return Future.value(true);
//     } catch (error, stack) {
//       log.w(error.toString());
//       log.f(stack.toString());
//       return Future.value(false);
//     }
//   });
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ignore: dead_code
  // if (false) {
  //   await Workmanager().initialize(callbackDispatcher);
  //   await Workmanager().registerPeriodicTask(
  //     "kurumi-notification-update-task",
  //     "notification_update",
  //   );
  // }
  runApp(
    Phoenix(child: const ProviderScope(child: MyApp())),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(router);
    List<DeviceOrientation> orientationList = [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ];
    if (isTablet) {
      orientationList.addAll([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
    SystemChrome.setPreferredOrientations(orientationList);

    return MaterialApp.router(
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData(
        // primaryTextTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
