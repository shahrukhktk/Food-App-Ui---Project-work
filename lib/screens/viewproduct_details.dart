import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/signup.dart';
import 'package:foodapp_ui/screens/order_confirmation.dart';

class ViewProductDetails extends StatefulWidget {
  @override
  _ViewProductDetailsState createState() => _ViewProductDetailsState();
}

class _ViewProductDetailsState extends State<ViewProductDetails> {

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

          Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.chevron_left, size: 30,),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image(
              image: AssetImage('images/product_view.png'),
            )
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Paquete', style: TextStyle(
                      fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                    ),),

                    SizedBox(height: 05,),

                    Text(
                      'S/140.00', style: TextStyle(
                      fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                    ),),

                    SizedBox(height: 05,),

                  ],
                ),

                Row(
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

              ],
            ),
          ),

          //Tags
          Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 12.0),
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
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '20 Unid. de Acevichado', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black,
              ),),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '20 Unid. de Emperador', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '20 Unid. de Naruto Roll', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '20 Unid. de Shake Roll', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black,
            ),),
          ),
          
        ],
      ),
    );
  }
}
