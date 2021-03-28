import 'package:trakt_client/src/helpers/enum_helper.dart';
import 'package:trakt_client/src/enum/grant_type.dart';
import 'package:trakt_client/src/helpers/trakt_helper.dart';

class TraktTokenForm {
  TraktTokenForm({
    this.code,
    this.clientId,
    this.clientSecret,
    this.redirectUri,
    this.grantType,
    this.refreshToken,
    this.token,
  });

  String code;
  String clientId;
  String clientSecret;
  String redirectUri;
  TraktGrantType grantType;
  String refreshToken;
  String token;

  TraktTokenForm copyWith({
    String code,
    String clientId,
    String clientSecret,
    String redirectUri,
    String grantType,
    String refreshToken,
    String token,
  }) =>
      TraktTokenForm(
        code: code ?? this.code,
        clientId: clientId ?? this.clientId,
        clientSecret: clientSecret ?? this.clientSecret,
        redirectUri: redirectUri ?? this.redirectUri,
        grantType: grantType ?? this.grantType,
        refreshToken: refreshToken ?? this.refreshToken,
        token: token ?? this.token,
      );

  factory TraktTokenForm.fromJson(Map<String, dynamic> json) => TraktTokenForm(
        code: json['code'],
        clientId: json['client_id'],
        clientSecret: json['client_secret'],
        redirectUri: json['redirect_uri'],
        grantType: EnumHelper().traktGrantTypeFromString(json['grant_type']),
        refreshToken: json['refresh_token'],
        token: json['token'],
      );

  Map<String, dynamic> toJson({bool clean = false}) =>
      TraktHelper().cleanMap(clean: clean, map: {
        'code': code,
        'client_id': clientId,
        'client_secret': clientSecret,
        'redirect_uri': redirectUri,
        'grant_type': grantType?.string,
        'refresh_token': refreshToken,
        'token': token,
      });
}
