import 'package:flutter/material.dart';
import 'package:foodapp_ui/authentication/signup.dart';
import 'package:foodapp_ui/screens/order_confirmation.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {

    final emailTextForm = TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hoverColor: Colors.red,
          focusColor: Colors.red,
          labelText: "Email",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.alternate_email, color: Colors.red),
          fillColor: Colors.red,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        )
    );

    final passwordTextForm = TextFormField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          hoverColor: Colors.red,
          focusColor: Colors.red,
          labelText: "Password",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.lock_open, color: Colors.red),
          fillColor:Colors.red,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        )
    );

    final forgotPassword = FlatButton(
      onPressed: () {},
      child: Text('forgot password',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15.0,
          fontFamily: 'SFProDisplay',
          color: Colors.red,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

          SizedBox(height: 50,),

          Center(
            child: Text('LOGIN', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black,
            ),),
          ),

          SizedBox(height: 10,),

          Center(
            child: Text('enter your email & password', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey[600],
            ),),
          ),

          SizedBox(height: 10,),

          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image(image: AssetImage('images/logo.png'), height: 100,),
              )),

          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: emailTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: passwordTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: forgotPassword,
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: new RaisedButton(
                color: Colors.red,
                child: new Text('LOGIN', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                ),),
                onPressed: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderConfirmation()),);
                },
              ),
            ),
          ),

          SizedBox(height: 20,),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account yet?  ", textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.grey[700]
                ),),
                Text(
                  "Sign Up", textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.red
                ),),
              ],
            ),
          ),

          SizedBox(height: 20,),

          Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      "ENGLISH", textAlign: TextAlign.center, style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.red
                    ),),
                    onTap: ()
                    {
                      //TODO: ENGLISH LANGUAGE TRANSLATION
                    },
                  ),

                Container(
                  height: 20.0,
                  width: 1.0,
                  color: Colors.grey[700],
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),

                  GestureDetector(
                    child: Text(
                      "SPANISH", textAlign: TextAlign.center, style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.grey[700]
                    ),),
                    onTap: ()
                    {
                      //TODO: SPANISH LANGUAGE TRANSLATION
                    },
                  ),
                ],
              ),
            ),

        ],
      ),
    );
  }
}
