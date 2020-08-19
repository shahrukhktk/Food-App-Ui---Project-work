import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCancellation extends StatefulWidget {
  @override
  _OrderCancellationState createState() => _OrderCancellationState();
}

class _OrderCancellationState extends State<OrderCancellation> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

          SizedBox(height: 30,),

          Row(
            children: <Widget>[
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.chevron_left, size: 30,)),
              ),

              Text(
                'MY ORDERS', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),

            ],
          ),

          SizedBox(height: 20,),

          //Order Cancellation Card
          SizedBox(
            height: 250,
            width: 200,
            child: Card(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white30
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          SizedBox(
                            height: 40,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 241, 241, 241),
                              ),
                              child: Center(
                                child: Text('Order Placed'),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 40,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 241, 241, 241),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Tracing  ', style: TextStyle(
                                      color: Colors.green, fontWeight: FontWeight.w500
                                    ),),
                                    Icon(Icons.radio_button_checked, color: Colors.green,)
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Text('OD-08-07-Y6W3-XOR9MKRLJ  ', style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w600, fontSize: 13.0
                          ),),

                          Text('10 hours ago  ', style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 13.0
                          ),),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Divider(
                        thickness: 1,
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),

                    ListTile(
                      leading: SizedBox(
                        height: 35,
                        width: 35,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 241, 241, 241),
                          ),
                          child: Center(
                            child: Text('x4'),
                          ),
                        ),
                      ),
                      title: Text(
                        'Rotisserie chicken', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
                      ),),
                      trailing: Text(
                        'S/ 57.00', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
                      ),),
                    ),

                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Text(
                          'S/ 64.00', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                        ),),
                      ),
                    ),

                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 12.0),
                        child: SizedBox(
                          height: 30,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Cancel Order', style: TextStyle(
                                  fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.white,
                                ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
