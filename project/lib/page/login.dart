import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/page/homeVIP.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String message;

  var _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My First App'),
      // ),
      body: Container(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Image.asset(
                'images/logo.png', 
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: TextField(
                  style: Theme.of(context).textTheme.headline,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(labelText: 'Username'),
                  controller: _usernameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                child: TextField(
                  style: Theme.of(context).textTheme.headline,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Login'),
                    onPressed: () {
                      print('This is Login button');
                      message = _usernameController.text;
                      Navigator.pushNamed(context, '/homevip-page', arguments: _usernameController.text);
                    },
                  ),
                  RaisedButton(
                    child: Text('Register'), 
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeVIP()));
                    },
                  ),
                ],
              ),
              Center(
                child: Text('2019 \u00a9 Chutipong Saengchai'),
              ),
              (message != null) ? Text(message) : Container(),
            ],
          ),
        ),
      ), 
    );
  }
}