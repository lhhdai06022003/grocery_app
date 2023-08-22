import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/Account/account_screen.dart';
import 'package:grocery_app/Cart/cart_screen.dart';
import 'package:grocery_app/Explore/explore_food_screen.dart';
import 'package:grocery_app/Explore/explore_screen.dart';
import 'package:grocery_app/Favourite/favourite_screen.dart';
import 'package:grocery_app/Home/home_screen.dart';
import 'package:grocery_app/constant/constant.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainApp extends StatefulWidget {

  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children:const [
          HomeScreen(),
          ExploreScreen(),
          CartScreen(),
          FavouriteScreen(),
          AccountScreen(),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kSecondaryColor,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(FontAwesomeIcons.house,
              size: 20,
            ),
            title: const Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(FontAwesomeIcons.weightHanging,
              size: 20,
            ),
            title: const Text("Explore"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(FontAwesomeIcons.cartShopping,
              size: 20,
            ),
            title: const Text("Cart"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(FontAwesomeIcons.solidHeart,
              size: 20,
            ),
            title: const Text("Favourite"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(FontAwesomeIcons.solidUser,
              size: 20,
            ),
            title: const Text("Account"),
          ),
        ],

      ),

    );
  }
}
