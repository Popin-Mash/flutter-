import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key, this.result});
 final String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result wer cate $result"),
      ),
    );

  }
}
