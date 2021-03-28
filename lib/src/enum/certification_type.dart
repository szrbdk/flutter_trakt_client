enum TraktCertificationType {
  movies,
  shows,
}

extension TraktCertificationTypeExtension on TraktCertificationType {
  String get string => toString().split('.').last;
}
