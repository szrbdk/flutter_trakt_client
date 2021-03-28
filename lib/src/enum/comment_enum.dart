enum TraktCommentType {
  all,
  reviews,
  shouts,
}

extension TraktCommentTypeExtension on TraktCommentType {
  String get string => toString().split('.').last;
}
