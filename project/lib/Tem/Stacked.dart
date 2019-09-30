import 'package:flutter/material.dart';

class StakedIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
              alignment: Alignment.center,
             children: <Widget>[
               new Container(
                 margin:  new EdgeInsets.only(right: 50.0,top: 1.0,left: 50.0),
                height: 50.0,
                width: 50.0,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(70.0),
                  color: Colors.lightBlue
                ),
                child: new Icon(Icons.local_parking,color: Colors.white,),
               ),
               new Container(
                 margin:  new EdgeInsets.only(top: 70.0,right: 50.0),
                height: 60.0,
                width: 60.0,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(70.0),
                  color: Colors.red
                ),
                child: new Icon(Icons.home,color: Colors.white,),
               ),
               new Container(
                 margin:  new EdgeInsets.only(top: 70.0,left: 50.0),
                height: 60.0,
                width: 60.0,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(70.0),
                  color: Colors.black
                ),
                child: new Icon(Icons.local_car_wash,color: Colors.white,),
               ),
             ],
            );
  }
}