part of 'package:trakt_client_flutter/src/client/service_core.dart';

class CommentService extends TraktServiceCore {
  Future<TraktBase<TraktComment>> postComment(TraktComment data,
      {bool clean = true}) {
    var pathItems = ['comments'];
    return _post_MS_MR<TraktComment>(
      path: pathItems.toPath(),
      content: data.toJson(clean: clean),
      builder: (response) => TraktComment.fromJson(response),
    );
  }

  Future<TraktBase<TraktComment>> getSingleCommentOrReply(int id) {
    var pathItems = ['comments', '$id'];
    return _get_MR<TraktComment>(
      path: pathItems.toPath(),
      builder: (response) => TraktComment.fromJson(response),
    );
  }

  Future<TraktBase<TraktComment>> updateSingleCommentOrReply(
      TraktComment data, int id,
      {bool clean = true}) {
    var pathItems = ['comments', '$id'];
    return _put_MS_MR<TraktComment>(
      path: pathItems.toPath(),
      content: data.toJson(clean: clean),
      builder: (response) => TraktComment.fromJson(response),
    );
  }

  Future<TraktBase<bool>> deleteSingleCommentOrReply(int id) {
    var pathItems = ['comments', '$id'];
    return _delete<bool, bool>(
      path: pathItems.toPath(),
      builder: (response) => true,
    );
  }

  Future<TraktBase<List<TraktComment>>> getReplies(int id,
      {int page, int itemsPerPage}) {
    var pathItems = ['comments', '$id', 'replies'];
    return _get_MLR<List<TraktComment>>(
      path: pathItems.toPath(),
      queryParameters: {
        if (page != null) ...{'page': page},
        if (itemsPerPage != null) ...{'limit': itemsPerPage}
      },
      builder: (response) => List<TraktComment>.from(
          response.map((e) => TraktComment.fromJson(e))),
    );
  }

  Future<TraktBase<TraktComment>> postReply(TraktComment data, int id,
      {bool clean = true}) {
    var pathItems = ['comments', '$id', 'replies'];
    return _put_MS_MR<TraktComment>(
      path: pathItems.toPath(),
      content: data.toJson(clean: clean),
      builder: (response) => TraktComment.fromJson(response),
    );
  }

  Future<TraktBase<TraktMediaItem>> getAttachedMediaItem(int id,
      {List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['comments', '$id', 'item'];
    return _get_MR<TraktMediaItem>(
      path: pathItems.toPath(),
      queryParameters: {
        if (extendedInfo != null) ...{'extended': extendedInfo.joinWith(',')}
      },
      builder: (response) => TraktMediaItem.fromJson(response),
    );
  }

  Future<TraktBase<List<TraktLike>>> getLikes(int id,
      {int page, int itemsPerPage}) {
    var pathItems = ['comments', '$id', 'likes'];
    return _get_MLR<List<TraktLike>>(
      path: pathItems.toPath(),
      queryParameters: {
        if (page != null) ...{'page': page},
        if (itemsPerPage != null) ...{'limit': itemsPerPage}
      },
      builder: (response) =>
          List<TraktLike>.from(response.map((e) => TraktLike.fromJson(e))),
    );
  }

  Future<TraktBase<bool>> like(int id) {
    var pathItems = ['comments', '$id', 'like'];
    return _post_MS_MR<bool>(
      path: pathItems.toPath(),
      content: null,
      builder: (response) => true,
    );
  }

  Future<TraktBase<bool>> unlike(int id) {
    var pathItems = ['comments', '$id', 'like'];
    return _delete<bool, bool>(
      path: pathItems.toPath(),
      builder: (response) => true,
    );
  }

  Future<TraktBase<List<TraktMediaItem>>> _getXComments(
      List<String> pathItems,
      int page,
      int itemsPerPage,
      bool includeReplies,
      List<TraktExtendedInfo> extendedInfo) {
    return _get_MLR<List<TraktMediaItem>>(
      path: pathItems.toPath(),
      queryParameters: {
        if (includeReplies != null) ...{'include_replies': includeReplies},
        if (extendedInfo != null) ...{'extended': extendedInfo.joinWith(',')},
        if (page != null) ...{'page': page},
        if (itemsPerPage != null) ...{'limit': itemsPerPage}
      },
      builder: (response) => List<TraktMediaItem>.from(
          response.map((e) => TraktMediaItem.fromJson(e))),
    );
  }

  Future<TraktBase<List<TraktMediaItem>>> getTrendingComments(
      TraktCommentType commentType, TraktType type,
      {int page,
      int itemsPerPage,
      bool includeReplies,
      List<TraktExtendedInfo> extendedInfo}) {
    var path = ['comments', 'trending', commentType.string, type.string];
    return _getXComments(
        path, page, itemsPerPage, includeReplies, extendedInfo);
  }

  Future<TraktBase<List<TraktMediaItem>>> getRecentComments(
      TraktCommentType commentType, TraktType type,
      {int page,
      int itemsPerPage,
      bool includeReplies,
      List<TraktExtendedInfo> extendedInfo}) {
    var path = ['comments', 'recent', commentType.string, type.string];
    return _getXComments(
        path, page, itemsPerPage, includeReplies, extendedInfo);
  }

  Future<TraktBase<List<TraktMediaItem>>> getUpdatedComments(
      TraktCommentType commentType, TraktType type,
      {int page,
      int itemsPerPage,
      bool includeReplies,
      List<TraktExtendedInfo> extendedInfo}) {
    var path = ['comments', 'updates', commentType.string, type.string];
    return _getXComments(
        path, page, itemsPerPage, includeReplies, extendedInfo);
  }
}
