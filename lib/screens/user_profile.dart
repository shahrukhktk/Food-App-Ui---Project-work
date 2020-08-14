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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Fawad Ahmed Malik', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black, letterSpacing: 1.5
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '+51234569872 . malikfawad003@gmail.com', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey, letterSpacing: 1.0
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 10, thickness: 2, color: Colors.black,
            ),
          ),

          SizedBox(height: 20,),

          //My Account Portion
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 08.0, bottom: 10.0),
                child: Text(
                  'My account', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 0.5
                ),
                ),
              ),
              Icon(Icons.keyboard_arrow_up),
            ],
          ),

          Divider(
            height: 1, thickness: 1, color: Colors.grey,
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Manage address', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey, letterSpacing: 0.5
            ),
            ),
            trailing: Icon(Icons.chevron_right),
          ),

          Divider(
            height: 1, thickness: 1, color: Colors.grey,
          ),

          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(
              'My Orders', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey, letterSpacing: 0.5
            ),
            ),
            trailing: Icon(Icons.chevron_right),
          ),

          Divider(
            height: 1, thickness: 1, color: Colors.grey,
          ),

          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text(
              'Wallet', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey, letterSpacing: 0.5
            ),
            ),
            trailing: Icon(Icons.chevron_right),
          ),

          Divider(
            height: 1, thickness: 1, color: Colors.grey,
          ),

          SizedBox(height: 20,),

          //Help & FAQ Portion
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 08.0, bottom: 10.0),
                child: Text(
                  'Help and FAQ', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 0.5
                ),
                ),
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),

          Divider(
            height: 1, thickness: 1, color: Colors.grey,
          ),

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sign Off', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.red, letterSpacing: 0.5
                ),
                ),

                Icon(Icons.power_settings_new, color: Colors.red,),

              ],
            ),
          )
          
        ],
      ),
    );
  }
}
