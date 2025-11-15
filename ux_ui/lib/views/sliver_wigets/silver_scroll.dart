import 'package:flutter/material.dart';
import 'package:ux_ui/views/sliver_wigets/searc_bar.dart';

class SilverScrollScreen extends StatelessWidget {
  const SilverScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true, //* When scroll down no see head bar
            elevation: 0,
            leading: const SizedBox.shrink(),
            // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            backgroundColor: Colors.green,
            expandedHeight: 300,
            stretch: true, //* -- Zom image when scroll down

            // stretchTriggerOffset: 200,
            // stretchTriggerMaxExtent: [],
            // surfaceTintColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://www.bigfootdigital.co.uk/wp-content/uploads/2020/07/image-optimisation-scaled.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            leading: const SizedBox.shrink(),
            backgroundColor: Colors.amber,
            elevation: 0,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(-10),
              child: SizedBox(),
            ),
            flexibleSpace: const SearchBarItem(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  // color: Colors.blue
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                );
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
