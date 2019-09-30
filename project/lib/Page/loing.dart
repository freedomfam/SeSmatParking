import 'package:flutter/material.dart';
import 'package:project/Page/signup.dart';
import 'package:project/Tem/Stacked.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0.0,
         iconTheme: new IconThemeData(color: Colors.blue[800]),
      ),
      body: Container(
        width: double.infinity,
              child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new StakedIcon(),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new Text(
                    "Smart Parking",style: new TextStyle(
                      fontFamily: "WorkSansBold",
                      fontSize: 30.0,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: new TextField(
                decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email"

                ),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: new TextField(
                obscureText: true, //ปิดพลาดให้เป็นตัว ******
                decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  labelText: "Password" 
                ),
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 10.0,top: 10.0),
                  child: new Container(
                    alignment: Alignment.center,
                  height: 60.0,
                  decoration: new BoxDecoration(
                    color: Color(0xFF76FF03),borderRadius: new BorderRadius.circular(10),
                    
                  ),
                  
                  child: new Text("Login",
                  style: new TextStyle(fontSize: 18.0,
                  fontFamily: "WorkSAnsSemiBold"),),
                  )
                  )
                  ),
                  Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 10.0,top: 10.0),
                  child: new Container(
                    alignment: Alignment.center,
                  height: 60.0,
                  
                  child: new Text("Forgot Password",
                  style: new TextStyle(fontSize: 18.0,
                  fontFamily: "WorkSAnsSemiBold",
                  color: Color(0xFF76FF03)),),
                  )
                  )
                  ),
              ],
            ),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ));
                    },
                  child: new Text("Create A New Account",
                  style: new TextStyle(fontSize: 18.0,
                  fontFamily: "WorkSAnsSemiBold",
                  color: Color(0xFF76FF03,)
                )
                ),
                )
                ),
              ],
            ),)


            
          ],
        ),
      ),
    );
  }
}