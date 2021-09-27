import 'package:flutter/material.dart';
import 'package:trakt_client_flutter/src/client/config.dart';
import 'package:trakt_client_flutter/src/client/env.dart';
import 'package:trakt_client_flutter/src/model/trakt_token.dart';

class TraktClient {
  static void initialize({
    @required String traktClient,
    @required String traktSecret,
    @required bool alwaysUseTrakt,
    String stagingTraktClient,
    String stagingTraktSecret,
    String redirectUrl,
    String stagingRedirectUrl,
  }) {
    Env().initTrackConfig(
      redirectUrl: redirectUrl,
      stagingRedirectUrl: stagingRedirectUrl,
      stagingTraktClient: stagingTraktClient,
      stagingTraktSecret: stagingTraktSecret,
      traktClient: traktClient,
      traktSecret: traktSecret,
      useProdConfig: alwaysUseTrakt,
    );
  }

  static void setToken(TraktToken token) {
    Env().setToken(token);
  }

  static TraktToken getToken() {
    return Env().token;
  }

  static TraktConfig getActiveConfig() {
    return Env().config;
  }
}
