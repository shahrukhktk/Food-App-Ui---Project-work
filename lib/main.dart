import 'package:flutter/material.dart';
import 'package:foodapp_ui/screens/bottomnavscreen.dart';
import 'package:foodapp_ui/screens/listofshops.dart';

import 'authentication/signup.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.white,
    fontFamily: "SFProDisplay",
  ),
  debugShowCheckedModeBanner: false,
  home: MainScreen(),
));