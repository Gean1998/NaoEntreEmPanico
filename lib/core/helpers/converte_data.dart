import 'package:intl/intl.dart';

class ConverteData {
  static final _formatoDatabase = DateFormat('yyyy-MM-ddT00:00:00.000');
  static final _formatoMesAno = DateFormat('MM-yyyy');

  static String? database(DateTime? data) {
    if (data == null) return '';

    return _formatoDatabase.format(data);
  }

  static String? mesAno(DateTime? data) {
    if (data == null) return '';

    return _formatoMesAno.format(data);
  }
}
