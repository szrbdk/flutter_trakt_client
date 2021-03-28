enum TraktSimpleType {
  movies,
  shows,
}

extension TraktSimpleTypeExtension on TraktSimpleType {
  String get string => toString().split('.').last;
}
