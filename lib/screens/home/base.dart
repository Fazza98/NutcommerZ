import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nut_ui/screens/home/categories.dart';
import 'package:nut_ui/screens/home/cart.dart';
import 'package:nut_ui/screens/home/home.dart';
import 'package:nut_ui/screens/home/notification.dart';
import 'package:nut_ui/screens/home/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static int index = 0;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List screens = [
    const Home(),
    const Categories(),
    const Cart(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        leadingWidth: 1,
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.white,
        title: HomePage.index == 0
            ? Image.asset('assets/images/nut.png', fit: BoxFit.cover)
            : HomePage.index == 1
                ? const Text('My Categories')
                : HomePage.index == 2
                    ? const Text('My Cart')
                    : const Text('My Profile'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          HomePage.index != 2
              ? IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                  color: const Color(0xFF000000),
                )
              : const Padding(padding: EdgeInsets.zero),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Notifications(),
                ),
              );
            },
            color: Colors.black,
          ),
        ],
      ),
      body: screens[HomePage.index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: HomePage.index,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            HomePage.index = value;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(HomePage.index == 0 ? Icons.home : Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(HomePage.index == 1 ? Icons.widgets : Icons.widgets_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              HomePage.index == 2 ? Icons.shopping_cart : Icons.shopping_cart_outlined,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(HomePage.index == 3 ? Icons.person : Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
