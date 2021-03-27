class TraktSharing {
  TraktSharing({
    this.facebook,
    this.twitter,
    this.tumblr,
    this.medium,
  });

  bool facebook;
  bool twitter;
  bool tumblr;
  bool medium;

  TraktSharing copyWith({
    bool facebook,
    bool twitter,
    bool tumblr,
    bool medium,
  }) =>
      TraktSharing(
        facebook: facebook ?? this.facebook,
        twitter: twitter ?? this.twitter,
        tumblr: tumblr ?? this.tumblr,
        medium: medium ?? this.medium,
      );

  factory TraktSharing.fromJson(Map<String, dynamic> json) => TraktSharing(
        facebook: json['facebook'],
        twitter: json['twitter'],
        tumblr: json['tumblr'],
        medium: json['medium'],
      );

  Map<String, dynamic> toJson() => {
        'facebook': facebook,
        'twitter': twitter,
        'tumblr': tumblr,
        'medium': medium,
      };
}
