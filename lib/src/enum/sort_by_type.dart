enum TraktSortBy {
  rank,
  added,
  title,
  released,
  runtime,
  popularity,
  percentage,
  votes,
  my_rating,
  random,
  watched,
  collected,
}

extension TraktSortByExtension on TraktSortBy {
  String get string => toString().split('.').last;
}
