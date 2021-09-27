part of 'package:trakt_client_flutter/src/client/service_core.dart';

class GenreService extends TraktServiceCore {
  Future<TraktBase<TraktGenre>> list(TraktSimpleType type) {
    var pathItems = ['countries', type.string];
    return _get_MR<TraktGenre>(
      path: pathItems.toPath(),
      builder: (response) => TraktGenre.fromJson(response),
    );
  }
}
