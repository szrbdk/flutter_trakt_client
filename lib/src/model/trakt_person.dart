import 'package:trakt_client_flutter/src/model/trakt_ids.dart';

class TraktPerson {
  TraktPerson({
    this.name,
    this.ids,
  });

  String name;
  TraktIds ids;

  TraktPerson copyWith({
    String name,
    TraktIds ids,
  }) =>
      TraktPerson(
        name: name ?? this.name,
        ids: ids ?? this.ids,
      );

  factory TraktPerson.fromJson(Map<String, dynamic> json) => TraktPerson(
        name: json['name'],
        ids: TraktIds.fromJson(json['ids']),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'ids': ids.toJson(),
      };
}
