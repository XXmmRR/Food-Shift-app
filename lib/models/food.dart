class Food {
  String imgUrl;
  String desc; // исправлено с desk на desc
  String name;
  String waitTime; // исправлено с waittime на waitTime
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highlight; // исправлено с hightLight на highlight

  Food(
    this.imgUrl,
    this.desc,
    this.name,
    this.waitTime,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.ingredients,
    this.about,
    this.highlight,
  );
}
