import 'package:ck_login/services/secure_storage_service/core/i_secure_storage.dart';

class ISecureStorageService extends ISecureStorage {
  final String _pinCodeKey;

  ISecureStorageService(
    this._pinCodeKey,
  );

  Future<void> savePinCode(String pinCode) async {
    await write(_pinCodeKey, pinCode);
    read(_pinCodeKey).then((value) {
      print(value);
    });
  }
}
