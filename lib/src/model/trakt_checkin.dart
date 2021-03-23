import 'package:trakt_client/src/helpers/trakt_helper.dart';
import 'package:trakt_client/src/model/trakt_episode.dart';
import 'package:trakt_client/src/model/trakt_movie.dart';
import 'package:trakt_client/src/model/trakt_sharing.dart';
import 'package:trakt_client/src/model/trakt_show.dart';

class TraktCheckin {
  TraktCheckin({
    this.movie,
    this.sharing,
    this.message,
    this.appVersion,
    this.appDate,
    this.id,
    this.watchedAt,
    this.episode,
    this.show,
  });

  TraktMovie movie;
  TraktSharing sharing;
  String message;
  String appVersion;
  DateTime appDate;
  int id;
  DateTime watchedAt;
  TraktEpisode episode;
  TraktShow show;

  TraktCheckin copyWith({
    TraktMovie movie,
    TraktSharing sharing,
    String message,
    String appVersion,
    DateTime appDate,
    int id,
    DateTime watchedAt,
    TraktEpisode episode,
    TraktShow show,
  }) =>
      TraktCheckin(
        movie: movie ?? this.movie,
        sharing: sharing ?? this.sharing,
        message: message ?? this.message,
        appVersion: appVersion ?? this.appVersion,
        appDate: appDate ?? this.appDate,
        id: id ?? this.id,
        watchedAt: watchedAt ?? this.watchedAt,
        episode: episode ?? this.episode,
        show: show ?? this.show,
      );

  factory TraktCheckin.fromJson(Map<String, dynamic> json) => TraktCheckin(
        movie: TraktMovie.fromJson(json['movie']),
        sharing: TraktSharing.fromJson(json['sharing']),
        message: json['message'],
        appVersion: json['app_version'],
        appDate: DateTime.parse(json['app_date']),
        id: json['id'],
        watchedAt: DateTime.parse(json['watched_at']),
        episode: TraktEpisode.fromJson(json['episode']),
        show: TraktShow.fromJson(json['show']),
      );

  Map<String, dynamic> toJson({bool clean = false}) =>
      TraktHelper().cleanMap(clean: clean, map: {
        'movie': movie.toJson(),
        'sharing': sharing.toJson(),
        'message': message,
        'app_version': appVersion,
        'app_date':
            '${appDate.year.toString().padLeft(4, '0')}-${appDate.month.toString().padLeft(2, '0')}-${appDate.day.toString().padLeft(2, '0')}',
        'id': id,
        'watched_at': watchedAt.toIso8601String(),
        'episode': episode.toJson(),
        'show': show.toJson(),
      });
}
