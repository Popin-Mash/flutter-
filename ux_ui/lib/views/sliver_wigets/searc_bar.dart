import 'package:flutter/material.dart';

class SearchBarItem extends StatelessWidget {
  const SearchBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        // color: Colors.grey[400],
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: const Icon(Icons.search),
            suffixIcon: const Icon(Icons.mic),
            fillColor: Colors.grey[500],
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
