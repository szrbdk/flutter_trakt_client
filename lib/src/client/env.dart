import 'package:flutter/foundation.dart';
import 'package:trakt_client/src/client/config.dart';
import 'package:trakt_client/src/model/trakt_token.dart';

class Env {
  Env._();
  factory Env() => _instance;
  static final Env _instance = Env._();

  bool _alwaysUseProdConfig;
  TraktToken _token;
  TraktConfig _dev;
  TraktConfig _prod;

  TraktConfig get config =>
      _alwaysUseProdConfig ? _prod : (kDebugMode ? _dev : _prod);

  void setToken(TraktToken token) {
    _token = token;
  }

  TraktToken get token => _token;

  void initTrackConfig({
    String stagingRedirectUrl,
    String redirectUrl,
    String stagingTraktClient,
    String traktClient,
    String stagingTraktSecret,
    String traktSecret,
    bool useProdConfig = false,
  }) {
    _alwaysUseProdConfig =
        (stagingTraktClient == null || stagingTraktSecret == null)
            ? true
            : useProdConfig;

    _dev = TraktConfig(
      traktApiUrl: 'https://api-staging.trakt.tv',
      traktUrl: 'https://staging.trakt.tv',
      redirectUri:
          stagingRedirectUrl ?? redirectUrl ?? 'urn:ietf:wg:oauth:2.0:oob',
      traktClient: stagingTraktClient,
      traktSecret: stagingTraktSecret,
      traktApiVersion: 2,
    );

    _prod = TraktConfig(
      traktApiUrl: 'https://api.trakt.tv',
      traktUrl: 'https://trakt.tv',
      redirectUri: redirectUrl ?? 'urn:ietf:wg:oauth:2.0:oob',
      traktClient: traktClient,
      traktSecret: traktSecret,
      traktApiVersion: 2,
    );
  }
}
