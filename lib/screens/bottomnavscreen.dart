import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/screens/listofshops.dart';
import 'package:foodapp_ui/screens/viewproducts.dart';

class MainScreen extends StatefulWidget
{
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
{

  int _pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    final List<Widget> _bottomNavChilds = [
      ShopList(),
      ViewProducts(),
      ShopList(),
      ShopList(),
      ShopList(),
    ];

    //BottomNavigationBar
    CurvedNavigationBar bottomNav = new CurvedNavigationBar(key: _bottomNavigationKey,
      index: 0,
      height: 50.0,
      items: <Widget>[
        Icon(Icons.location_on, size: 30, color: Colors.white,),
        Icon(Icons.notifications, size: 30,  color: Colors.white,),
        Icon(Icons.search, size: 30,  color: Colors.white,),
        Icon(Icons.shopping_cart, size: 30,  color: Colors.white,),
        Icon(Icons.person, size: 30,  color: Colors.white,),
      ],
      color: Colors.red,
      buttonBackgroundColor: Colors.red,
      backgroundColor: Colors.white,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {
          _pageIndex = index;
        });
      },
    );

    return Scaffold(
      bottomNavigationBar: bottomNav,
      body: _bottomNavChilds[_pageIndex],
    );
  }
}