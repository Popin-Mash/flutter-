import 'package:flutter/material.dart';

class CustomerScrollView extends StatelessWidget {
  const CustomerScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // ✅

      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
              // keep the app bar pinned so when the FlexibleSpaceBar collapses
              // the toolbar area shows the AppBar's backgroundColor (white)
              pinned: true,
              centerTitle: true,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              // disable floating here to avoid overlaying behavior while
              // scrolling — this ensures a clean collapse into the white bar
              floating: false,
              elevation: 0.0,
              leadingWidth: double.infinity,
              expandedHeight: 200,
              scrolledUnderElevation: 10.9,
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                      ),
                    ),
                  ],
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                "https://leschatsgourmets.com/wp-content/uploads/2024/08/les-chats-gourmets-pizza-maison-a-la-sauce-bbq-champignons-de-paris-et-merguez.jpg",
                fit: BoxFit.cover,
                // width: 150,
              ))),
          SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              expandedHeight: 200,
              leadingWidth: double.infinity,
              pinned: false,
              automaticallyImplyLeading: false,
              centerTitle: true,
              // remove floating from the second app bar so it doesn't
              // compete with the pinned behavior of the first app bar
              floating: false,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(12),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.mic),
                      fillColor: Colors.grey,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 400,
                        height: 150,
                        color: Colors.white,
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Bay Morn Dot (St.200)",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.star_border,
                                )
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Text(
                                  "3.6 (1000 +ratings)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 350,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black26,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.green,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 30,
                                      // color: Colors.green,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        border: Border.all(
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.run_circle,
                                          ),
                                          Icon(
                                            Icons.delivery_dining_outlined,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Delivery 20-30 min",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "\$ 10.00 delivery or free with \$ 3.00 spend",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                      width: 400,
                      height: 100,
                      // color: Colors.red,
                    )
                  ],
                ),
              )),
          SliverToBoxAdapter(
              child: Container(
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          )),
        ],
      ),
    );
  }
}
