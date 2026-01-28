import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  return DateFormat('EEE, dd MMM').format(date);
}
