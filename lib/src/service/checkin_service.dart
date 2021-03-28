part of 'package:trakt_client/src/client/service_core.dart';

class CheckinService extends TraktServiceCore {
  Future<TraktBase<TraktCheckin>> checkin(TraktCheckin data,
      {bool clean = true}) {
    var pathItems = ['checkin'];
    return _post_MS_MR<TraktCheckin>(
      path: pathItems.toPath(),
      queryParameters: null,
      content: data.toJson(clean: clean),
      builder: (response) => TraktCheckin.fromJson(response),
    );
  }

  Future<TraktBase<bool>> delete() {
    var pathItems = ['checkin'];
    return _delete<bool, bool>(
      path: pathItems.toPath(),
      queryParameters: null,
      builder: (response) => true,
    );
  }
}
