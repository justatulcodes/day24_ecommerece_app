import 'package:day24_ecommerece_app/data/fruits_sample_data.dart';
import 'package:day24_ecommerece_app/data/values.dart';
import 'package:flutter/material.dart';

import '../pages/product_list_itemview.dart';

final List<Widget> pages = [
  ScrollConfiguration(
          behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomScrollView(slivers: [
              SliverAppBar(
                backgroundColor: surface,
                elevation: 0,
                snap: false,
                pinned: true,
                expandedHeight: 80,
                toolbarHeight: 60,
                collapsedHeight: 65,
                flexibleSpace: const FlexibleSpaceBar(
                  centerTitle: false,
                  expandedTitleScale: 1.3,
                  titlePadding: EdgeInsets.only(top: 15, left: 10, bottom: 10),
                  title: Text("Categories",
                      style: TextStyle(
                          color: black,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold)),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(
                      padding: const EdgeInsets.only(top: 10),
                      icon: const Icon(Icons.menu),
                      tooltip: 'options',
                      color: grey,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              // SliverList(
              //     delegate:
              //         SliverChildBuilderDelegate((BuildContext context, int index) {
              //   return ProductItemview(fruit: fruitListForSample[index]);
              // }, childCount: fruitListForSample.length))
              // SliverList(
              //   delegate: SliverChildBuilderDelegate((context, index) {
              //     // The first item will be a TextField
              //     if (index == 0) {
              //       return Padding(
              //         padding: const EdgeInsets.all(12.0),
              // child: TextField(
              //   maxLines: 1,
              //   decoration: InputDecoration(
              //     suffixIcon: const Icon(
              //       Icons.search,
              //       color: grey,
              //       weight: 10,
              //     ),
              //     enabledBorder: InputBorder.none,
              //     focusedBorder: InputBorder.none,
              //     border: OutlineInputBorder(
              //         borderSide: const BorderSide(
              //           width: 0,
              //         ),
              //         borderRadius: BorderRadius.circular(10)),
              //     hintText: "Search",
              //     filled: true,
              //     fillColor: Colors.white,
              //     hintStyle: const TextStyle(
              //         color: grey,
              //         fontSize: 20,
              //         fontWeight: FontWeight.w700),
              //   ),
              //   style: const TextStyle(
              //       color: Colors.black54,
              //       fontWeight: FontWeight.w700,
              //       fontSize: 20),
              //         ),
              //       );
              //     }
              //     return GridView.builder(
              //       itemCount: fruitListForSample.length,
              //       itemBuilder: (context, i) =>
              //       ProductItemview(fruit: fruitListForSample[i]),
              //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2
              //       ),
              //     );
              //     // return ProductItemview(fruit: fruitsList[index]);
              //   }, childCount: fruitListForSample.length
              // ),)

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.black26,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search,
                          color: grey,
                          weight: 10,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Search",
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: const TextStyle(
                            color: grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      style: const TextStyle(
                          color: black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ProductItemview(fruit: fruitsList[index]);
                  },
                  childCount: fruitsList.length,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              ),
            ]),
          ),
        ),

  const Center(
    child: Icon(Icons.local_shipping_outlined,
    size: 100,)
  ),

  const Center(
    child: Icon(Icons.notifications_none_outlined,size: 100)
  ),

  const Center(
    child: Icon(Icons.person_outline_rounded,size: 100)
  ),

];
