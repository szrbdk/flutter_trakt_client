part of 'package:trakt_client/src/client/service_core.dart';

class CheckinService extends TraktServiceCore {
  Future<TraktBase<TraktCheckin>> checkin(TraktCheckin data,
      {bool clean = true}) {
    return _post_MS_MR<TraktCheckin>(
      path: 'checkin',
      queryParameters: null,
      content: data.toJson(clean: clean),
      builder: (response) => TraktCheckin.fromJson(response),
    );
  }

  Future<TraktBase<bool>> delete() {
    return _delete<bool, bool>(
      path: 'checkin',
      queryParameters: null,
      builder: (response) => true,
    );
  }
}
