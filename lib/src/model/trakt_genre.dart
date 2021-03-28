class TraktGenre {
  TraktGenre({
    this.name,
    this.slug,
  });

  String name;
  String slug;

  TraktGenre copyWith({
    String name,
    String slug,
  }) =>
      TraktGenre(
        name: name ?? this.name,
        slug: slug ?? this.slug,
      );

  factory TraktGenre.fromJson(Map<String, dynamic> json) => TraktGenre(
        name: json['name'],
        slug: json['slug'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
      };
}
