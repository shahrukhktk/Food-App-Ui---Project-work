import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/signup.dart';
import 'package:foodapp_ui/screens/order_confirmation.dart';

class ViewProducts extends StatefulWidget {
  @override
  _ViewProductsState createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {

  @override
  Widget build(BuildContext context) {

    Widget Promotion1()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderConfirmation()),);
        },
        leading: Image(
          image: AssetImage('images/promo1.png'),
        ),
        title: Text('Promotion 1',
          style: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('05 Cortes de... Show more\nS/ 55.00', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 12.0
          ),),
        ),
        trailing: Icon(Icons.add)
      );
    }

    Widget Promotion2()
    {
      return ListTile(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderConfirmation()),);
        },
        leading: Image(
          image: AssetImage('images/promo2.png'),
        ),
        title: Text('Promotion 2',
          style: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('10 Cortes de... Show more\nS/ 155.00', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 12.0
          ),),
        ),
        trailing: Icon(Icons.add)
      );
    }

    Widget Menu1()
    {
      return ListTile(
          onTap: ()
          {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => OrderConfirmation()),);
          },
          leading: Image(
            image: AssetImage('images/promo1.png'),
          ),
          title: Text('Menu 1',
            style: TextStyle(
                fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('1/2 Maki a is... Show more\nS/ 15.00', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 12.0
            ),),
          ),
          trailing: Icon(Icons.add)
      );
    }

    Widget Menu2()
    {
      return ListTile(
          onTap: ()
          {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => OrderConfirmation()),);
          },
          leading: Image(
            image: AssetImage('images/promo2.png'),
          ),
          title: Text('Menu 2',
            style: TextStyle(
                fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('1/2 Maki a is... Show more\nS/ 20.00', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 12.0
            ),),
          ),
          trailing: Icon(Icons.add)
      );
    }

    Widget Package1()
    {
      return ListTile(
          onTap: ()
          {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => OrderConfirmation()),);
          },
          leading: Image(
            image: AssetImage('images/promo2.png'),
          ),
          title: Text('Package 1',
            style: TextStyle(
                fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay'
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('30 pcs. by Acevichado30...\nShow more\nS/ 260.00', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 12.0
            ),),
          ),
          trailing: Icon(Icons.add)
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[-100],
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

          SizedBox(height: 30,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.chevron_left, size: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ohashi - Lince', style: TextStyle(
                      fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black,
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        '30 MINS', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                      ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'RECOMMENDED', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,
            ),
            ),
          ),

          SingleChildScrollView(
            padding: EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/promotion1.png"),
                    ),
                    Positioned(
                      bottom: 18,
                      left: 20,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Promotion 1', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 1
                            ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'S/ 55.00  ', style: TextStyle(
                                      fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey, letterSpacing: 1
                                  ),
                                  ),
                                  Text(
                                    'Personalizable', style: TextStyle(
                                      fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.orange, letterSpacing: 1
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    height: 30,
                                    width: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 241, 241, 241)
                                      ),
                                      child: Center(
                                        child: Icon(Icons.remove,),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  SizedBox(
                                    height: 30,
                                    width: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white
                                      ),
                                      child: Center(
                                        child: Icon(Icons.add,),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/promotion2.png"),
                    ),
                    Positioned(
                      bottom: 18,
                      left: 20,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Promotion 2', style: TextStyle(
                                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 1
                            ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'S/ 115.00  ', style: TextStyle(
                                      fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey, letterSpacing: 1
                                  ),
                                  ),
                                  Text(
                                    'Personalizable', style: TextStyle(
                                      fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.orange, letterSpacing: 1
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    height: 30,
                                    width: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 241, 241, 241)
                                      ),
                                      child: Center(
                                        child: Icon(Icons.remove,),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  SizedBox(
                                    height: 30,
                                    width: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white
                                      ),
                                      child: Center(
                                        child: Icon(Icons.add,),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Promotions List
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
                child: Text(
                  'Promotions', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 0.5
                ),
                ),
              ),
              Icon(Icons.keyboard_arrow_up),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Divider(
              thickness: 1, height: 10,
              color: Colors.grey,
            ),
          ),

          Column(
            children: <Widget>[
              Promotion1(),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 15, top: 10),
                child: Text('Customizable', style: TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.deepOrange
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 110, right: 15, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Recommended', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Popular', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('New', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 15, top: 10),
                child: Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
              ),

            ],
          ),

          SizedBox(height: 10,),

          Column(
            children: <Widget>[
              Promotion2(),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 15, top: 10),
                child: Text('Customizable', style: TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.deepOrange
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 110, right: 15, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Recommended', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Popular', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('New', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 15, top: 10),
                child: Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
              ),

            ],
          ),

          SizedBox(height: 20,),

          //Menu List
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
                child: Text(
                  'Menu', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 0.5
                ),
                ),
              ),
              Icon(Icons.keyboard_arrow_up),
            ],
          ),

          Column(
            children: <Widget>[
              Menu1(),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 15, top: 10),
                child: Text('Customizable', style: TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.deepOrange
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 110, right: 15, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Recommended', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Popular', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('New', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 15, top: 10),
                child: Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
              ),

            ],
          ),

          SizedBox(height: 10,),

          Column(
            children: <Widget>[
              Menu2(),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 15, top: 10),
                child: Text('Customizable', style: TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.deepOrange
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 110, right: 15, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Recommended', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Popular', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('New', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 15, top: 10),
                child: Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
              ),

            ],
          ),

          SizedBox(height: 20,),

          //[Package] List
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
                child: Text(
                  'Package', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 0.5
                ),
                ),
              ),
              Icon(Icons.keyboard_arrow_up),
            ],
          ),

          Column(
            children: <Widget>[
              Package1(),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 15, top: 10),
                child: Text('Customizable', style: TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w600, fontFamily: 'SFProDisplay', color: Colors.deepOrange
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 110, right: 15, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Recommended', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('Popular', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: Text('New', style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.normal, fontFamily: 'SFProDisplay', color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 15, top: 10),
                child: Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.grey,
                ),
              ),

            ],
          ),


        ],
      ),
    );
  }
}
