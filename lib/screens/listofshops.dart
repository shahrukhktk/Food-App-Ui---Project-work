import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/signup.dart';
import 'package:foodapp_ui/screens/order_confirmation.dart';

import 'Constants/constant.dart';

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
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[

          SizedBox(height: 40,),

          //top title bar
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image(image: AssetImage('images/delivery_person.png'),))
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Now', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.w500, color: Colors.grey,
                      ),),

                      Row(
                        children: <Widget>[
                          Text(
                            'Selected location', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                          ),),

                          Icon(Icons.keyboard_arrow_down, color: AppColors.themeColor,),

                        ],
                      ),

                    ],
                  ),
                ),

                Image(image: AssetImage('images/ic_user.png'),),

              ],
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
                      height: 30,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.themeColor,
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
                      height: 30,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.customGreyColor,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text('Pickup', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: AppColors.themeColor,
                          ),),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          Divider(
            thickness: 1,
            height: 10,
            color: Colors.grey,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '96 restaurants', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
            ),),
          ),

          //Entrpanes start
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              children: <Widget>[
                Image(image: AssetImage('images/entrepanes.png'),),
                Positioned(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 230),
                        child: SizedBox(
                          height: 30,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text('€1.90 delivery', style: TextStyle(
                                fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black,
                              ),),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 230.0, top: 40.0, right: 20),
                        child: SizedBox(
                          height: 60,
                          width: 120,
                          child: Card(
                            elevation: 1.5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Around', style: TextStyle(
                                    fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                                  ),),

                                  Text('35 min', style: TextStyle(
                                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,
                                  ),),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),

            child: Text('Entrepanes', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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

                      Icon(Icons.star, color: AppColors.themeColor,),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('4.4 Very Good', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: AppColors.themeColor,
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('(50+) . Pizza . Sandwiches . Burgers', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 22.0, top: 5),
            child: Text('1.2km away . €1.90 delivery', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
            ),),
          ),

          //Entrepanes end

          SizedBox(height: 10,),

          //Rawcoco start
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              children: <Widget>[
                Image(image: AssetImage('images/rawcoco.png'),),
                Positioned(
                  child: Column(
                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 230),
//                        child: SizedBox(
//                          height: 30,
//                          width: 100,
//                          child: Container(
//                            decoration: BoxDecoration(
//                                color: Colors.white,
//                                borderRadius: BorderRadius.circular(5)
//                            ),
//                            child: Center(
//                              child: Text('€1.90 delivery', style: TextStyle(
//                                fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black,
//                              ),),
//                            ),
//                          ),
//                        ),
//                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 160.0, top: 80.0, right: 20),
                        child: SizedBox(
                          height: 60,
                          width: 200,
                          child: Card(
                            elevation: 1.5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Pre-order', style: TextStyle(
                                    fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                                  ),),

                                  Text('09:15 - 09:45', style: TextStyle(
                                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,
                                  ),),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),

            child: Text('Rawcoco', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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

                      Icon(Icons.star, color: AppColors.themeColor,),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('4.6 Excellent', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: AppColors.themeColor,
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('(50+) . Salads . Breakfast . Healthy', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 22.0, top: 5),
            child: Text('3.2km away . €2.99 delivery', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
            ),),
          ),

          //Rawcoco end

          SizedBox(height: 10,),



        ],
      ),
    );
  }
}
