import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:trakt_client/src/extension/list_extension.dart';

import 'package:trakt_client/src/client/base.dart';
import 'package:trakt_client/src/client/client.dart';
import 'package:trakt_client/src/client/env.dart';

import 'package:trakt_client/src/enum/extended_info_enum.dart';
import 'package:trakt_client/src/enum/simple_type.dart';
import 'package:trakt_client/src/enum/comment_enum.dart';
import 'package:trakt_client/src/enum/type.dart';

import 'package:trakt_client/src/model/trakt_certification.dart';
import 'package:trakt_client/src/model/trakt_checkin.dart';
import 'package:trakt_client/src/model/trakt_comment.dart';
import 'package:trakt_client/src/model/trakt_country.dart';
import 'package:trakt_client/src/model/trakt_genre.dart';
import 'package:trakt_client/src/model/trakt_language.dart';
import 'package:trakt_client/src/model/trakt_like.dart';
import 'package:trakt_client/src/model/trakt_media_item.dart';
import 'package:trakt_client/src/model/trakt_token.dart';
import 'package:trakt_client/src/model/trakt_token_form.dart';
import 'package:trakt_client/src/model/trakt_calendar.dart';

part 'package:trakt_client/src/service/authentication_service.dart';
part 'package:trakt_client/src/service/calendar_service.dart';
part 'package:trakt_client/src/service/certification_service.dart';
part 'package:trakt_client/src/service/checkin_service.dart';
part 'package:trakt_client/src/service/comment_service.dart';
part 'package:trakt_client/src/service/country_service.dart';
part 'package:trakt_client/src/service/genre_service.dart';
part 'package:trakt_client/src/service/language_service.dart';

/// `MSMR` -> Map Sends, Map Returns
///
/// `MSMLR` ->  Map Sends, Map List Returns
///
/// `MLS_MR` ->  Map List Sends, Map Returns
///
/// `MLS_MLR` ->  Map List Sends, Map List Returns
///
abstract class TraktServiceCore {
  Future<TraktBase<T>> _post_MS_MR<T>({
    @required String path,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> extraHeaders,
    @required Map<String, dynamic> content,
    @required T Function(Map<String, dynamic> response) builder,
  }) {
    return Client().post<T, Map<String, dynamic>>(
      path: path,
      parameters: queryParameters,
      extraHeaders: extraHeaders,
      content: content,
      builder: builder,
    );
  }

  Future<TraktBase<T>> _get_MR<T>({
    @required String path,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> extraHeaders,
    @required T Function(Map<String, dynamic> response) builder,
  }) {
    return Client().get<T, Map<String, dynamic>>(
      path: path,
      parameters: queryParameters,
      extraHeaders: extraHeaders,
      builder: builder,
    );
  }

  Future<TraktBase<T>> _get_MLR<T>({
    @required String path,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> extraHeaders,
    @required T Function(List<Map<String, dynamic>> response) builder,
  }) {
    return Client().get<T, List<Map<String, dynamic>>>(
      path: path,
      parameters: queryParameters,
      extraHeaders: extraHeaders,
      builder: builder,
    );
  }

  Future<TraktBase<T>> _delete<T, K>({
    @required String path,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> extraHeaders,
    @required T Function(K response) builder,
  }) {
    return Client().delete<T, K>(
      path: path,
      parameters: queryParameters,
      extraHeaders: extraHeaders,
      builder: builder,
    );
  }

  Future<TraktBase<T>> _put_MS_MR<T>({
    @required String path,
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> extraHeaders,
    @required Map<String, dynamic> content,
    @required T Function(Map<String, dynamic> response) builder,
  }) {
    return Client().post<T, Map<String, dynamic>>(
      path: path,
      parameters: queryParameters,
      extraHeaders: extraHeaders,
      content: content,
      builder: builder,
    );
  }
}
