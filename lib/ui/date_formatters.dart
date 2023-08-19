import 'package:intl/intl.dart';

class DateFormatters {
  DateFormatters._();

  static DateFormat get calendar => DateFormat(
        'dd MMM',
        Intl.getCurrentLocale(),
      );
}
