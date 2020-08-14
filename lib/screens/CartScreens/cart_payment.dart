import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPaymentScreen extends StatefulWidget {
  @override
  _CartPaymentScreenState createState() => _CartPaymentScreenState();
}

class _CartPaymentScreenState extends State<CartPaymentScreen> {

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
                  child: Icon(Icons.chevron_left, size: 30,),
              ),

              Text(
                'PAYMENT', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),

            ],
          ),

          SizedBox(height: 40,),

          SizedBox(
            height: 50,
            width: 200,
            child: Card(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white30
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Pager', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.grey,
                      ),),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'S/ 64.00', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.red,
                        ),),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Text(
                'Select your preferred payment method', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.grey,
              ),),
            ),
          ),

          SizedBox(height: 15,),

          //Cash Card
          SizedBox(
            height: 100,
            width: 200,
            child: Card(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white30
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Cash', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black,
                          ),),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'To the office', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.grey,
                            ),),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image(
                        image: AssetImage('images/cash.png'), height: 35,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),

          //Stripe Card
          SizedBox(
            height: 100,
            width: 200,
            child: Card(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white30
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Visa o Mastercard', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black,
                          ),),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Pay online', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.grey,
                            ),),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image(
                        image: AssetImage('images/stripe.png'), height: 20,
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
