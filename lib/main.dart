import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/login.dart';
import 'package:foodapp_ui/screens/CartScreens/order_cart.dart';
import 'package:foodapp_ui/screens/Constants/constant.dart';
import 'package:foodapp_ui/screens/listofshops.dart';
import 'package:foodapp_ui/screens/viewproducts.dart';


import 'authentication/signup.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: AppColors.themeColor,
    accentColor: Colors.white,
    fontFamily: "SFProDisplay",
  ),
  debugShowCheckedModeBanner: false,
  home: ShopList(),
));