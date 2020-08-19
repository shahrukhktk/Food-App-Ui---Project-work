import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/login.dart';
import 'package:foodapp_ui/screens/viewproducts.dart';


import 'authentication/signup.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.white,
    fontFamily: "SFProDisplay",
  ),
  debugShowCheckedModeBanner: false,
  home: ViewProducts(),
));