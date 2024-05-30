String timerFormat(Duration d) {
  final millis = d.inMilliseconds;
  if (millis >= 3600000) {
    throw const FormatException('Too big to format');
  }
  final minutes = d.inMinutes;
  final seconds = d.inSeconds % 60;

  return '$minutes:$seconds';
}
