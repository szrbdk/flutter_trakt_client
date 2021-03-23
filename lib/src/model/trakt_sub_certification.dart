class TraktSubCertification {
  TraktSubCertification({
    this.name,
    this.slug,
    this.description,
  });

  String name;
  String slug;
  String description;

  TraktSubCertification copyWith({
    String name,
    String slug,
    String description,
  }) =>
      TraktSubCertification(
        name: name ?? this.name,
        slug: slug ?? this.slug,
        description: description ?? this.description,
      );

  factory TraktSubCertification.fromJson(Map<String, dynamic> json) =>
      TraktSubCertification(
        name: json['name'],
        slug: json['slug'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
        'description': description,
      };
}
