import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

          SizedBox(height: 30,),

          Text(
            'TROLLEY', style: TextStyle(
            fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black,
          ),),

          SizedBox(height: 40,),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image(
              image: AssetImage('images/emptycart.png'),
            )
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Your cart is empty', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
        ],
      ),
    );
  }
}
