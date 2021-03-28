part of 'package:trakt_client/src/client/service_core.dart';

class CertificationService extends TraktServiceCore {
  Future<TraktBase<TraktCertification>> list(
      TraktCertificationType certificationType) {
    var pathItems = ['certifications', certificationType.string];
    return _get_MR<TraktCertification>(
      path: pathItems.toPath(),
      queryParameters: null,
      builder: (response) => TraktCertification.fromJson(response),
    );
  }
}
