import 'package:trakt_client_flutter/src/model/trakt_ids.dart';
import 'package:trakt_client_flutter/src/model/trakt_user.dart';

class TraktList {
  TraktList({
    this.name,
    this.description,
    this.privacy,
    this.displayNumbers,
    this.allowComments,
    this.updatedAt,
    this.itemCount,
    this.commentCount,
    this.likes,
    this.ids,
    this.sortBy,
    this.sortHow,
    this.createdAt,
    this.user,
    this.likedAt,
  });

  String name;
  String description;
  String privacy;
  bool displayNumbers;
  bool allowComments;
  DateTime updatedAt;
  int itemCount;
  int commentCount;
  int likes;
  TraktIds ids;
  String sortBy;
  String sortHow;
  DateTime createdAt;
  TraktUser user;
  DateTime likedAt;

  TraktList copyWith({
    String name,
    String description,
    String privacy,
    bool displayNumbers,
    bool allowComments,
    DateTime updatedAt,
    int itemCount,
    int commentCount,
    int likes,
    TraktIds ids,
    String sortBy,
    String sortHow,
    DateTime createdAt,
    TraktUser user,
    DateTime likedAt,
  }) =>
      TraktList(
        name: name ?? this.name,
        description: description ?? this.description,
        privacy: privacy ?? this.privacy,
        displayNumbers: displayNumbers ?? this.displayNumbers,
        allowComments: allowComments ?? this.allowComments,
        updatedAt: updatedAt ?? this.updatedAt,
        itemCount: itemCount ?? this.itemCount,
        commentCount: commentCount ?? this.commentCount,
        likes: likes ?? this.likes,
        ids: ids ?? this.ids,
        sortBy: sortBy ?? this.sortBy,
        sortHow: sortHow ?? this.sortHow,
        createdAt: createdAt ?? this.createdAt,
        user: user ?? this.user,
        likedAt: likedAt ?? this.likedAt,
      );

  factory TraktList.fromJson(Map<String, dynamic> json) => TraktList(
        name: json['name'],
        description: json['description'],
        privacy: json['privacy'],
        displayNumbers: json['display_numbers'],
        allowComments: json['allow_comments'],
        updatedAt: DateTime.parse(json['updated_at']),
        itemCount: json['item_count'],
        commentCount: json['comment_count'],
        likes: json['likes'],
        ids: TraktIds.fromJson(json['ids']),
        sortBy: json['sort_by'],
        sortHow: json['sort_how'],
        createdAt: DateTime.parse(json['created_at']),
        user: TraktUser.fromJson(json['user']),
        likedAt: DateTime.parse(json['liked_at']),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'privacy': privacy,
        'display_numbers': displayNumbers,
        'allow_comments': allowComments,
        'updated_at': updatedAt.toIso8601String(),
        'item_count': itemCount,
        'comment_count': commentCount,
        'likes': likes,
        'ids': ids.toJson(),
        'sort_by': sortBy,
        'sort_how': sortHow,
        'created_at': createdAt.toIso8601String(),
        'user': user.toJson(),
        'liked_at': likedAt.toIso8601String(),
      };
}
