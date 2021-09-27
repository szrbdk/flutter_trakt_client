import 'package:trakt_client_flutter/src/model/trakt_user.dart';

class TraktLike {
  TraktLike({
    this.likedAt,
    this.user,
  });

  DateTime likedAt;
  TraktUser user;

  TraktLike copyWith({
    DateTime likedAt,
    TraktUser user,
  }) =>
      TraktLike(
        likedAt: likedAt ?? this.likedAt,
        user: user ?? this.user,
      );

  factory TraktLike.fromJson(Map<String, dynamic> json) => TraktLike(
        likedAt: DateTime.parse(json['liked_at']),
        user: TraktUser.fromJson(json['user']),
      );

  Map<String, dynamic> toJson() => {
        'liked_at': likedAt.toIso8601String(),
        'user': user.toJson(),
      };
}
