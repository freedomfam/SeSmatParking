
// import package ที่ต้องใช้เกี่ยวกับ firebase ซึ่งตัวนี้จะเรียก ข้อมูล การลงทะเบียนเป็น email
import 'package:firebase_auth/firebase_auth.dart'; 
/////

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectkogin/Page/home.dart';
import 'package:projectkogin/signIn&signup/register.dart';
import 'package:projectkogin/tem/Stack.dart';
class LoginPage extends StatefulWidget {
  
  _LoginPageState createState() => new _LoginPageState();
  }

class _LoginPageState extends State<LoginPage> {
  
  String _email , _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn'),
         elevation: 0.0,
          backgroundColor: Colors.transparent,
         iconTheme: new IconThemeData(color: Colors.blue[800]),
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
            child: new TextFormField(
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
          new Row(
              children: <Widget>[
            Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 10.0,top: 10.0),
                  child: new Container(
                    alignment: Alignment.center,
                 
                  decoration: new BoxDecoration(
                    color: Color(0xFF1E88E5),borderRadius: new BorderRadius.circular(10),
                    
                  ),
            child: new CupertinoButton(
              
              onPressed: signIn,
              child: Text('SignIn',style: 
               new TextStyle(fontSize: 17.0,
              fontFamily: "WorkSAnsSemiBold",
              color: Colors.white),
              ),
            ),
                  )
                  )
                  ),      
  Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 10.0,top: 10.0),
                  child: new Container(
                    alignment: Alignment.center,
                  
                 decoration: new BoxDecoration(
                    color: Color(0xFF76FF03),borderRadius: new BorderRadius.circular(10),
                    
                  ),
                  
            child: new CupertinoButton(
              onPressed: signup,
              child: Text('SignUp',style: 
               new TextStyle(fontSize: 16.0,
              fontFamily: "WorkSAnsSemiBold",
              color: Colors.white),
              
            ),
            
            )
            )
            ),

  )],
        )]),
      ),
      );
  }
  //// ฟังก์ชันนี้ คือ ฟังก์ชัน เอาไว้เชคว่า ใน database ของ firebase นั้นมี email อยู่หรือไม่ท่าไม่มี จะไม่สามารถ login ได้ 
  void signIn() async {
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email,password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),fullscreenDialog: true));
      }catch(e){
        print(e.message);
      }
     
    }







  }
  void signup(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  
}