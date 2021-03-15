import 'package:flutter/material.dart';

class TraktConfig {
  TraktConfig({
    @required this.traktApiUrl,
    @required this.traktUrl,
    @required this.redirectUri,
    @required this.traktClient,
    @required this.traktSecret,
    @required this.traktApiVersion,
  });

  final String traktApiUrl;
  final String traktUrl;
  final String traktClient;
  final String traktSecret;
  final String redirectUri;
  final int traktApiVersion;
}
