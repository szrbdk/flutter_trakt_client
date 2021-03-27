class TraktUserStats {
  TraktUserStats({
    this.rating,
    this.playCount,
    this.completedCount,
  });

  int rating;
  int playCount;
  int completedCount;

  TraktUserStats copyWith({
    int rating,
    int playCount,
    int completedCount,
  }) =>
      TraktUserStats(
        rating: rating ?? this.rating,
        playCount: playCount ?? this.playCount,
        completedCount: completedCount ?? this.completedCount,
      );

  factory TraktUserStats.fromJson(Map<String, dynamic> json) => TraktUserStats(
        rating: json['rating'],
        playCount: json['play_count'],
        completedCount: json['completed_count'],
      );

  Map<String, dynamic> toJson() => {
        'rating': rating,
        'play_count': playCount,
        'completed_count': completedCount,
      };
}
