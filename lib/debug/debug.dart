import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

void testModeSharedPreferences() {
  final map = {
    'accessToken': 'ac6d1036484f9f452d70f8f3a4eb3d0ce5247e2c',
  };
  final Map<String, Object> values = <String, Object>{
    'user_preferences': jsonEncode(map),
  };
  // ignore: invalid_use_of_visible_for_testing_member
  SharedPreferences.setMockInitialValues(values);
}
