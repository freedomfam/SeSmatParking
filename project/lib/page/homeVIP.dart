import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeVIP extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _HomeVipState();
  }
}

class _HomeVipState extends State<HomeVIP> {
  List<String> _locations = ['เซ็นทรัลพลาซา อุบลราชธานี', 'โรงแรมสุนีย์แกรนด์', 'บิ๊กซี ซูเปอร์เซ็นเตอร์ อุบลราชธานี'];
  String _selectedLocation;
   // List<String> list = ['xxx', 'yyy', 'zzz'];
  @override
  

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
          
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              // ส่วนของการทำดรอปดาวน์
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: DropdownButton(
                      hint: Text('Please choose a location'),
                      value: _selectedLocation,
                      onChanged: (newValue){
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location){
                        return DropdownMenuItem(
                          child: Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListView(
            // ส่วนของการทำ container ของ data
            children: <Widget>[
              // headerSection,
              countCarSection,
              parkingSpaceSection,
            ],
          )
        ],
      ),
      //   // children: list.map((element){
      //   //   return Text(element);
      //   // }).toList(),
      // ),
    );
  }
}

Widget headerSection = Image.asset(
  'images/logo.png',
  height: 250,
  width: 250,
);

Widget countCarSection = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 50, 40, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'data/data',
                      style: TextStyle(fontSize: 40),
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

Widget parkingSpaceSection = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
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
                    Text('data/data'),
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
        color: Colors.white,
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(25.0),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'data/data',
                      style: TextStyle(fontSize: 20),
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
        color: Colors.white,
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(25.0),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'data/data',
                      style: TextStyle(fontSize: 20),
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