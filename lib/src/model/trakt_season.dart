import 'package:trakt_client/src/model/trakt_ids.dart';

class TraktSeason {
  TraktSeason({
    this.number,
    this.ids,
  });

  int number;
  TraktIds ids;

  TraktSeason copyWith({
    int number,
    TraktIds ids,
  }) =>
      TraktSeason(
        number: number ?? this.number,
        ids: ids ?? this.ids,
      );

  factory TraktSeason.fromJson(Map<String, dynamic> json) => TraktSeason(
        number: json['number'],
        ids: TraktIds.fromJson(json['ids']),
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'ids': ids.toJson(),
      };
}
