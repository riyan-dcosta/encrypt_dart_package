abstract class ISecretBase {
  String encryptMessage({required String message});
  String decryptMessage({required String message});
}

class SecretBase extends ISecretBase {
  @override
  String decryptMessage({required String message}) {
    // TODO: implement decryptMessage
    throw UnimplementedError();
  }

  @override
  String encryptMessage({required String message}) {
    // TODO: implement encryptMessage
    throw UnimplementedError();
  }
}
