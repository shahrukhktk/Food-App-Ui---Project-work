import 'package:flutter/material.dart';
import 'package:foodapp_ui/screens/Constants/constant.dart';

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

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Entrepanes', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Pizza . Sandwiches . Burgers', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Icon(Icons.location_on),

                Text(
                  '1.15km away . Calle Hilarion Eslava, 32 .', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey,
                ),),

                Text(
                  'View map', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w400, color: AppColors.themeColor,
                ),),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'Disfruta de la experiencia Entrepanes y experimenta la variedad de sabores que este restaurante te ofrece. No podras decidirte por uno solo.', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Icon(Icons.star, color: AppColors.themeColor,),
                Icon(Icons.star, color: AppColors.themeColor,),
                Icon(Icons.star, color: AppColors.themeColor,),
                Icon(Icons.star, color: AppColors.themeColor,),
                Icon(Icons.star, color: AppColors.themeColor,),

                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    '4.4 ', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.black,
                  ),),
                ),

                Text(
                  '(50+)', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey,
                ),),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'Show rating details', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w400, color: AppColors.themeColor,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.motorcycle),
              title: Text(
                'Delivered by Entrepanes', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Just so you know, you'll get an ETA for delivery but you won't be able to track your rider", style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image(image: AssetImage("images/delivery_person.png"),),
              title: Text(
                'Delivered in around 35 min', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.info_outline),
              title: Text(
                'Restaurant info', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Allergens and more", style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),),
              ),
            ),
          ),

          SizedBox(
            height: 100,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.customGreyColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.restaurant, size: 20, color: Colors.grey,),
                        Text(
                          " En este restaurante el pedido minimo recomendado", style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "son €15 ", style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),
                        Icon(Icons.restaurant, size: 20, color: Colors.grey,),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
