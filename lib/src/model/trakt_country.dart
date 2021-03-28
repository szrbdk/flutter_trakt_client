class TraktCountry {
  TraktCountry({
    this.name,
    this.code,
  });

  String name;
  String code;

  TraktCountry copyWith({
    String name,
    String code,
  }) =>
      TraktCountry(
        name: name ?? this.name,
        code: code ?? this.code,
      );

  factory TraktCountry.fromJson(Map<String, dynamic> json) => TraktCountry(
        name: json['name'],
        code: json['code'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'code': code,
      };
}
