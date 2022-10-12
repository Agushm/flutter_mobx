import 'package:intl/intl.dart';

class StringConverter {
  StringConverter._();
  static String formatDateDepature(String _d) {
    final date = DateTime.parse(_d);
    final fDate = DateFormat('dd MMMM yyyy');
    return fDate.format(date);
  }

  static String formatRupiah(int number, {bool isMillion = false}) {
    final fRupiah = NumberFormat("Rp " + "#,##0", "in_ID");
    if (number > 1000000 && isMillion) {
      final million = number / 1000000;
      return "Rp $million juta";
    } else {
      return fRupiah.format(number);
    }
  }

  static String flightDate(DateTime date) {
    final fDate = DateFormat('dd MMM yy');
    return fDate.format(date);
  }

  static String flightTime(DateTime date) {
    final fDate = DateFormat('hh:mm');
    return fDate.format(date);
  }
}
