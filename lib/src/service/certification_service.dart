part of 'package:trakt_client/src/client/service_core.dart';

class CertificationService extends TraktServiceCore {
  Future<TraktBase<TraktCertification>> list(TraktSimpleType type) {
    var pathItems = ['certifications', type.string];
    return _get_MR<TraktCertification>(
      path: pathItems.toPath(),
      builder: (response) => TraktCertification.fromJson(response),
    );
  }
}
