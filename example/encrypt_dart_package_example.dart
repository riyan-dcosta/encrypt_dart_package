import 'package:encrypt_dart_package/encrypt_dart_package.dart';

void main() {
  String inputMessage = "Hello";
  String encryptedText = SecretBase().encryptMessage(message: inputMessage);
  String decryptedText = SecretBase().decryptMessage(message: encryptedText);
  print(
      "\n Input : $inputMessage \n Encrypted : $encryptedText \n Decrypted : $decryptedText");
}
