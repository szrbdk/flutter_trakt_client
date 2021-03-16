import 'package:trakt_client/src/helpers/trakt_helper.dart';

class TraktToken {
  TraktToken({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.refreshToken,
    this.scope,
    this.createdAt,
  });

  String accessToken;
  String tokenType;
  int expiresIn;
  String refreshToken;
  String scope;
  int createdAt;

  TraktToken copyWith({
    String accessToken,
    String tokenType,
    int expiresIn,
    String refreshToken,
    String scope,
    int createdAt,
  }) =>
      TraktToken(
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        refreshToken: refreshToken ?? this.refreshToken,
        scope: scope ?? this.scope,
        createdAt: createdAt ?? this.createdAt,
      );

  factory TraktToken.fromJson(Map<String, dynamic> json) => TraktToken(
        accessToken: json['access_token'],
        tokenType: json['token_type'],
        expiresIn: json['expires_in'],
        refreshToken: json['refresh_token'],
        scope: json['scope'],
        createdAt: json['created_at'],
      );

  Map<String, dynamic> toJson({bool clean = false}) =>
      TraktHelper().cleanMap(clean: clean, map: {
        'access_token': accessToken,
        'token_type': tokenType,
        'expires_in': expiresIn,
        'refresh_token': refreshToken,
        'scope': scope,
        'created_at': createdAt,
      });
}
