part of 'package:trakt_client/src/client/service_core.dart';

class LanguageService extends TraktServiceCore {
  Future<TraktBase<TraktLanguage>> list(TraktSimpleType type) {
    var pathItems = ['countries', type.string];
    return _get_MR<TraktLanguage>(
      path: pathItems.toPath(),
      builder: (response) => TraktLanguage.fromJson(response),
    );
  }
}
