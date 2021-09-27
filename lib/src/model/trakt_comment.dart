import 'package:trakt_client_flutter/src/helpers/trakt_helper.dart';
import 'package:trakt_client_flutter/src/model/trakt_list.dart';
import 'package:trakt_client_flutter/src/model/trakt_movie.dart';
import 'package:trakt_client_flutter/src/model/trakt_season.dart';
import 'package:trakt_client_flutter/src/model/trakt_user.dart';
import 'package:trakt_client_flutter/src/model/trakt_user_stats.dart';
import 'package:trakt_client_flutter/trakt_client_flutter.dart';

class TraktComment {
  TraktComment({
    this.movie,
    this.comment,
    this.spoiler,
    this.sharing,
    this.id,
    this.parentId,
    this.createdAt,
    this.updatedAt,
    this.review,
    this.replies,
    this.likes,
    this.userStats,
    this.user,
    this.season,
    this.episode,
    this.list,
    this.show,
  });

  TraktMovie movie;
  String comment;
  bool spoiler;
  TraktSharing sharing;
  int id;
  int parentId;
  DateTime createdAt;
  DateTime updatedAt;
  bool review;
  int replies;
  int likes;
  TraktUserStats userStats;
  TraktUser user;
  TraktSeason season;
  TraktEpisode episode;
  TraktList list;
  TraktShow show;

  TraktComment copyWith({
    TraktMovie movie,
    String comment,
    bool spoiler,
    TraktSharing sharing,
    int id,
    int parentId,
    DateTime createdAt,
    DateTime updatedAt,
    bool review,
    int replies,
    int likes,
    TraktUserStats userStats,
    TraktUser user,
    TraktSeason season,
    TraktEpisode episode,
    TraktList list,
    TraktShow show,
  }) =>
      TraktComment(
        movie: movie ?? this.movie,
        comment: comment ?? this.comment,
        spoiler: spoiler ?? this.spoiler,
        sharing: sharing ?? this.sharing,
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        review: review ?? this.review,
        replies: replies ?? this.replies,
        likes: likes ?? this.likes,
        userStats: userStats ?? this.userStats,
        user: user ?? this.user,
        season: season ?? this.season,
        episode: episode ?? this.episode,
        list: list ?? this.list,
        show: show ?? this.show,
      );

  factory TraktComment.fromJson(Map<String, dynamic> json) => TraktComment(
        movie: TraktMovie.fromJson(json['movie']),
        comment: json['comment'],
        spoiler: json['spoiler'],
        sharing: TraktSharing.fromJson(json['sharing']),
        id: json['id'],
        parentId: json['parent_id'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        review: json['review'],
        replies: json['replies'],
        likes: json['likes'],
        userStats: TraktUserStats.fromJson(json['user_stats']),
        user: TraktUser.fromJson(json['user']),
        season: TraktSeason.fromJson(json['season']),
        episode: TraktEpisode.fromJson(json['episode']),
        list: TraktList.fromJson(json['list']),
        show: TraktShow.fromJson(json['show']),
      );

  Map<String, dynamic> toJson({bool clean = false}) =>
      TraktHelper().cleanMap(clean: clean, map: {
        'movie': movie.toJson(),
        'comment': comment,
        'spoiler': spoiler,
        'sharing': sharing.toJson(),
        'id': id,
        'parent_id': parentId,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
        'review': review,
        'replies': replies,
        'likes': likes,
        'user_stats': userStats.toJson(),
        'user': user.toJson(),
        'season': season.toJson(),
        'episode': episode.toJson(),
        'list': list.toJson(),
        'show': show.toJson(),
      });
}
