import 'package:day24_ecommerece_app/data/fruits_sample_data.dart';
import 'package:day24_ecommerece_app/data/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.fruit});

  final Fruits fruit;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: yellow,
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: yellow,
        body: Stack(children: [
          Container(
            margin: const EdgeInsets.only(bottom: 300),
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(fruit.image),
                    alignment: Alignment.topCenter)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      SystemChrome.setSystemUIOverlayStyle(
                          const SystemUiOverlayStyle(
                              statusBarColor: surface,
                              statusBarIconBrightness: Brightness.dark));
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: black,
                      size: 20,
                    )),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      color: black,
                      size: 24,
                    )),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 400,
                width: double.infinity,
                child: Card(
                  margin: const EdgeInsets.all(0),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  color: surface,
                  child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: Column(children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(fruit.name,
                            style: const TextStyle(
                                color: black,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, incididunt ut labore et dolore magna aliqua.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            "Total items:",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black26,
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            "03 dozens",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Discounts:",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black26,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "-Rs. 35.00",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black26,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Total to pay",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "Rs. 150.00",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: yellow,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30)))),
                              onPressed: () {},
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.shopping_bag_outlined,
                                  color: black,
                                  size: 25,
                                ),
                              )),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: yellow,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)))),
                                onPressed: () {},
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "pay now".toUpperCase(),
                                        style: const TextStyle(
                                            color: black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: black,
                                          size: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
