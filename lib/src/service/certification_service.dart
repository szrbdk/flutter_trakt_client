part of 'package:trakt_client/src/client/service_core.dart';

class CertificationService extends TraktServiceCore {
  Future<TraktBase<TraktCertification>> list(
      TraktCertificationType certificationType) {
    var type = EnumHelper().traktCertificationTypeToString(certificationType);
    return _get_MR<TraktCertification>(
      path: 'certifications/$type',
      queryParameters: null,
      builder: (response) => TraktCertification.fromJson(response),
    );
  }
}
