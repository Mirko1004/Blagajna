import 'package:intl/intl.dart';

class Globals{

  static String formatDateTimeFromDateForInsert(DateTime timeToFormat) {

    DateFormat iso8601Format = new DateFormat("yyyy-MM-dd HH:mm:ss");

    String date;
    if (timeToFormat != null) {
      date = iso8601Format.format(timeToFormat);
    }
    return date;
  }

  static String dateYear(DateTime timeToFormat) {

    DateFormat iso8601Format = new DateFormat("y");

    String date;
    if (timeToFormat != null) {
      date = iso8601Format.format(timeToFormat);
    }
    return date;
  }


  static String dateDnevniPromet(DateTime timeToFormat) {

    DateFormat iso8601Format = new DateFormat("MMM d, y");

    String date;
    if (timeToFormat != null) {
      date = iso8601Format.format(timeToFormat);
    }
    return date;
  }


  static String dateUkupniPromet(DateTime timeToFormat) {

    DateFormat iso8601Format = new DateFormat(" d. M. y");

    String date;
    if (timeToFormat != null) {
      date = iso8601Format.format(timeToFormat);
    }
    return date;
  }


  static String dateCalendar(DateTime timeToFormat) {

    DateFormat iso8601Format = new DateFormat("EEE, MMM d ");

    String date ;
    if (timeToFormat != null) {
      date = iso8601Format.format(timeToFormat);
    }
    return date;
  }


  static String timeCalendar(DateTime timeToFormat) {

    DateFormat iso8601Format = new DateFormat("Hms");

    String date ;
    if (timeToFormat != null) {
      date = iso8601Format.format(timeToFormat);
    }
    return date;
  }
}