import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ux_ui/views/sliver_wigets/searc_bar.dart';

class Silver01AppBar extends StatelessWidget {
  const Silver01AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            pinned: false,
            elevation: 0,
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
            floating: true,

            leadingWidth: 200,
            leading: const Row(
              children: [Icon(Icons.person), Text("Phnom Penh")],
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            // expandedHeight: 50,
            stretchTriggerOffset: 200,

            // stretchTriggerMaxExtent: 200,

            stretch: true,

            //* -- if scroll down color will be change to pink
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
                    // color: Colors.white,
                    )),
            // title: const SearchBarItem(),
          ),
          SliverAppBar(
            // toolbarHeight: 50,
            pinned: true,
            elevation: 0,
            centerTitle: true,
            // floating: true,
            expandedHeight: 100,
            leading: const SizedBox.shrink(),
            bottom: const PreferredSize(
              //* --When scroll up wil be disable search bar --
              preferredSize: Size.fromHeight(40.0),
              child: SizedBox(),
            ),
            //* When scroll up color will be change to white
            backgroundColor: Colors.pink,
            // expandedHeight: 200,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
              color: Colors.white,
              child: const SearchBarItem(),
            )),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  _categoryItem(),
                  _categoryItem(),
                  _categoryItem(),
                  _categoryItem(),
                  _categoryItem(),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15),

                  // color: Colors.blue,
                  margin: const EdgeInsets.only(bottom: 10, top: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                  child: Text("Data"),
                );
              },
              childCount: 3,
            ),
          ),
          //* -- Slier
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 400,
                    color: Colors.amber[200],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class _categoryItem extends StatelessWidget {
  const _categoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            // color: Colors.red,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://img.freepik.com/free-vector/pizza-slice-melted-floating-cartoon-vector-icon-illustration-food-object-icon-isolated-flat-vector_138676-10422.jpg?semt=ais_hybrid&w=740&q=80",
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text("Pizza"),
        ],
      ),
    );
  }
}
