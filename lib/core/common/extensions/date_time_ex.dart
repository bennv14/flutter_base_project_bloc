import 'package:intl/intl.dart';

extension DateTimeEx on DateTime {
  String toTimeString() => DateFormat('HH:mm:ss').format(this);
}