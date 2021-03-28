part of 'package:trakt_client/src/client/service_core.dart';

class AuthenticationService extends TraktServiceCore {
  void authorize() {
    var url = Env().config.traktUrl.replaceFirst('https://', '');
    var path = '/oauth/authorize';
    var queryParameters = {
      'response_type': 'code',
      'client_id': Env().config.traktClient,
      'redirect_uri': Env().config.redirectUri,
    };
    var uri = Uri.https(url, path, queryParameters);
    Client().launchURL(uri.toString());
  }

  Future<TraktBase<TraktToken>> getToken(TraktTokenForm data,
      {bool clean = true}) {
    var _pathValues = ['oauth', 'token'];
    return _post_MS_MR<TraktToken>(
      path: _pathValues.toPath(),
      content: data.toJson(clean: clean),
      builder: (response) => TraktToken.fromJson(response),
    );
  }

  Future<TraktBase<TraktToken>> refreshToken(TraktTokenForm data,
      {bool clean = true}) {
    var _pathValues = ['oauth', 'token'];
    return _post_MS_MR<TraktToken>(
      path: _pathValues.toPath(),
      content: data.toJson(clean: clean),
      builder: (response) => TraktToken.fromJson(response),
    );
  }

  Future<TraktBase<TraktToken>> revokeToken(TraktTokenForm data,
      {bool clean = true}) {
    var _pathValues = ['oauth', 'revoke'];
    return _post_MS_MR<TraktToken>(
      path: _pathValues.toPath(),
      content: data.toJson(clean: clean),
      builder: (response) => TraktToken.fromJson(response),
    );
  }
}
