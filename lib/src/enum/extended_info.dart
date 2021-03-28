enum TraktExtendedInfo {
  full,
  metadata,
}

extension TraktExtendedInfoExtension on TraktExtendedInfo {
  String get string => toString().split('.').last;
}

extension TraktExtendedInfoListExtesion on List<TraktExtendedInfo> {
  String joinWith([String seperator = '']) =>
      map((e) => e.string).toList().join(seperator);
}
