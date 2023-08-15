import 'package:encrypt/encrypt.dart';

abstract class IEncryptBase {
  String encryptMessage({required String message});
  String decryptMessage({required String message});
}

class EncryptBase extends IEncryptBase {
  late final String privateKey;
  EncryptBase() {
    privateKey = '1234567890123456789012';
  }
  @override
  String decryptMessage({required String message}) {
    final key = Key.fromUtf8(privateKey);
    final iv = IV.fromLength(16);
    final decrypter = Encrypter(AES(key));
    return decrypter.decrypt(Encrypted.from64(message), iv: iv);
  }

  @override
  String encryptMessage({required String message}) {
    final key = Key.fromUtf8(privateKey);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    return encrypter.encrypt(message, iv: iv).base64;
  }
}
