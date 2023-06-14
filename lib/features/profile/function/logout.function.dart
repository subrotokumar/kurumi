import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future logout() async {
  const storage = FlutterSecureStorage();
  await storage.deleteAll(
      aOptions: const AndroidOptions(
    encryptedSharedPreferences: true,
  ));
  final pref = await SharedPreferences.getInstance();
  await pref.clear();
}
