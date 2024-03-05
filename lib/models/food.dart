class Food {
  String imgUrl;
  String desk;
  String name;
  String waittime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;


  Food(this.imgUrl, 
      this.desk, 
      this.name, 
      this.waittime, 
      this.score, 
      this.cal, 
      this.price, 
      this.quantity, 
      this.ingredients, 
      this.about, 
      this.hightLight)
}
