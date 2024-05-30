class Extensions {}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  String toSaveDataFormat() {
    return '$year$month$day$hour$minute$second$microsecond';
  }
}

extension Squidex on String {
  String fromSquidex() {
    String output = replaceAll(RegExp(r'<p>'), '');
    output = output.replaceAll(RegExp(r'</p>'), '\n');
    output = output.replaceAll('\\\\n', '\n');
    return output;
  }
}
