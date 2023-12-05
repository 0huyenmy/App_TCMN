
class DateModel {
  final String? shortDate;
  final String? date;
  final bool isSelect;
  final String? numberDate;
  final String? numberWeek;

  DateModel({
     this.shortDate,
     this.date,
     this.numberDate,
     this.numberWeek,
    this.isSelect = false,
  });
}