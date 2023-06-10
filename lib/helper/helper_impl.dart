import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:movies/app_config.dart';
import 'package:movies/helper/helper.dart';

class HelperImpl implements Helper {
  @override
  String createHash(String timestamp) {
    const privateKey = AppConfig.privateKey;
    const publicKey = AppConfig.publicKey;
    final stringToHash = utf8.encode("$timestamp$privateKey$publicKey");
    final hash = md5.convert(stringToHash);
    return hash.toString();
  }
}
