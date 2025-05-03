import 'package:flutter/material.dart';

class Const {
  static const flavor = String.fromEnvironment('flavor');
}

class AppConst {
  static const String version = '0.1.0';
  static const Color primaryColor = Color(0xFF55c500);
  static const Color secondaryColor = Colors.blue;
}

class QiitaConst {
  static const String authEndpoint = 'https://qiita.com/api/v2/oauth/authorize';
  static const String clientId = 'ba845b3a986d2cb09ba849e5916457294f1b4cb5';
  static const String clientSecret = '737454761ec0815300fc38b44eef43a69dbead5e';
  static const String code = '413b2db95b66d1b8f182aef15e8c26e72c287163';

  static const String accessToken = 'cebd39f8b2d1bda11cd26f3b5a009d7886795512';
}
