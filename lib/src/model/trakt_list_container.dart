import 'package:trakt_client_flutter/src/model/trakt_list.dart';

class TraktListContainer {
  TraktListContainer({
    this.likeCount,
    this.commentCount,
    this.list,
  });

  int likeCount;
  int commentCount;
  TraktList list;

  TraktListContainer copyWith({
    int likeCount,
    int commentCount,
    TraktList list,
  }) =>
      TraktListContainer(
        likeCount: likeCount ?? this.likeCount,
        commentCount: commentCount ?? this.commentCount,
        list: list ?? this.list,
      );

  factory TraktListContainer.fromJson(Map<String, dynamic> json) =>
      TraktListContainer(
        likeCount: json['like_count'],
        commentCount: json['comment_count'],
        list: TraktList.fromJson(json['list']),
      );

  Map<String, dynamic> toJson() => {
        'like_count': likeCount,
        'comment_count': commentCount,
        'list': list.toJson(),
      };
}
