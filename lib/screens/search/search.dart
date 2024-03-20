import 'dart:html';

import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_nav_bar.dart';
import 'package:flutter_application_2/widgets/pages.dart';



class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchInputElement searchBar;
  String searchValue = '';
  int pageindex = 0;

      void onTabTapped(int index) {
      print(pageindex);
      setState(() {pageindex = index;});
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  pages[pageindex]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          bottomNavigationBar: CustomNavbar(onTabTapped),
          appBar: EasySearchBar(
          title: Text('Example'),
          onSearch: (value) => setState(() => searchValue = value) )

    );
  }
}