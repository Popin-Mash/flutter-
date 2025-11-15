import 'package:flutter/material.dart';
import 'package:ux_ui/views/app_bar/search_result.dart';

class SearchBarAnchorPage extends StatelessWidget {
  const SearchBarAnchorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              controller: controller,
              hintText: "Search food...",
              elevation: MaterialStateProperty.all(1),
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
              constraints: const BoxConstraints(
                minHeight: 45,
                maxHeight: 45,
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              leading: const Icon(Icons.search),
              onTap: () => controller.openView(),
              onChanged: (_) => controller.openView(),
            );
          },

          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            final products = [
              "Pizza",
              "Burger",
              "Chicken",
              "Fried Rice",
              "Noodle",
              "Coca Cola"
            ];

            final filtered = products
                .where((p) =>
                p.toLowerCase().contains(controller.text.toLowerCase()))
                .toList();

            return List.generate(filtered.length, (index) {
              final item = filtered[index];

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      controller.closeView(item);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SearchResult(result: item),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          const Icon(Icons.fastfood),
                          const SizedBox(width: 10),
                          Text(
                            item,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
