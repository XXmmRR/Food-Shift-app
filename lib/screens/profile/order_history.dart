import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(
        children: [
         CustomAppBar(leftIcon: Icons.arrow_back_ios_new, rightIcon: Icons.search_off_outlined),
         Image.network('https://cdn4.iconfinder.com/data/icons/smooth-3d-for-online-stores/512/shopping-basket.png', fit: BoxFit.cover,),
         Text('Order history not found')],)),);
  }
}