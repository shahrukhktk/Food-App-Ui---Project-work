import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/signup.dart';
import 'package:foodapp_ui/screens/CartScreens/order_cart.dart';
import 'package:foodapp_ui/screens/Constants/constant.dart';
import 'package:foodapp_ui/screens/order_confirmation.dart';
import 'package:foodapp_ui/screens/viewproduct_details.dart';

class ViewProducts extends StatefulWidget {
  @override
  _ViewProductsState createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {

  @override
  Widget build(BuildContext context) {

    Widget Ensalada()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ViewProductDetails()),);
        },
        title: Text('Ensalada de nachos',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Nachos de maiz con queso cheddar, ensalada de pico de galllo, pimientos ja...', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
            image: AssetImage('images/ensalada_de_cos.png'),),
      );
    }

    Widget Empanadella_pistos()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ViewProductDetails()),);
        },
        title: Text('Empanadillas de pisto 12cm',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
          image: AssetImage('images/empanadellas_pisto.png'),),
      );
    }

    Widget Empanadella_atun()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ViewProductDetails()),);
        },
        title: Text('Empanadillas de atun 12cm',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text('', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
          image: AssetImage('images/empanadellas_atun.png'),),
      );
    }

    Widget Croquetes_Polo()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ViewProductDetails()),);
        },
        title: Text('Croquetas de pollo, 4 Unidades',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
          image: AssetImage('images/croquetes_pollo.png'),),
      );
    }

    Widget Croquetes_Maiz()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ViewProductDetails()),);
        },
        title: Text('Croquetas de maiz, 6 unidades',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
          image: AssetImage('images/croquetes_maiz.png'),),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[

          Stack(
            children: <Widget>[
              Image(image: AssetImage('images/entrepanes.png'), fit: BoxFit.cover,),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.arrow_back, size: 30, color: Colors.white,),
                      Text('Entrepanes', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white,
                      ),),

                      Padding(
                        padding: const EdgeInsets.only(left: 190.0),
                        child: Icon(Icons.search, size: 30, color: Colors.white,),
                      ),

                    ],
                  ),
                ),
                bottom: 80,
              ),
            ],
          ),

          SizedBox(height: 10,),

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
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text('Entrantes', style: TextStyle(
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
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.customGreyColor,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text('Ensaladas', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: AppColors.themeColor,
                          ),),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      height: 40,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.customGreyColor,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text('Mejicanos', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: AppColors.themeColor,
                          ),),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      height: 40,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.customGreyColor,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text('Pizzas', style: TextStyle(
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

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
            child: Text(
              'Entrantes', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black, letterSpacing: 0.5
            ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only( bottom: 10.0),
            child: Divider(
              thickness: 1, height: 10,
              color: Colors.grey,
            ),
          ),


          Column(
            children: <Widget>[
              Ensalada(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text("‎€11.70", style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.grey
                    ),),

                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),

          //Poke pulpo, salmon mostaza
          Column(
            children: <Widget>[
              Empanadella_pistos(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top:0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text("‎€11.70", style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.grey
                    ),),

                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),

          //Poke pez
          Column(
            children: <Widget>[
              Empanadella_atun(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text("‎€11.70", style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.grey
                    ),),

                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),

          //Pokeatun
          Column(
            children: <Widget>[
              Croquetes_Polo(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text("‎€11.70", style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.grey
                    ),),


                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),

          //Pokegambus
          Column(
            children: <Widget>[
              Croquetes_Maiz(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text("‎€11.70", style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.grey
                    ),),

                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),


        ],
      ),
    );
  }
}
