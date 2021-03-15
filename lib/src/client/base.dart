import 'package:flutter/material.dart';

class TraktBase<T, K> {
  int page;
  int limit;
  int pageCount;
  int itemCount;
  T data;

  TraktBase._({
    this.data,
    this.itemCount,
    this.limit,
    this.page,
    this.pageCount,
  });

  factory TraktBase.fromResponse({
    @required Map<String, dynamic> header,
    @required K response,
    @required T Function(K response) builder,
  }) {
    return TraktBase._(
      data: builder(response),
      itemCount: header['X-Pagination-Item-Count'],
      limit: header['X-Pagination-Limit'],
      page: header['X-Pagination-Page'],
      pageCount: header['X-Pagination-Page-Count'],
    );
  }
}
