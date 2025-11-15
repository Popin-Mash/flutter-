import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RecipeDetailAppBar extends StatelessWidget {
  const RecipeDetailAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.white,
      // backgroundColor: Colors.white70,
     // This makes title and icons black
      expandedHeight: 275.0,
      elevation: 0.0,
      stretch: true,
      title: Text("Center"),
      scrolledUnderElevation: 0.5,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              "https://grantourismotravels.com/wp-content/uploads/2017/05/Authentic-Fish-Amok-Recipe-Steamed-Fish-Curry-Cambodia-Copyright-2022-Terence-Carter-Grantourismo-T.jpg",
              fit: BoxFit.cover,
            ),
             DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.grey.withOpacity(0.3)],
                ),
              ),
            ),
          ],
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          height: 32.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Container(
            width: 40,
            height: 5.0,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
      leadingWidth: 80.0,
      leading: Container(
        margin: const EdgeInsets.only(left: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(56),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.3),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
