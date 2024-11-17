import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toStr([String format = 'yyyy-MM-dd HH:mm:ss']) {
    return DateFormat(format).format(this);
  }
}
