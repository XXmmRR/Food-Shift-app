
import 'package:flutter_application_2/models/food.dart';
class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  
  // Добавлено объявление полей как final
  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl, this.desc, this.menu, this.score);
}
