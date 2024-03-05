import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallback;

  const CustomAppBar({super.key, required this.leftIcon, required this.rightIcon, this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallback != null ? () => leftCallback!() : null, 
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child: Icon(leftIcon),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
            child: Icon(rightIcon),
          )
      ],),
    );
  }
}