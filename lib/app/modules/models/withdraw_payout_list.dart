class Payouts {
  String image;
  String number;
  String timeDate;
  bool? iscompleted = true;
  bool? isfaild = false;

  Payouts(
      {
        required this.image,
      required this.number,
      required this.iscompleted,
      required this.isfaild,
      required this.timeDate,
      });
}
