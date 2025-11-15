import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: SearchBarSuggestion(),
    debugShowCheckedModeBanner: false,
  ));
}

class SearchBarSuggestion extends StatelessWidget {
  const SearchBarSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Custom Search Example"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leadingWidth: 400,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 45,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              children: [
                const SizedBox(width: 10),
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      final result = await showSearch(
                        context: context,
                        delegate: CustomSearchDelegate(),
                      );

                      if (result != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                ProductDetailScreen(productName: result),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      "Search products...",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text("Tap the search bar to begin"),
      ),
    );
  }
}

List<String> searchTerm = ["Apple", "Banana", "Kiwi", "Mango", "Orange"];

class CustomSearchDelegate extends SearchDelegate {
  // 🔹 Custom app bar theme (change color, shape, etc.)
  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }

  @override
  String get searchFieldLabel => 'Search fruit...';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear, color: Colors.grey),
        onPressed: () {
          query = ''; /// Clear search box
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.white),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final matchQuery = searchTerm
        .where((fruit) => fruit.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          final result = matchQuery[index];
          return ListTile(
            title: Text(result),
            leading: const Icon(Icons.check_circle_outline, color: Colors.deepPurple),
            onTap: () {
              close(context, result);
            },
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final matchQuery = searchTerm
        .where((fruit) => fruit.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          final result = matchQuery[index];
          return ListTile(
            title: Text(result),
            leading: const Icon(Icons.apple, color: Colors.deepPurple),
            onTap: () {
              query = result;
              showResults(context);
            },
          );
        },
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final String productName;

  const ProductDetailScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text(
          "You selected: $productName",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}