import 'package:trakt_client_flutter/src/model/trakt_sub_certification.dart';

class TraktCertification {
  TraktCertification({
    this.us,
  });

  List<TraktSubCertification> us;

  TraktCertification copyWith({
    List<TraktSubCertification> us,
  }) =>
      TraktCertification(
        us: us ?? this.us,
      );

  factory TraktCertification.fromJson(Map<String, dynamic> json) =>
      TraktCertification(
        us: List<TraktSubCertification>.from(
            json['us'].map((x) => TraktSubCertification.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'us': List<dynamic>.from(us.map((x) => x.toJson())),
      };
}
