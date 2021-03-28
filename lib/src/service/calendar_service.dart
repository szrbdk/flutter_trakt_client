part of 'package:trakt_client/src/client/service_core.dart';

class CalendarService extends TraktServiceCore {
  Future<TraktBase<List<TraktCalendar>>> _getCalendar(List<String> pathItems,
      DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo) {
    var _pathValues = [
      ...pathItems,
      'calendars',
      if (startDate != null) ...[DateFormat('yyyy-MM-dd').format(startDate)],
      if (days != null) ...['$days'],
    ];
    return _get_MLR<List<TraktCalendar>>(
      path: _pathValues.toPath(),
      queryParameters: {
        if (extendedInfo != null) ...{'extended': extendedInfo.joinWith(',')}
      },
      builder: (response) => List<TraktCalendar>.from(
          response.map((e) => TraktCalendar.fromJson(e))),
    );
  }

  Future<TraktBase<List<TraktCalendar>>> myShows(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['my', 'shows'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }

  Future<TraktBase<List<TraktCalendar>>> myNewShows(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['my', 'shows', 'new'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }

  Future<TraktBase<List<TraktCalendar>>> mySeasonPremieres(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['my', 'shows', 'premieres'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }

  Future<TraktBase<List<TraktCalendar>>> myMovies(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['my', 'movies'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }

  Future<TraktBase<List<TraktCalendar>>> myDvd(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['my', 'dvd'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }

  Future<TraktBase<List<TraktCalendar>>> allShows(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['all', 'shows'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }

  Future<TraktBase<List<TraktCalendar>>> allNewShows(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['all', 'shows', 'new'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }

  Future<TraktBase<List<TraktCalendar>>> allSeasonPremieres(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['all', 'shows', 'premieres'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }

  Future<TraktBase<List<TraktCalendar>>> allMovies(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['all', 'movies'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }

  Future<TraktBase<List<TraktCalendar>>> allDvd(
      {DateTime startDate, int days, List<TraktExtendedInfo> extendedInfo}) {
    var pathItems = ['all', 'dvd'];
    return _getCalendar(pathItems, startDate, days, extendedInfo);
  }
}
