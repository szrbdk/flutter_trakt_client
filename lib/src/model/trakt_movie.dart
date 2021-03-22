import 'package:trakt_client/src/model/trakt_ids.dart';

class TraktMovie {
  TraktMovie({
    this.title,
    this.year,
    this.ids,
    this.tagline,
    this.overview,
    this.released,
    this.runtime,
    this.country,
    this.trailer,
    this.homepage,
    this.status,
    this.rating,
    this.votes,
    this.commentCount,
    this.updatedAt,
    this.language,
    this.availableTranslations,
    this.genres,
    this.certification,
  });

  String title;
  int year;
  TraktIds ids;
  String tagline;
  String overview;
  DateTime released;
  int runtime;
  dynamic country; 
  String trailer;
  dynamic homepage;
  String status;
  int rating;
  int votes;
  int commentCount;
  DateTime updatedAt;
  String language;
  List<String> availableTranslations;
  List<String> genres;
  String certification;

  TraktMovie copyWith({
    String title,
    int year,
    TraktIds ids,
    String tagline,
    String overview,
    DateTime released,
    int runtime,
    dynamic country,
    String trailer,
    dynamic homepage,
    String status,
    int rating,
    int votes,
    int commentCount,
    DateTime updatedAt,
    String language,
    List<String> availableTranslations,
    List<String> genres,
    String certification,
  }) =>
      TraktMovie(
        title: title ?? this.title,
        year: year ?? this.year,
        ids: ids ?? this.ids,
        tagline: tagline ?? this.tagline,
        overview: overview ?? this.overview,
        released: released ?? this.released,
        runtime: runtime ?? this.runtime,
        country: country ?? this.country,
        trailer: trailer ?? this.trailer,
        homepage: homepage ?? this.homepage,
        status: status ?? this.status,
        rating: rating ?? this.rating,
        votes: votes ?? this.votes,
        commentCount: commentCount ?? this.commentCount,
        updatedAt: updatedAt ?? this.updatedAt,
        language: language ?? this.language,
        availableTranslations:
            availableTranslations ?? this.availableTranslations,
        genres: genres ?? this.genres,
        certification: certification ?? this.certification,
      );

  factory TraktMovie.fromJson(Map<String, dynamic> json) => TraktMovie(
        title: json['title'],
        year: json['year'],
        ids: TraktIds.fromJson(json['ids']),
        tagline: json['tagline'],
        overview: json['overview'],
        released: DateTime.parse(json['released']),
        runtime: json['runtime'],
        country: json['country'],
        trailer: json['trailer'],
        homepage: json['homepage'],
        status: json['status'],
        rating: json['rating'],
        votes: json['votes'],
        commentCount: json['comment_count'],
        updatedAt: DateTime.parse(json['updated_at']),
        language: json['language'],
        availableTranslations:
            List<String>.from(json['available_translations'].map((x) => x)),
        genres: List<String>.from(json['genres'].map((x) => x)),
        certification: json['certification'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'year': year,
        'ids': ids.toJson(),
        'tagline': tagline,
        'overview': overview,
        'released':
            '${released.year.toString().padLeft(4, '0')}-${released.month.toString().padLeft(2, '0')}-${released.day.toString().padLeft(2, '0')}',
        'runtime': runtime,
        'country': country,
        'trailer': trailer,
        'homepage': homepage,
        'status': status,
        'rating': rating,
        'votes': votes,
        'comment_count': commentCount,
        'updated_at': updatedAt.toIso8601String(),
        'language': language,
        'available_translations':
            List<dynamic>.from(availableTranslations.map((x) => x)),
        'genres': List<dynamic>.from(genres.map((x) => x)),
        'certification': certification,
      };
}
