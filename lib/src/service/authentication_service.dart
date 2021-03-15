import 'package:trakt_client/src/client/client.dart';
import 'package:trakt_client/src/client/env.dart';

class AuthenticationService {
  // AuthenticationService();
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
}
