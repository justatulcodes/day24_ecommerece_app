import 'dart:ui';

import 'package:day24_ecommerece_app/data/fruits_sample_data.dart';
import 'package:day24_ecommerece_app/data/values.dart';
import 'package:day24_ecommerece_app/pages/details_page.dart';
import 'package:flutter/material.dart';

class ProductItemview extends StatelessWidget {
  const ProductItemview({super.key, required this.fruit});

  final Fruits fruit;

  @override
  Widget build(BuildContext context) {
    // const List<int> widthList = [150, 170, 180, 155, 160, 175, 165];
    return SafeArea(
      child: Center(
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Card(
            margin:
                const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(fruit: fruit),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(fruit.image), fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        width: double.maxFinite,
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                    ClipRRect(
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: BackdropFilter(
                          blendMode: BlendMode.srcIn,
                          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fruit.name.toUpperCase(),
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Rs. ${fruit.price.toString()}"
                                          .toUpperCase(),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                const Spacer(flex: 1),
                                IconButton.filled(
                                    splashColor: Colors.transparent,
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.only(right: 0),
                                    onPressed: () {},
                                    style: IconButton.styleFrom(
                                        splashFactory: NoSplash.splashFactory,
                                        backgroundColor: yellow,
                                        shape: const CircleBorder()),
                                    icon: const Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
