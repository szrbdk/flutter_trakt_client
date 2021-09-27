import 'package:trakt_client_flutter/src/model/trakt_airs.dart';
import 'package:trakt_client_flutter/src/model/trakt_ids.dart';

class TraktShow {
  TraktShow({
    this.title,
    this.year,
    this.ids,
    this.overview,
    this.firstAired,
    this.airs,
    this.runtime,
    this.certification,
    this.network,
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
    this.airedEpisodes,
  });

  String title;
  int year;
  TraktIds ids;
  String overview;
  DateTime firstAired;
  TraktAirs airs;
  int runtime;
  String certification;
  String network;
  String country;
  String trailer;
  String homepage;
  String status;
  double rating;
  int votes;
  int commentCount;
  DateTime updatedAt;
  String language;
  List<String> availableTranslations;
  List<String> genres;
  int airedEpisodes;

  TraktShow copyWith({
    String title,
    int year,
    TraktIds ids,
    String overview,
    DateTime firstAired,
    TraktAirs airs,
    int runtime,
    String certification,
    String network,
    String country,
    String trailer,
    String homepage,
    String status,
    double rating,
    int votes,
    int commentCount,
    DateTime updatedAt,
    String language,
    List<String> availableTranslations,
    List<String> genres,
    int airedEpisodes,
  }) =>
      TraktShow(
        title: title ?? this.title,
        year: year ?? this.year,
        ids: ids ?? this.ids,
        overview: overview ?? this.overview,
        firstAired: firstAired ?? this.firstAired,
        airs: airs ?? this.airs,
        runtime: runtime ?? this.runtime,
        certification: certification ?? this.certification,
        network: network ?? this.network,
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
        airedEpisodes: airedEpisodes ?? this.airedEpisodes,
      );

  factory TraktShow.fromJson(Map<String, dynamic> json) => TraktShow(
        title: json['title'],
        year: json['year'],
        ids: TraktIds.fromJson(json['ids']),
        overview: json['overview'],
        firstAired: DateTime.parse(json['first_aired']),
        airs: TraktAirs.fromJson(json['airs']),
        runtime: json['runtime'],
        certification: json['certification'],
        network: json['network'],
        country: json['country'],
        trailer: json['trailer'],
        homepage: json['homepage'],
        status: json['status'],
        rating: json['rating'].toDouble(),
        votes: json['votes'],
        commentCount: json['comment_count'],
        updatedAt: DateTime.parse(json['updated_at']),
        language: json['language'],
        availableTranslations:
            List<String>.from(json['available_translations'].map((x) => x)),
        genres: List<String>.from(json['genres'].map((x) => x)),
        airedEpisodes: json['aired_episodes'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'year': year,
        'ids': ids.toJson(),
        'overview': overview,
        'first_aired': firstAired.toIso8601String(),
        'airs': airs.toJson(),
        'runtime': runtime,
        'certification': certification,
        'network': network,
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
        'aired_episodes': airedEpisodes,
      };
}
