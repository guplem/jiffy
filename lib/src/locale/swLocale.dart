import 'package:jiffy/src/locale/locale.dart';
import 'package:jiffy/src/locale/relativeTime.dart';
import 'package:jiffy/src/enums/startOfWeek.dart';

class SwLocale extends Locale {
  StartOfWeek strtOfWeek;
  SwLocale(this.strtOfWeek);

  @override
  RelativeTime relativeTime() => EsRelativeTime();

  @override
  List<String>? ordinals() => null;

  @override
  StartOfWeek startOfWeek() => strtOfWeek;
}

class EsRelativeTime extends RelativeTime {
  @override
  String prefixAgo() => 'muda';
  @override
  String prefixFromNow() => 'muda';
  @override
  String suffixAgo() => 'zilizopita';
  @override
  String suffixFromNow() => 'ujao';
  @override
  String lessThanOneMinute(int seconds) => 'mchache';
  @override
  String aboutAMinute(int minutes) => 'dakika moja';
  @override
  String minutes(int minutes) => 'dakika $minutes';
  @override
  String aboutAnHour(int minutes) => 'lisaa limoja';
  @override
  String hours(int hours) => 'masaaa $hours';
  @override
  String aDay(int hours) => 'siku moja';
  @override
  String days(int days) => 'siku $days';
  @override
  String aboutAMonth(int days) => 'mwezi mmoja';
  @override
  String months(int months) => 'miezi $months';
  @override
  String aboutAYear(int year) => 'mwaka mmoja';
  @override
  String years(int years) => 'miaka $years';
  @override
  String wordSeparator() => ' ';
}
