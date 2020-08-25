import 'package:flutter/material.dart';

class ViewRestaurant extends StatefulWidget {
  @override
  _ViewRestaurantState createState() => _ViewRestaurantState();
}

class _ViewRestaurantState extends State<ViewRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(image: AssetImage('images/restaurant_header.png'), fit: BoxFit.cover,),
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
                        child: Image(image: AssetImage('images/ic_goback.png'),),
                      ),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 150.0),
                          child: Image(image: AssetImage('images/ic_share.png'),),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Image(image: AssetImage('images/ic_search.png'),),
                      ),

                    ],
                  ),
                ),
                top: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
