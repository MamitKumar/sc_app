class DailyReward{
  String title;
  String discripstion;
  String offer;
  bool isCompleted;
  bool isClamed;
  DailyReward(
      {
         this.isCompleted=false,
         this.isClamed=false,
        required this.title,
        required this.offer,
        required this.discripstion,
      });
}
