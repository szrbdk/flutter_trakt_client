

import 'package:trakt_client/src/client/service_core.dart';

class TraktService {
  static AuthenticationService get oAuth => AuthenticationService();
  static CalendarService get calendart => CalendarService();
}
