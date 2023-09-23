import 'package:day24_ecommerece_app/data/values.dart';
import 'package:day24_ecommerece_app/data/widget_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//https://www.behance.net/gallery/98577221/Grocery-App-Concept-Design-Set-3

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _MyHomePage();
}

class _MyHomePage extends State<HomePage> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: surface, statusBarIconBrightness: Brightness.dark));
      
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 25,
          backgroundColor: surface,
          unselectedItemColor: grey,
          selectedItemColor: Colors.amber,
          items: const [
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home_outlined,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.local_shipping_outlined,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.notifications_none_outlined,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.person_outline_rounded,
                )),
          ],
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        backgroundColor: surface,
        body: pages[selectedIndex]
      ),
    );
  }
}
