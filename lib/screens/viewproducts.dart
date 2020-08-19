import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/signup.dart';
import 'package:foodapp_ui/screens/CartScreens/order_cart.dart';
import 'package:foodapp_ui/screens/order_confirmation.dart';
import 'package:foodapp_ui/screens/viewproduct_details.dart';

class ViewProducts extends StatefulWidget {
  @override
  _ViewProductsState createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {

  @override
  Widget build(BuildContext context) {

    Widget PokeSalmon()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderCart()),);
        },
        title: Text('Poke Salmon',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Salmon, suja duice, aguacate, pepino, edamame, zanahoria, alga wakame, ce...', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
            image: AssetImage('images/promo1.png'),),
      );
    }

    Widget PokePulpo()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderCart()),);
        },
        title: Text('Poke pulpo, salmon mostaza',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Salmon, pulpo, majo mostaza, agucate, edamame, alga wakame, pepino, pina, ...', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
          image: AssetImage('images/promo2.png'),),
      );
    }

    Widget PokePez()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderCart()),);
        },
        title: Text('Poke pez mantequilla',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Pez mantequilla trufado, soja, aguacate, edamame, algas wakame, pepino, zan...', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
          image: AssetImage('images/promo1.png'),),
      );
    }

    Widget Pokeatun()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderCart()),);
        },
        title: Text('Poke atun',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Atun, salsa kimuchi picante, agucate, edamame, alga wakame, pepino, ceboi...', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
          image: AssetImage('images/promo2.png'),),
      );
    }

    Widget Pokegambus()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderCart()),);
        },
        title: Text('Poke gambas, huevo duro',
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Gambas, heuvo duro, salsa cremosa, aguacate, edamame, pina, pepino, zan...', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0
          ),),
        ),
        trailing: Image(
          image: AssetImage('images/promo1.png'),),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[-100],
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[

          Stack(
            children: <Widget>[
              Image(image: AssetImage('images/pokesalad.png'), fit: BoxFit.cover,),
              Positioned(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.chevron_left, size: 30, color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('Crudo - Pokes & Salads', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white,
                      ),),
                    ),
                  ],
                ),
                bottom: 10,
              ),
            ],
          ),

          SizedBox(height: 30,),

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
                            color: Color.fromARGB(255, 225, 225, 225),
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text('Pokes', style: TextStyle(
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
                      width: 120,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 225, 225, 225),
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text('Crea tu poke bowl', style: TextStyle(
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

          //Promotions List
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
            child: Text(
              'Pokes', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 0.5
            ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Divider(
              thickness: 1, height: 10,
              color: Colors.grey,
            ),
          ),

          //Poke Salmon
          Column(
            children: <Widget>[
              PokeSalmon(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text("‎€11.70", style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.grey
                    ),),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Popular', style: TextStyle(
                          fontSize: 13.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.orange
                      ),),
                    ),

                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),

          //Poke pulpo, salmon mostaza
          Column(
            children: <Widget>[
              PokePulpo(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
              PokePez(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
              Pokeatun(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text("‎€11.70", style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.grey
                    ),),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Popular', style: TextStyle(
                          fontSize: 13.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.orange
                      ),),
                    ),

                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),

          //Pokegambus
          Column(
            children: <Widget>[
              Pokegambus(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
              PokePez(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
              Pokeatun(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text("‎€11.70", style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.grey
                    ),),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Popular', style: TextStyle(
                          fontSize: 13.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.orange
                      ),),
                    ),

                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),

          //Pokegambus
          Column(
            children: <Widget>[
              Pokegambus(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
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

          SizedBox(height: 20,),



        ],
      ),
    );
  }
}
