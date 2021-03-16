import 'package:flutter/material.dart';

class TraktHelper {
  Map<String, dynamic> cleanMap(
      {@required bool clean, @required Map<String, dynamic> map}) {
    if (clean) map.removeWhere((key, value) => value == null);
    return map;
  }
}
