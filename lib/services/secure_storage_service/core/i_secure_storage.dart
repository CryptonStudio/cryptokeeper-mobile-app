import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class ISecureStorage {
  Future<void> write(String key, String value) async {
    try {
      const storage = FlutterSecureStorage();
      await storage.write(key: key, value: value);
    } catch (e) {
      log(e);
      throw (e);
    }
  }

  Future<String> read(String key) async {
    try {
      const storage = FlutterSecureStorage();
      var value = await storage.read(key: key);
      return value;
    } catch (e) {
      log(e);
      throw (e);
    }
  }

  Future<void> delete(String key) async {
    try {
      const storage = FlutterSecureStorage();
      await storage.delete(key: key);
    } catch (e) {
      log(e);
      throw e;
    }
  }
}
