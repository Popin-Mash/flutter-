import 'package:flutter/material.dart';

class TabBarWidgets extends StatelessWidget {
  const TabBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(icon: Icon(Icons.home), text: "Home"),
        Tab(icon: Icon(Icons.search), text: "Search"),
        Tab(icon: Icon(Icons.shopping_cart), text: "Cart"),
        Tab(icon: Icon(Icons.person), text: "Profile"),
      ],
    );
  }
}
