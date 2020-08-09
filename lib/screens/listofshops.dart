import 'package:flutter/cupertino.dart';
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

    Widget BarrilFusion()
    {
      return ListTile(
        onTap: ()
        {
//          Navigator.push(context,
//            MaterialPageRoute(builder: (context) => ProductDetailsScreen()),);
        },
        leading: Image(
          image: AssetImage('images/barril.png'),
        ),
        title: Text('The Barril Fusion',
          style: TextStyle(
              fontSize: 13.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Text('12pm - 7pm', style: TextStyle(
            fontFamily: 'SFProDisplay', fontSize: 12.0
        ),),
        trailing: Text('Outstanding',
          style: TextStyle(
              fontSize: 13.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.amber
          ),
        ),
      );
    }

    Widget ElManaDelivery()
    {
      return ListTile(
        onTap: ()
        {
//          Navigator.push(context,
//            MaterialPageRoute(builder: (context) => ProductDetailsScreen()),);
        },
        leading: Image(
          image: AssetImage('images/elmana.png'),
        ),
        title: Text('El Mana - Delivery',
          style: TextStyle(
              fontSize: 13.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Text('12pm - 7pm', style: TextStyle(
            fontFamily: 'SFProDisplay', fontSize: 12.0
        ),),
        trailing: Text('Outstanding',
          style: TextStyle(
              fontSize: 13.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.amber
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[-100],
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

//          Align(
//              alignment: Alignment.center,
//              child: Padding(
//                padding: const EdgeInsets.all(20),
//                child: Image(image: AssetImage('images/logo.png'), height: 100,),
//              )),

          SizedBox(height: 40,),

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

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Icon(Icons.restaurant, color: Colors.white,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text('Restaurants', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
                          ),),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Image(image: AssetImage("images/store.png"), height: 25)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text('Stores', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
                          ),),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Image(image: AssetImage("images/pharmacy.png"), height: 25)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text('Pharmacy', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
                          ),),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Image(image: AssetImage("images/marketsicon.png"),height: 25)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text('Markets', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
                          ),),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Image(image: AssetImage("images/hardwareicon.png"), height: 25,)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text('Hardware Store', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
                          ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          Column(
            children: <Widget>[
              BarrilFusion(),
              Padding(
                padding: const EdgeInsets.only(left: 90, right: 15),
                child: Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.red, size: 20,),
                    Text('  5', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0
                    ),),
                    SizedBox(width: 15,),
                    Icon(Icons.access_time, color: Colors.grey, size: 20,),
                    Text('  30 MINS', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0
                    ),),
                    SizedBox(width: 15,),
                    Icon(Icons.account_balance_wallet, color: Colors.grey, size: 20,),
                    Text('  S/5 Para dos', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0
                    ),),

                  ],
                ),
              ),
            ],
          ),

          Column(
            children: <Widget>[
              ElManaDelivery(),
              Padding(
                padding: const EdgeInsets.only(left: 90, right: 15),
                child: Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.red, size: 20,),
                    Text('  5', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0
                    ),),
                    SizedBox(width: 15,),
                    Icon(Icons.access_time, color: Colors.grey, size: 20,),
                    Text('  30 MINS', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0
                    ),),
                    SizedBox(width: 15,),
                    Icon(Icons.account_balance_wallet, color: Colors.grey, size: 20,),
                    Text('  S/5 Para dos', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0
                    ),),

                  ],
                ),
              ),
            ],
          ),

          Column(
            children: <Widget>[
              BarrilFusion(),
              Padding(
                padding: const EdgeInsets.only(left: 90, right: 15),
                child: Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.red, size: 20,),
                    Text('  5', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0
                    ),),
                    SizedBox(width: 15,),
                    Icon(Icons.access_time, color: Colors.grey, size: 20,),
                    Text('  30 MINS', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0
                    ),),
                    SizedBox(width: 15,),
                    Icon(Icons.account_balance_wallet, color: Colors.grey, size: 20,),
                    Text('  S/5 Para dos', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0
                    ),),

                  ],
                ),
              ),
            ],
          ),



        ],
      ),
    );
  }
}
