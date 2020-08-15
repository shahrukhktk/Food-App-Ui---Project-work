import 'package:flutter/material.dart';
import 'package:foodapp_ui/screens/bottomnavscreen.dart';
import 'package:foodapp_ui/screens/listofshops.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'map.dart';
import 'CartScreens/order_cart.dart';

class OrderConfirmation extends StatefulWidget {
  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {

  final CameraPosition initCameraPosition = CameraPosition(target: LatLng(44.500000, -89.500000),
    zoom: 12,);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          MapActivity(),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 250,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 30.0),
                      child: Text('# OR9MKRLJ', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.grey,
                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ListTile(
                        title: Text('Successful Order', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black,
                        ),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('Waiting for the business to confirm your order', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey,
                          ),),
                        ),
                        trailing: FloatingActionButton(
                          backgroundColor: Colors.green,
                          child: Icon(Icons.check, color: Colors.white,),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: SizedBox(
                          width: 300.0,
                          height: 50.0,
                          child: new RaisedButton(
                            color: Colors.green,
                            child: new Text('Update Order Status', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                            ),),
                            onPressed: ()
                            {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => ShopList()),);
                            },
                          ),
                        ),
                      ),
                    ),

                  ],
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
