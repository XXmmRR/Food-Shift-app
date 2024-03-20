import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_app_bar.dart';
import 'package:flutter_application_2/widgets/custom_nav_bar.dart';
import 'package:flutter_application_2/widgets/pages.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {

  int pageindex = 0;
        void onTabTapped(int index) {
      print(pageindex);
      setState(() {pageindex = index;});
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  pages[pageindex]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
         CustomAppBar(leftIcon: Icons.arrow_back_ios_new),
         Image.network('https://atlas-content-cdn.pixelsquid.com/stock-images/blue-box-5E80Re5-600.jpg', fit: BoxFit.cover,),
         Text('Order history not found')],)),
      bottomNavigationBar: CustomNavbar(onTabTapped),   
         );
  }
}