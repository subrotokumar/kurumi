// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@immutable
class SecureStorage {
  final FlutterSecureStorage? flutterSecureStorage;
  final String? accessToken;
  const SecureStorage({
    this.flutterSecureStorage,
    this.accessToken,
  });

  SecureStorage copyWith({
    FlutterSecureStorage? flutterSecureStorage,
    String? accessToken,
  }) {
    return SecureStorage(
      flutterSecureStorage: flutterSecureStorage ?? this.flutterSecureStorage,
      accessToken: accessToken ?? this.accessToken,
    );
  }
}

class SecureStorageNotifier extends StateNotifier<SecureStorage?> {
  SecureStorageNotifier() : super(null);

  void init() {
    FlutterSecureStorage flutterSecureStorage = const FlutterSecureStorage();
    state = SecureStorage(flutterSecureStorage: flutterSecureStorage);
  }

  void setAccessToken(String accessToken) {
    state = state?.copyWith(accessToken: accessToken);
  }
}
