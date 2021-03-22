import 'package:trakt_client/src/enum/grant_type.dart';

class EnumHelper {
  TraktGrantType traktGrantTypeFromString(String value) {
    var _keys = List<String>.from(
        TraktGrantType.values.map((e) => e.toString().split('.').last));
    var _index = _keys.indexWhere((element) => element == value);
    if (_index >= 0) {
      return TraktGrantType.values[_index];
    } else {
      return null;
    }
  }

  String traktGrantTypeToString(TraktGrantType value) {
    return value.toString().split('.').last;
  }
}
