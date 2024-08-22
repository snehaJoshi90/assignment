import 'package:assignment/screens/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:assignment/screens/explore_screen.dart';
import 'package:assignment/screens/shop/shop_screen.dart';
import 'package:assignment/screens/favourite_screen.dart';
import 'package:assignment/screens/cart_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOPtions = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOPtions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFF181725),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/shop.png',
              height: 24,
              width: 24,
            ),
            activeIcon: Image.asset(
              'assets/shop.png',
              height: 24,
              width: 24,
              color: Color(0xFF53B175),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/explor.png',
              height: 24,
              width: 24,
            ),
            activeIcon: Image.asset(
              'assets/explor.png',
              height: 24,
              width: 24,
              color: Color(0xFF53B175),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/cart.png',
              height: 24,
              width: 24,
            ),
            activeIcon: Image.asset(
              'assets/cart.png',
              height: 24,
              width: 24,
              color: Color(0xFF53B175),
            ),
            label: 'Cart',
            // backgroundColor: Color(0xfffd9d58)
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/favourite.png',
              height: 24,
              width: 24,
            ),
            activeIcon: Image.asset(
              'assets/favourite.png',
              height: 24,
              width: 24,
              color: Color(0xFF53B175),
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/account.png',
              height: 24,
              width: 24,
            ),
            activeIcon: Image.asset(
              'assets/account.png',
              height: 24,
              width: 24,
              color: Color(0xFF53B175),
            ),
            label: 'Account',
          )
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF53B175),
        iconSize: 40,
        onTap: (int index) {
          switch (index) {
            case 0:
              ShopScreen();
            case 1:
              ExploreScreen();
            case 2:
              CartScreen();
            case 3:
              FavouriteScreen();
            case 4:
              AccountScreen();
          }
          setState(() {
            _selectedIndex = index;
          });
        },
        elevation: 5,
      ),
    );
  }
}
