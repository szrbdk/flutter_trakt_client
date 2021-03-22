import 'package:trakt_client/src/model/trakt_ids.dart';

class TraktEpisode {
  TraktEpisode({
    this.season,
    this.number,
    this.title,
    this.ids,
    this.numberAbs,
    this.overview,
    this.rating,
    this.votes,
    this.commentCount,
    this.firstAired,
    this.updatedAt,
    this.availableTranslations,
    this.runtime,
  });

  int season;
  int number;
  String title;
  TraktIds ids;
  dynamic numberAbs;
  String overview;
  int rating;
  int votes;
  int commentCount;
  DateTime firstAired;
  DateTime updatedAt;
  List<String> availableTranslations;
  int runtime;

  TraktEpisode copyWith({
    int season,
    int number,
    String title,
    TraktIds ids,
    dynamic numberAbs,
    String overview,
    int rating,
    int votes,
    int commentCount,
    DateTime firstAired,
    DateTime updatedAt,
    List<String> availableTranslations,
    int runtime,
  }) =>
      TraktEpisode(
        season: season ?? this.season,
        number: number ?? this.number,
        title: title ?? this.title,
        ids: ids ?? this.ids,
        numberAbs: numberAbs ?? this.numberAbs,
        overview: overview ?? this.overview,
        rating: rating ?? this.rating,
        votes: votes ?? this.votes,
        commentCount: commentCount ?? this.commentCount,
        firstAired: firstAired ?? this.firstAired,
        updatedAt: updatedAt ?? this.updatedAt,
        availableTranslations:
            availableTranslations ?? this.availableTranslations,
        runtime: runtime ?? this.runtime,
      );

  factory TraktEpisode.fromJson(Map<String, dynamic> json) => TraktEpisode(
        season: json['season'],
        number: json['number'],
        title: json['title'],
        ids: TraktIds.fromJson(json['ids']),
        numberAbs: json['number_abs'],
        overview: json['overview'],
        rating: json['rating'],
        votes: json['votes'],
        commentCount: json['comment_count'],
        firstAired: DateTime.parse(json['first_aired']),
        updatedAt: DateTime.parse(json['updated_at']),
        availableTranslations:
            List<String>.from(json['available_translations'].map((x) => x)),
        runtime: json['runtime'],
      );

  Map<String, dynamic> toJson() => {
        'season': season,
        'number': number,
        'title': title,
        'ids': ids.toJson(),
        'number_abs': numberAbs,
        'overview': overview,
        'rating': rating,
        'votes': votes,
        'comment_count': commentCount,
        'first_aired': firstAired.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
        'available_translations':
            List<dynamic>.from(availableTranslations.map((x) => x)),
        'runtime': runtime,
      };
}
