part of 'package:trakt_client/src/client/service_core.dart';

class CalendarService extends TraktServiceCore {
  Future<TraktBase<List<TraktCalendar>>> _getCalendar(
      String path, DateTime startDate, int days) {
    var _startDate = DateFormat('yyyy-MM-dd').format(startDate);
    return _get_MLR<List<TraktCalendar>>(
      path: 'calendars/$path/$_startDate/$days',
      queryParameters: null,
      builder: (response) => List<TraktCalendar>.from(
          response.map((e) => TraktCalendar.fromJson(e))),
    );
  }

  Future<TraktBase<List<TraktCalendar>>> myShows(DateTime startDate, int days) {
    return _getCalendar('my/shows', startDate, days);
  }

  Future<TraktBase<List<TraktCalendar>>> myNewShows(
      DateTime startDate, int days) {
    return _getCalendar('my/shows/new', startDate, days);
  }

  Future<TraktBase<List<TraktCalendar>>> mySeasonPremieres(
      DateTime startDate, int days) {
    return _getCalendar('my/shows/premieres', startDate, days);
  }

  Future<TraktBase<List<TraktCalendar>>> myMovies(
      DateTime startDate, int days) {
    return _getCalendar('my/movies', startDate, days);
  }

  Future<TraktBase<List<TraktCalendar>>> myDvd(DateTime startDate, int days) {
    return _getCalendar('my/dvd', startDate, days);
  }

  Future<TraktBase<List<TraktCalendar>>> allShows(
      DateTime startDate, int days) {
    return _getCalendar('all/shows', startDate, days);
  }

  Future<TraktBase<List<TraktCalendar>>> allNewShows(
      DateTime startDate, int days) {
    return _getCalendar('all/shows/new', startDate, days);
  }

  Future<TraktBase<List<TraktCalendar>>> allSeasonPremieres(
      DateTime startDate, int days) {
    return _getCalendar('all/shows/premieres', startDate, days);
  }

  Future<TraktBase<List<TraktCalendar>>> allMovies(
      DateTime startDate, int days) {
    return _getCalendar('all/movies', startDate, days);
  }

  Future<TraktBase<List<TraktCalendar>>> allDvd(DateTime startDate, int days) {
    return _getCalendar('all/dvd', startDate, days);
  }
}
