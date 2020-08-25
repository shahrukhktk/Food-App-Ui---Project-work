import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/screens/CartScreens/order_cart.dart';

import 'CartScreens/cart_payment.dart';
import 'Constants/constant.dart';

class ViewProductDetails extends StatefulWidget {
  @override
  _ViewProductDetailsState createState() => _ViewProductDetailsState();
}

class _ViewProductDetailsState extends State<ViewProductDetails> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[

          Stack(
            children: <Widget>[
              Image(image: AssetImage('images/ensalada_header.png'), fit: BoxFit.cover,),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Image(image: AssetImage('images/ic_cross.png'),),
                      ),

                    ],
                  ),
                ),
                bottom: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 310.0, top: 90),
                child: Image(image: AssetImage('images/ic_zoom.png'),),
              ),
            ],
          ),

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Text(
                  'Ensalada de nachos', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),),

                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: Text(
                    '€10.70', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
                  ),),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Nachos de maiz con queso cheddar, ensalada de pico de gallo, pimientos jalapenos, nata agria guacamole y salsa mejicana', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.grey,
            ),),
          ),

          SizedBox(
            height: 30,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.customGreyColor
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 100, right: 100, bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Icon(Icons.remove_circle_outline, color: AppColors.themeColor,),
                  ),
                  Text('1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.black),),
                  Center(
                    child: Icon(Icons.add_circle_outline, color: AppColors.themeColor,),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 250,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.customGreyColor
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: SizedBox(
                width: 400.0,
                height: 50.0,
                child: new RaisedButton(
                  color: AppColors.themeColor,
                  child: new Text('Add Item', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white,
                  ),),
                  onPressed: ()
                  {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderCart()),);
                  },
                ),
              ),
            ),
          ),

          
        ],
      ),
    );
  }
}
