import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/models/tags.dart';

class TagList extends StatelessWidget {  
  final int selected;
  final Function callback;
  final List<Tag> tags;

  TagList(this.selected, this.callback, this.tags);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? kPrimaryColor : Colors.white,
            ),
            child: Text(
              tags[index].tagName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        separatorBuilder: (_, index) => SizedBox(width: 20,), 
        itemCount: tags.length,
      ),
    );
  }
}