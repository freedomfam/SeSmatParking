import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:projectkogin/signIn&signup/Login.dart';
import 'package:projectkogin/tem/Stack.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _email , _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
////////// ที่กรอก Email and Password //////////////////////////
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            new StakedIcon(),
            Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: new Text(
                        "Smart Parking",style: new TextStyle(
                          fontFamily: "WorkSansBold",
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 20.0,
                    ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:new TextFormField(
              validator: (input){
                if(input.isEmpty){
                  print('Email not font');
                }
              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email'
              ),
            ),
                     ),
                     Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: new TextFormField(
              validator: (input){
                if(input.length < 6){
                  print('You password needs to atleast 8 characters');
                }
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key),
                labelText: 'Password'
              ),
              obscureText: true,
            ),
                     ),
           
////////////////////////////////////////////////////////////////////
              new SizedBox(
            height: 20.0,
          ),
            new CupertinoButton(
              onPressed: signup,
              child: Text('Sign up'),
              color: Color(0xFF1E88E5),
            )

          ],
        ),
      ),
      );
  }
  void signup() async {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
         await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email,password: _password);
        
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),fullscreenDialog: true));
      }catch(e){
        print(e.message);
      }
     
    }

  }

}