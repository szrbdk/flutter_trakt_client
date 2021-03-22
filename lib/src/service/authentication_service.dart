part of 'package:trakt_client/src/client/service_core.dart';

class AuthenticationService extends TraktServiceCore {
  void authorize() {
    var uri = Uri.https(
      Env().config.traktUrl.replaceFirst('https://', ''),
      '/oauth/authorize',
      {
        'response_type': 'code',
        'client_id': Env().config.traktClient,
        'redirect_uri': Env().config.redirectUri,
      },
    );
    Client().launchURL(uri.toString());
  }

  Future<TraktBase<TraktToken>> getToken(TraktTokenForm data,
      {bool clean = true}) {
    return _post_MS_MR<TraktToken>(
      path: 'oauth/token',
      queryParameters: null,
      content: data.toJson(clean: clean),
      builder: (response) => TraktToken.fromJson(response),
    );
  }

  Future<TraktBase<TraktToken>> refreshToken(TraktTokenForm data,
      {bool clean = true}) {
    return _post_MS_MR<TraktToken>(
      path: 'oauth/token',
      queryParameters: null,
      content: data.toJson(clean: clean),
      builder: (response) => TraktToken.fromJson(response),
    );
  }

  Future<TraktBase<TraktToken>> revokeToken(TraktTokenForm data,
      {bool clean = true}) {
    return _post_MS_MR<TraktToken>(
      path: 'oauth/revoke',
      queryParameters: null,
      content: data.toJson(clean: clean),
      builder: (response) => TraktToken.fromJson(response),
    );
  }
}
