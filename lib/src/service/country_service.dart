part of 'package:trakt_client_flutter/src/client/service_core.dart';

class CountryService extends TraktServiceCore {
  Future<TraktBase<TraktCountry>> list(TraktSimpleType type) {
    var pathItems = ['countries', type.string];
    return _get_MR<TraktCountry>(
      path: pathItems.toPath(),
      builder: (response) => TraktCountry.fromJson(response),
    );
  }
}
