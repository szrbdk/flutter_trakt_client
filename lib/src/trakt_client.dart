import 'package:flutter/material.dart';
import 'package:trakt_client/src/client/env.dart';

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
}
