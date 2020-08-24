import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/signup.dart';
import 'package:foodapp_ui/screens/Constants/constant.dart';
import 'package:foodapp_ui/screens/order_confirmation.dart';
import 'package:foodapp_ui/screens/viewproduct_details.dart';

import 'cart_payment.dart';

class OrderCart extends StatefulWidget {
  @override
  _OrderCartsState createState() => _OrderCartsState();
}

class _OrderCartsState extends State<OrderCart> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[

          SizedBox(height: 40,),

          //top title bar
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.keyboard_backspace, size: 30, color: AppColors.themeColor)),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My Basket', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black,
                      ),),

                      Text(
                        'Entrepanes', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey,
                      ),),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.delete, size: 30, color: AppColors.themeColor)),
                ),

              ],
            ),
          ),

          Divider(
            thickness: 0.5,
            height: 10,
            color: Colors.grey,
          ),

          

          //Products In Cart
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0, bottom: 10.0),
            child: Text(
              'Products In Cart', style: TextStyle(
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

          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Row(
                      children: <Widget>[
                        Text(
                          'Inca Cola', style: TextStyle(
                            fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey, letterSpacing: 0.5
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Firewood', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 0.5
                          ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: <Widget>[

                          Text(
                            'Chicken', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 0.5
                          ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 8.0),
                            child: Text(
                              '1.5 Ltr,', style: TextStyle(
                                fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey, letterSpacing: 0.5
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Sweatbreads', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey, letterSpacing: 0.5
                      ),
                      ),
                    ),

                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 241, 241, 241)
                        ),
                        child: Center(
                          child: Icon(Icons.remove,),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text('1'),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 241, 241, 241)
                        ),
                        child: Center(
                          child: Icon(Icons.add,),
                        ),
                      ),
                    ),
                  ],
                ),

                Text(
                  'S/ 57.00', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black, letterSpacing: 0.5
                ),
                ),

              ],
            ),
          ),

          SizedBox(height: 10,),

          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Divider(
              thickness: 1, height: 10,
              color: Colors.grey,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Text(
              'Suggestion for business...', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.grey, letterSpacing: 0.5
            ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.bookmark, size: 25.0, color: Colors.black,),
            title: Text(
              'COUPON', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
            ),
            ),
            trailing: Icon(Icons.chevron_right, size: 30.0, color: Colors.black,),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Divider(
              thickness: 1, height: 10,
              color: Colors.grey,
            ),
          ),

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Text(
              'INVOICE DETAILS', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Total Products', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey,
                ),
                ),
                Text(
                  'S/ 57.00', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey,
                ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Divider(
              thickness: 1, height: 10,
              color: Colors.grey,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Shipping Cost', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey,
                ),
                ),
                Text(
                  'S/ 7.00', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey,
                ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Divider(
              thickness: 1, height: 10,
              color: Colors.grey,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Pay', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),
                ),
                Text(
                  'S/ 57.00', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text(
                        'DELIVER TO', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                      ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Av San Luis 781, San Luis 15021, Peru', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),
                        ),
                      ),
                      trailing: SizedBox(
                        height: 30,
                        width: 70,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'CHANGE', style: TextStyle(
                                fontFamily: 'SFProDisplay', fontSize: 10.0, fontWeight: FontWeight.w400, color: Colors.white,
                              ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                  child: new Text('SELECT PAYMENT METHOD', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                  ),),
                  onPressed: ()
                  {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPaymentScreen()),);
                  },
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
