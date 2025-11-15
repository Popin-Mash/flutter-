import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ux_ui/views/tab_bar/tab/first_tab.dart';

class TabBarMainScreen extends StatelessWidget {
  const TabBarMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Tab Bar"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.search), text: "Search"),
                Tab(icon: Icon(Icons.shopping_cart), text: "Cart"),
                Tab(icon: Icon(Icons.person), text: "Profile"),
              ],
            ),
            Expanded(
                flex: 3,
                child: TabBarView(
                  children: [
                    const FirstTab(),
                    Container(
                      height: 150,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          "Cart",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      color: Colors.yellow,
                      child: const Center(
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
