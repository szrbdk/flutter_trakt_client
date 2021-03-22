class TraktAirs {
  TraktAirs({
    this.day,
    this.time,
    this.timezone,
  });

  String day;
  String time;
  String timezone;

  TraktAirs copyWith({
    String day,
    String time,
    String timezone,
  }) =>
      TraktAirs(
        day: day ?? this.day,
        time: time ?? this.time,
        timezone: timezone ?? this.timezone,
      );

  factory TraktAirs.fromJson(Map<String, dynamic> json) => TraktAirs(
        day: json['day'],
        time: json['time'],
        timezone: json['timezone'],
      );

  Map<String, dynamic> toJson() => {
        'day': day,
        'time': time,
        'timezone': timezone,
      };
}
