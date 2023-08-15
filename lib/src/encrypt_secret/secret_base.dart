import 'package:encrypt_dart_package/src/encrypt_secret/encrypt_base.dart';

abstract class ISecretBase {
  String encryptMessage({required String message});
  String decryptMessage({required String message});
}

class SecretBase extends ISecretBase {
  @override
  String decryptMessage({required String message}) {
    return EncryptBase().decryptMessage(message: message);
  }

  @override
  String encryptMessage({required String message}) {
    return EncryptBase().encryptMessage(message: message);
  }
}
