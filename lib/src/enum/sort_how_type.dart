enum TraktSortHow {
  asc,
  desc,
}

extension TraktSortHowExtension on TraktSortHow {
  String get string => toString().split('.').last;
}
