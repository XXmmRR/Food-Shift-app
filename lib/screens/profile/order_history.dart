import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(children: [Image.network('https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/shopping_basket.png'), Text('Order history not found')],)),);
  }
}