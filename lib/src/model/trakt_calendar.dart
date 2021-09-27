import 'package:trakt_client_flutter/src/model/trakt_episode.dart';
import 'package:trakt_client_flutter/src/model/trakt_movie.dart';
import 'package:trakt_client_flutter/src/model/trakt_show.dart';

class TraktCalendar {
  TraktCalendar({
    this.firstAired,
    this.episode,
    this.show,
    this.released,
    this.movie,
  });

  DateTime firstAired;
  TraktEpisode episode;
  TraktShow show;
  DateTime released;
  TraktMovie movie;

  TraktCalendar copyWith({
    DateTime firstAired,
    TraktEpisode episode,
    TraktShow show,
    DateTime released,
    TraktMovie movie,
  }) =>
      TraktCalendar(
        firstAired: firstAired ?? this.firstAired,
        episode: episode ?? this.episode,
        show: show ?? this.show,
        released: released ?? this.released,
        movie: movie ?? this.movie,
      );

  factory TraktCalendar.fromJson(Map<String, dynamic> json) => TraktCalendar(
        firstAired: DateTime.parse(json['first_aired']),
        episode: TraktEpisode.fromJson(json['episode']),
        show: TraktShow.fromJson(json['show']),
        released: DateTime.parse(json['released']),
        movie: TraktMovie.fromJson(json['movie']),
      );

  Map<String, dynamic> toJson() => {
        'first_aired': firstAired.toIso8601String(),
        'episode': episode.toJson(),
        'show': show.toJson(),
        'released':
            '${released.year.toString().padLeft(4, '0')}-${released.month.toString().padLeft(2, '0')}-${released.day.toString().padLeft(2, '0')}',
        'movie': movie.toJson(),
      };
}
