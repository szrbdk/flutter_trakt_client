class TraktLanguage {
  TraktLanguage({
    this.name,
    this.code,
  });

  String name;
  String code;

  TraktLanguage copyWith({
    String name,
    String code,
  }) =>
      TraktLanguage(
        name: name ?? this.name,
        code: code ?? this.code,
      );

  factory TraktLanguage.fromJson(Map<String, dynamic> json) => TraktLanguage(
        name: json['name'],
        code: json['code'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'code': code,
      };
}
