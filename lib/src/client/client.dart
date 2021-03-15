import 'dart:async';
import 'package:dio/dio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:trakt_client/src/client/base.dart';
import 'package:trakt_client/src/client/env.dart';

class Client {
  Client._();
  factory Client() => _instance;
  static final Client _instance = Client._();

  String _getUrl(String path) => '${Env().config.traktApiUrl}/$path';

  BaseOptions get _dioOptions {
    var options = BaseOptions(
      contentType: 'application/json',
      headers: {
        'content-type': 'application/json',
        'trakt-api-key': Env().config.traktClient,
        'trakt-api-version': Env().config.traktApiVersion,
      },
    );
    return options;
  }

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  Future<TraktBase<T, K>> post<T, K>({
    String path,
    Map<String, dynamic> parameters,
    Map<String, dynamic> content,
    T Function(K data) builder,
  }) {
    var completer = Completer<TraktBase<T, K>>();
    var dio = Dio(_dioOptions);
    var url = _getUrl(path);

    dio.post(url, queryParameters: parameters, data: content).then((response) {
      completer.complete(
        TraktBase.fromResponse(
          header: response.headers.map,
          response: response.data as K,
          builder: builder,
        ),
      );
    }).catchError((error) {
      completer.completeError(error);
    });

    return completer.future;
  }
}
