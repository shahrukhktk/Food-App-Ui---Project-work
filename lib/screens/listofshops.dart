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
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderConfirmation()),);
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
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderConfirmation()),);
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

          SizedBox(height: 40,),

          //scrollable banners
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

          //tab bar
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

          //scrollable shops
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

          //Complete ViewHolder
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderConfirmation()),);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 120,
                width: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black26
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image(
                          image: AssetImage('images/barril.png'), height: 70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('The Barril Fusion', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black,
                ),),

                Text('12pm - 7pm', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Icon(Icons.access_time),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('30 MINS', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Icon(Icons.star, color: Colors.red,),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('5.0', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),

          SizedBox(height: 10,),

          //Complete ViewHolder
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 120,
              width: 200,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black26
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('images/elmana.png'), height: 70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('El Mana - Delivery', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black,
                ),),

                Text('12pm - 7pm', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Icon(Icons.access_time),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('30 MINS', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Icon(Icons.star, color: Colors.red,),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('5.0', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),

        ],
      ),
    );
  }
}
