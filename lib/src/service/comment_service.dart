part of 'package:trakt_client/src/client/service_core.dart';

class CommentService extends TraktServiceCore {
  Future<TraktBase<TraktComment>> postComment(TraktComment data,
      {bool clean = true}) {
    return _post_MS_MR<TraktComment>(
      path: 'comments',
      queryParameters: null,
      content: data.toJson(clean: clean),
      builder: (response) => TraktComment.fromJson(response),
    );
  }

  Future<TraktBase<TraktComment>> getSingleCommentOrReply(int id) {
    return _get_MR<TraktComment>(
      path: 'comments/$id',
      queryParameters: null,
      builder: (response) => TraktComment.fromJson(response),
    );
  }

  Future<TraktBase<TraktComment>> updateSingleCommentOrReply(
      TraktComment data, int id,
      {bool clean = true}) {
    return _put_MS_MR<TraktComment>(
      path: 'comments/$id',
      queryParameters: null,
      content: data.toJson(clean: clean),
      builder: (response) => TraktComment.fromJson(response),
    );
  }

  Future<TraktBase<bool>> deleteSingleCommentOrReply(int id) {
    return _delete<bool, bool>(
      path: 'comments/$id',
      queryParameters: null,
      builder: (response) => true,
    );
  }

  Future<TraktBase<List<TraktComment>>> getReplies(int id) {
    return _get_MLR<List<TraktComment>>(
      path: 'comments/$id/replies',
      queryParameters: null,
      builder: (response) => List<TraktComment>.from(
          response.map((e) => TraktComment.fromJson(e))),
    );
  }

  Future<TraktBase<TraktComment>> postReply(TraktComment data, int id,
      {bool clean = true}) {
    return _put_MS_MR<TraktComment>(
      path: 'comments/$id/replies',
      queryParameters: null,
      content: data.toJson(clean: clean),
      builder: (response) => TraktComment.fromJson(response),
    );
  }

  Future<TraktBase<TraktMediaItem>> getAttachedMediaItem(int id) {
    return _get_MR<TraktMediaItem>(
      path: 'comments/$id/item',
      queryParameters: null,
      builder: (response) => TraktMediaItem.fromJson(response),
    );
  }

  Future<TraktBase<List<TraktLike>>> getLikes(int id) {
    return _get_MLR<List<TraktLike>>(
      path: 'comments/$id/likes',
      queryParameters: null,
      builder: (response) =>
          List<TraktLike>.from(response.map((e) => TraktLike.fromJson(e))),
    );
  }

  Future<TraktBase<bool>> like(int id) {
    return _post_MS_MR<bool>(
      path: 'comments/$id/like',
      queryParameters: null,
      content: null,
      builder: (response) => true,
    );
  }

  Future<TraktBase<bool>> unlike(int id) {
    return _delete<bool, bool>(
      path: 'comments/$id/like',
      queryParameters: null,
      builder: (response) => true,
    );
  }

  Future<TraktBase<List<TraktMediaItem>>> getTrendingComments(
      TraktCommentType commentType, TraktType type,
      {bool includeReplies}) {
    var _commentType = EnumHelper().enumToString(commentType.toString());
    var _type = EnumHelper().enumToString(type.toString());
    return _get_MLR<List<TraktMediaItem>>(
      path: 'comments/trending/$_commentType/$_type',
      queryParameters: {
        if (includeReplies != null) ...{'include_replies': includeReplies}
      },
      builder: (response) => List<TraktMediaItem>.from(
          response.map((e) => TraktMediaItem.fromJson(e))),
    );
  }

  Future<TraktBase<List<TraktMediaItem>>> getRecentComments(
      TraktCommentType commentType, TraktType type,
      {bool includeReplies}) {
    var _commentType = EnumHelper().enumToString(commentType.toString());
    var _type = EnumHelper().enumToString(type.toString());
    return _get_MLR<List<TraktMediaItem>>(
      path: 'comments/recent/$_commentType/$_type',
      queryParameters: {
        if (includeReplies != null) ...{'include_replies': includeReplies}
      },
      builder: (response) => List<TraktMediaItem>.from(
          response.map((e) => TraktMediaItem.fromJson(e))),
    );
  }

  Future<TraktBase<List<TraktMediaItem>>> getUpdatedComments(
      TraktCommentType commentType, TraktType type,
      {bool includeReplies}) {
    var _commentType = EnumHelper().enumToString(commentType.toString());
    var _type = EnumHelper().enumToString(type.toString());
    return _get_MLR<List<TraktMediaItem>>(
      path: 'comments/updates/$_commentType/$_type',
      queryParameters: {
        if (includeReplies != null) ...{'include_replies': includeReplies}
      },
      builder: (response) => List<TraktMediaItem>.from(
          response.map((e) => TraktMediaItem.fromJson(e))),
    );
  }
}
