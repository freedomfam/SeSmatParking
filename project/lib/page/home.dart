import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/page/index.dart';
import 'package:project/page/homeVIP.dart';
import 'package:intro_slider/intro_slider.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  
  List<Slider> slides = new List();

  // List<String> list = ['xxx', 'yyy', 'zzz'];
  final h2Double = 16.0;

  Widget build(BuildContext context) {
    // String args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
     
      body: Stack(
        children: <Widget>[
          
          // ส่วนการทำภาพพื้นหลัง
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/BG.jpg'),
                fit: BoxFit.cover
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
           // สถานที่ตั้งของห้าง
           Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 60, 20, 30),
          child: new DecoratedBox(
          decoration: new BoxDecoration(
          color: Colors.black26,
          borderRadius: new BorderRadius.circular(20.0),
        ),
        child: new Container(
          width: 120.0,
          height: 40.0,
          child: new Text("เซ็นทรัลพลาซา อุบลราชธานี",
          textAlign: TextAlign.center,),
        ),)
            ),
              ),
          
        
          /// สมาชิกทั่วไป
          Container(
            
            child: Padding(
                padding: const EdgeInsets.fromLTRB(240, 60, 0, 0),
              child: new DecoratedBox(
          decoration: new BoxDecoration(
          color: Colors.black26,
          borderRadius: new BorderRadius.circular(20.0),
        ),
         child: new Container(
          width: 120.0,
          height: 25.0,
                child: new Text("สมาชิกทั่วไป",textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
                )
            ),
              )),
          ),
        


          ListView(
            // ส่วนของการทำ container ของ data
            children: <Widget>[
              SizedBox(
                height: 110,
              ),
              //headerSection,
              countCarSection,
              SizedBox(
          height: 30,
        ),

              parkingSpaceSection,
            ],
          ),
            new Row( children: <Widget>[
               Padding(
                padding: const EdgeInsets.fromLTRB(240, 100, 0, 0),
                  child: RaisedButton(      
                  color: Colors.yellow[200],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  child:Row(children: <Widget>[
                    Text("สมาชิกVIP",),
                    Icon(Icons.check_box),
                  ],),
                  onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => IndexPage()));}
                  ,
                )
          )
          ],
           
            
          ),
        ],
      ),
      //   // children: list.map((element){
      //   //   return Text(element);
      //   // }).toList(),
      // ),
    );
  
  }
  void homeVip(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeVIP()));
  }

}

Widget headerSection = Image.asset(
  'images/logo.png',
  height: 250,
  width: 250,
);



//จำนวนรถที่
Widget countCarSection = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 60, 40, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600],
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Row(children: <Widget>[
                      Text("จำนวนรถ", style: TextStyle(fontSize: 20,color: Colors.white),),    
                    ],),
                    //ขีดเส้นใต้
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                      
                      Expanded(
                      child: Divider(color: Colors.white,),
                    ),
                    ],),
                    ///ช่องเอา database จำนวนรถลง 
                    Text(
                      '0000/0000',
                      style: TextStyle(fontSize: 30,color: Colors.white,
                     ) ),
                  ],
                ),
            ),
          ],
        ),
      ),
    ),
  ],
);

Widget parkingSpaceSection = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600],
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Row(children: <Widget>[
                      Text("จำนวนช่องจอดรถ", style: TextStyle(fontSize: 20,color: Colors.white),),    
                    ],),
                    new Row(children: <Widget>[
                      Expanded(
                      child: Divider(color: Colors.white,),
                    ),
                    ],),
                    Container(
                      height: 150,
                      // width: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          subTitleSection,
                          subButtonSection,
                          subButtonSection,
                          subButtonSection,
                          subButtonSection,
                          subTitleSection,
                        ],
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    ),
  ],
);

Widget subTitleSection = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(25.0),
        ),
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(25.0),
        // ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text("จำนวนรถ",
                      style: TextStyle(color: Colors.white),),
                    ),new Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('ชั้น', style: TextStyle(color: Colors.white)),
                      )
                    ],)

                    ],),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'data/data',
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    ),
  ],
);

Widget subButtonSection = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(25.0),
        ),
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(25.0),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text("จำนวนรถ",
                      style: TextStyle(color: Colors.white),),
                    ),new Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('ชั้น', style: TextStyle(color: Colors.white)),
                      )
                    ],)

                    ],),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'data/data',
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    ),
  ],
);

Widget courseSection = Container(
  margin: EdgeInsets.only(top: 70),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('data/data'),
      Container(
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            _buildCardListView(url:'images/logo.png'),
            _buildCardListView(url:'images/logo.png'),
            _buildCardListView(url:'images/logo.png'),
            _buildCardListView(url:'images/logo.png'),
            _buildCardListView(url:'images/logo.png'),
            _buildCardListView(url:'images/logo.png'),
            _buildCardListView(url:'images/logo.png')
          ],
        ),
      ),
    ],
  ),
);



Card _buildCardListView({String url}){
  return Card(
    child: Image.asset(url,height: 210,width: 210,),
  );
}
