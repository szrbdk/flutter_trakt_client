enum TraktGrantType {
  authorization_code,
  refresh_token,
}

extension TraktGrantTypeExtension on TraktGrantType {
  String get string => toString().split('.').last;
}
