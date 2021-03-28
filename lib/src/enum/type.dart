enum TraktType {
  all,
  movies,
  shows,
  seasons,
  episodes,
  lists,
}

extension TraktTypeExtension on TraktType {
  String get string => toString().split('.').last;
}
