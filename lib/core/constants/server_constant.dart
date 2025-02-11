import 'dart:io';

class ServerConstant {
  static String serverURL =
      Platform.isAndroid ? 'http://10.0.2.2:5000' : 'http://localhost:5000';
}
