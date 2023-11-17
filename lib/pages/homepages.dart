import 'package:cofeeshop/componets/bottomnav_bar.dart';
import 'package:cofeeshop/pages/colors.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  void navigateBottonBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> Pages = [
    ShopPage(),
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MybottomNavBar(
        onTabChange: (index) => navigateBottonBar(index),
      ),
      body: Pages[selectedIndex],
    );
  }
}
