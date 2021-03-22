class TraktIds {
  TraktIds({
    this.trakt,
    this.tvdb,
    this.imdb,
    this.tmdb,
    this.slug,
    this.tvrage,
  });

  int trakt;
  int tvdb;
  String imdb;
  int tmdb;
  String slug;
  int tvrage;

  TraktIds copyWith({
    int trakt,
    int tvdb,
    String imdb,
    int tmdb,
    int tvrage,
    String slug,
  }) =>
      TraktIds(
        trakt: trakt ?? this.trakt,
        tvdb: tvdb ?? this.tvdb,
        imdb: imdb ?? this.imdb,
        tmdb: tmdb ?? this.tmdb,
        tvrage: tvrage ?? this.tvrage,
        slug: slug ?? this.slug,
      );

  factory TraktIds.fromJson(Map<String, dynamic> json) => TraktIds(
        trakt: json['trakt'],
        tvdb: json['tvdb'],
        imdb: json['imdb'],
        tmdb: json['tmdb'],
        tvrage: json['tvrage'],
        slug: json['slug'],
      );

  Map<String, dynamic> toJson() => {
        'trakt': trakt,
        'tvdb': tvdb,
        'imdb': imdb,
        'tmdb': tmdb,
        'tvrage': tvrage,
        'slug': slug,
      };
}
