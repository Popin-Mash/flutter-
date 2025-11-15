import 'package:flutter/material.dart';

class ScrollingWidget extends StatelessWidget {
  const ScrollingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          (20),
          (index) => Container(
            height: 100,
            color: Colors.blue[(index % 9 + 2) * 100],
            child: Center(
              child: Text("Item $index"),
            ),
          ),
        ),
      ),
    );
  }
}
