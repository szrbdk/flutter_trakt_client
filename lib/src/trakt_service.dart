import 'package:trakt_client/src/client/service_core.dart';

class TraktService {
  static AuthenticationService get oAuth => AuthenticationService();
  static CalendarService get calendar => CalendarService();
  static CertificationService get certification => CertificationService();
  static CheckinService get checkin => CheckinService();
  static CommentService get comment => CommentService();
}
