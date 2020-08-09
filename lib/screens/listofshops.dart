import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/signup.dart';
import 'package:foodapp_ui/screens/order_confirmation.dart';

class ShopList extends StatefulWidget {
  @override
  _ShopListState createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[-100],
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

          SizedBox(height: 50,),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image(image: AssetImage('images/banner1.png'),),
                  Image(image: AssetImage('images/banner2.png'),),
                  Image(image: AssetImage('images/banner3.png'),),

                ],
              ),
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      height: 40,
                      width: 140,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 225, 225, 225),
                          borderRadius: BorderRadius.circular(25)
                          ),
                        child: Center(
                          child: Text('28 Business Near You', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black,
                          ),),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      height: 40,
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text('Delivery', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.white,
                          ),),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      height: 40,
                      width: 120,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 225, 225, 225),
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text('Store Clearance', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          

        ],
      ),
    );
  }
}
