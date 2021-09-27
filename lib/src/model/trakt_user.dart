import 'package:trakt_client_flutter/src/model/trakt_ids.dart';

class TraktUser {
  TraktUser({
    this.username,
    this.private,
    this.name,
    this.vip,
    this.vipEp,
    this.ids,
  });

  String username;
  bool private;
  String name;
  bool vip;
  bool vipEp;
  TraktIds ids;

  TraktUser copyWith({
    String username,
    bool private,
    String name,
    bool vip,
    bool vipEp,
    TraktIds ids,
  }) =>
      TraktUser(
        username: username ?? this.username,
        private: private ?? this.private,
        name: name ?? this.name,
        vip: vip ?? this.vip,
        vipEp: vipEp ?? this.vipEp,
        ids: ids ?? this.ids,
      );

  factory TraktUser.fromJson(Map<String, dynamic> json) => TraktUser(
        username: json['username'],
        private: json['private'],
        name: json['name'],
        vip: json['vip'],
        vipEp: json['vip_ep'],
        ids: TraktIds.fromJson(json['ids']),
      );

  Map<String, dynamic> toJson() => {
        'username': username,
        'private': private,
        'name': name,
        'vip': vip,
        'vip_ep': vipEp,
        'ids': ids.toJson(),
      };
}
