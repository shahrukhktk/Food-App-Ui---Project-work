import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/signup.dart';
import 'package:foodapp_ui/custom_widgets/custom_switch_btn.dart';
import 'package:foodapp_ui/screens/Constants/constant.dart';
import 'package:foodapp_ui/screens/listofshops.dart';
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

    bool _enabled = true;

    void onChanged(bool val)
    {
      setState(() {
        _enabled = val;
      });
    }

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
                  padding: const EdgeInsets.only(right: 170.0),
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

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[

                Image(image: AssetImage("images/delivery_person.png"),),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Deliver in around 35 min', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black,
                      ),),

                      Text(
                        'Delivered by Entrepanes', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey,
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.customGreyColor
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Cutlery', style: TextStyle(
                      fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black,
                    ),),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Help us reduce plastic waste - only request\ncutlery when you need it.', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey,
                      ),),
                    ),

                  ],
                ),

                //TODO :- Add switch button here
                CustomSwitch(
                  value: _enabled,
                    onChanged:  onChanged
                ),

              ],
            ),
          ),

          SizedBox(
            height: 30,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.customGreyColor
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Order notes', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w500, color: AppColors.themeColor,
            ),),
          ),

          SizedBox(
            height: 70,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.customGreyColor
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                child: Text(
                  'Items', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '1x', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: AppColors.themeColor,
                ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 120.0),
                  child: Text(
                    'Ensalada de nachos', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
                  ),
                  ),
                ),

                Text(
                  '€10.70', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
                ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Subtotal', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),
                ),

                Text(
                  '€10.70', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Small order fee', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Icon(Icons.info_outline, color: Colors.grey,),
                ),

                Text(
                  '€4.30', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Delivery fee', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 180.0),
                  child: Icon(Icons.info_outline, color: Colors.grey,),
                ),

                Text(
                  '€1.90', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
                ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'How do our fees work?', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.normal, color: AppColors.themeColor,
            ),
            ),
          ),

          SizedBox(
            height: 30,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.customGreyColor
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Add voucher code', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.themeColor,
            ),
            ),
          ),

          SizedBox(
            height: 30,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.customGreyColor
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[


                  Text(
                    'Total', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
                  ),
                  ),

                Text(
                  '€16.90', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: SizedBox(
                width: 400.0,
                height: 50.0,
                child: new RaisedButton(
                  color: AppColors.themeColor,
                  child: new Text('Go to checkout', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                  ),),
                  onPressed: ()
                  {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderConfirmation()),);
//                    Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => CartPaymentScreen()),);
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
