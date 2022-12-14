import 'package:flutter/material.dart';
import 'package:project/screen/cartscreen.dart';
import 'package:project/screen/homescreen.dart';
import 'package:project/screen/profilescreen.dart';
import 'package:project/screen/utils/mydefaults.dart';
import 'package:project/screen/wishlistscreen.dart';

import 'orderscreen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  Myconfig _myconfig = Myconfig();

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WishListScreen(),
    OrderScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 5,
        selectedLabelStyle: TextStyle(color: Colors.blue),
        selectedIconTheme: IconThemeData(color: _myconfig.fontcolor),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFFC0C5CA),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
              size: _myconfig.myIconSize * 0.85,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outlined,
                size: _myconfig.myIconSize * 0.85),
            label: 'Wish List',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.airport_shuttle, size: _myconfig.myIconSize * 0.85),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined,
                size: _myconfig.myIconSize * 0.85),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp, size: _myconfig.myIconSize * 0.85),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _myconfig.fontcolor,
        onTap: _onItemTapped,
      ),
    );
  }
}
