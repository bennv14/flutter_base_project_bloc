import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toStr([String format = 'HH:mm:ss a']) {
    return DateFormat(format).format(this);
  }
}
