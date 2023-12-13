import 'package:intl/intl.dart';

int toInt(DateTime? dateTime) {
  if (dateTime == null) return 0;
  try {
    DateTime datetime = DateFormat("yyyy-MM-ddTHH:mm:ssZ", "id_ID")
        .parse(dateTime.toIso8601String(), true);
    return datetime.millisecondsSinceEpoch;
  } catch (e) {
    return 0;
  }
}

int nowToInt() {
  return toInt(DateTime.now());
}

String intToDateString(int? intDate) {
  if (intDate == null) return "-";
  try {
    DateTime datetime = DateTime.fromMillisecondsSinceEpoch(intDate).toUtc();
    return DateFormat("EEEE, dd MMMM yyyy", "id_ID").format(datetime);
  } catch (e) {
    return "";
  }
}

String intToDateTimeString(int? intDate) {
  if (intDate == null) return "-";
  try {
    DateTime datetime = DateTime.fromMillisecondsSinceEpoch(intDate).toUtc();
    return DateFormat("EEEE, dd MMMM yyyy HH:mm", "id_ID").format(datetime);
  } catch (e) {
    return "";
  }
}

String intToYmdString(int? intDate) {
  if (intDate == null) return "-";
  try {
    DateTime datetime = DateTime.fromMillisecondsSinceEpoch(intDate).toUtc();
    return DateFormat("yyyy-MM-dd", "id_ID").format(datetime);
  } catch (e) {
    return "";
  }
}

String intToYmdHmsString(int? intDate) {
  if (intDate == null) return "-";
  try {
    DateTime datetime = DateTime.fromMillisecondsSinceEpoch(intDate).toUtc();
    return DateFormat("yyyy-MM-dd HH:mm:ss", "id_ID").format(datetime);
  } catch (e) {
    return "";
  }
}

String intToYmdHmString(int? intDate) {
  if (intDate == null) return "-";
  try {
    DateTime datetime = DateTime.fromMillisecondsSinceEpoch(intDate).toUtc();
    return DateFormat("yyyy-MM-dd HH:mm", "id_ID").format(datetime);
  } catch (e) {
    return "";
  }
}

String nowYmdDate() {
  try {
    return DateFormat("yyyy-MM-dd", "id_ID").format(DateTime.now());
  } catch (e) {
    return "";
  }
}
