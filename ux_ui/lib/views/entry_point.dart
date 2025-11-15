import 'package:flutter/material.dart';
import 'package:ux_ui/views/app_bar/app_bar_page.dart';
import 'package:ux_ui/views/app_bar/search_bar_anchor.dart';

import 'package:ux_ui/views/bttom_sheet/bttom_sheet.dart';
import 'package:ux_ui/views/scrolling/entry_point.dart';
import 'package:ux_ui/views/search_suggestion/search_bar_suggestion.dart';
import 'package:ux_ui/views/sliver_wigets/custom_scroll_view.dart';
import 'package:ux_ui/views/sliver_wigets/recipe_detail_screen.dart';
import 'package:ux_ui/views/sliver_wigets/silver_01.dart';
import 'package:ux_ui/views/sliver_wigets/silver_scroll.dart';
import 'package:ux_ui/views/slidable/entry_point.dart';
import 'package:ux_ui/views/tab_bar/entry_point.dart';
import 'package:ux_ui/views/tab_bar/tab_bar_switching.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SilverScrollScreen(),
                ),
              );
            },
            child: const Text("Silver Scroll View"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomerScrollView(),
                ),
              );
            },
            child: const Text("CustomerScrollView"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Silver01AppBar(),
                ),
              );
            },
            child: const Text("Silver Scroll View"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TabBarMainScreen(),
                ),
              );
            },
            child: const Text("Table"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SlidableScreen(),
                ),
              );
            },
            child: const Text("Slidable"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TabBarSwitching(),
                ),
              );
            },
            child: const Text("Slidable"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ButtonSheet(),
                ),
              );
            },
            child: const Text("Show"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScrollingExperience(),
                ),
              );
            },
            child: const Text("Scroll "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecipeDetailScreen(),
                ),
              );
            },
            child: const Text("Sliver"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AppBarPage(),
                ),
              );
            },
            child: const Text("Appbar"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            child: const Text("Searc"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchBarAnchorPage(),
                  ));
            },
            child: const Text("Search Nar"),
          ),
        ],
      ),
    );
  }
}

Route<void> _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const SearchBarSuggestion(),
    transitionDuration: const Duration(milliseconds: 800),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 5.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}
