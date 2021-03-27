import 'package:trakt_client/src/model/trakt_ids.dart';

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
      };
}
