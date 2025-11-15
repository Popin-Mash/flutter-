import 'package:flutter/material.dart';
import 'package:ux_ui/views/sliver_wigets/widgets/recipe_detail_appbar.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      // extendBodyBehindAppBar: true,

      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          RecipeDetailAppBar(), // your sliver app bar
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fish Amok",
                    style: TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Fish Amok is one of Cambodia’s most beloved traditional dishes. "
                        "It’s a creamy, fragrant fish curry steamed in banana leaves...",
                    style: TextStyle(fontSize: 16),
                  ),     Text(
                    "Fish Amok is one of Cambodia’s most beloved traditional dishes. "
                        "It’s a creamy, fragrant fish curry steamed in banana leaves...",
                    style: TextStyle(fontSize: 16),
                  ),     Text(
                    "Fish Amok is one of Cambodia’s most beloved traditional dishes. "
                        "It’s a creamy, fragrant fish curry steamed in banana leaves...",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 450), // just to make it scrollable
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
