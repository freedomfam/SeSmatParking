import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/BG3.jpg'),
                fit: BoxFit.cover
              ),
            ),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Image.asset(
                    'images/logo.png',
                    height: 250,
                    width: 250,
                  ),
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                        child: RichText(
                          text: TextSpan(
                            text:'โปรด',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ระวัง',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              TextSpan(
                                text: 'หากอยู่ระหว่างการขับขี่',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/home-page');
                          },
                          child: Text(
                            'แตะเพื่อไปยังหน้าหลัก',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ),

        ],
      ),
    );
  }
}