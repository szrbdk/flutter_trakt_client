import 'package:trakt_client/src/model/trakt_comment.dart';
import 'package:trakt_client/src/model/trakt_episode.dart';
import 'package:trakt_client/src/model/trakt_list.dart';
import 'package:trakt_client/src/model/trakt_movie.dart';
import 'package:trakt_client/src/model/trakt_season.dart';

class TraktMediaItem {
  TraktMediaItem({
    this.type,
    this.movie,
    this.comment,
    this.show,
    this.season,
    this.episode,
    this.list,
  });

  String type;
  TraktMovie movie;
  TraktComment comment;
  TraktMovie show;
  TraktSeason season;
  TraktEpisode episode;
  TraktList list;

  TraktMediaItem copyWith({
    String type,
    TraktMovie movie,
    TraktComment comment,
    TraktMovie show,
    TraktSeason season,
    TraktEpisode episode,
    TraktList list,
  }) =>
      TraktMediaItem(
        type: type ?? this.type,
        movie: movie ?? this.movie,
        comment: comment ?? this.comment,
        show: show ?? this.show,
        season: season ?? this.season,
        episode: episode ?? this.episode,
        list: list ?? this.list,
      );

  factory TraktMediaItem.fromJson(Map<String, dynamic> json) => TraktMediaItem(
        type: json['type'],
        movie:
            json['movie'] == null ? null : TraktMovie.fromJson(json['movie']),
        comment: TraktComment.fromJson(json['comment']),
        show: json['show'] == null ? null : TraktMovie.fromJson(json['show']),
        season: json['season'] == null
            ? null
            : TraktSeason.fromJson(json['season']),
        episode: json['episode'] == null
            ? null
            : TraktEpisode.fromJson(json['episode']),
        list: json['list'] == null ? null : TraktList.fromJson(json['list']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'movie': movie == null ? null : movie.toJson(),
        'comment': comment.toJson(),
        'show': show == null ? null : show.toJson(),
        'season': season == null ? null : season.toJson(),
        'episode': episode == null ? null : episode.toJson(),
        'list': list == null ? null : list.toJson(),
      };
}
