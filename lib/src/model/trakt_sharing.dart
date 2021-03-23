class TraktSharing {
  TraktSharing({
    this.facebook,
    this.twitter,
    this.tumblr,
  });

  bool facebook;
  bool twitter;
  bool tumblr;

  TraktSharing copyWith({
    bool facebook,
    bool twitter,
    bool tumblr,
  }) =>
      TraktSharing(
        facebook: facebook ?? this.facebook,
        twitter: twitter ?? this.twitter,
        tumblr: tumblr ?? this.tumblr,
      );

  factory TraktSharing.fromJson(Map<String, dynamic> json) => TraktSharing(
        facebook: json['facebook'],
        twitter: json['twitter'],
        tumblr: json['tumblr'],
      );

  Map<String, dynamic> toJson() => {
        'facebook': facebook,
        'twitter': twitter,
        'tumblr': tumblr,
      };
}
