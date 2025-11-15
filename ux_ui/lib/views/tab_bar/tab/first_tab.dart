
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.red,
      child: const Center(
        child: Text(
          "Home",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
