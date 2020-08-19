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

    return Scaffold(
      backgroundColor: Colors.grey[-100],
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

          SizedBox(height: 30,),

          Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.chevron_left, size: 30,)),
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
