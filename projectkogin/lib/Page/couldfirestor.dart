
import 'package:flutter/material.dart';

//////// นี้คือ import package ของ cloud_firestore
import "package:cloud_firestore/cloud_firestore.dart";


class FirestorePage extends StatefulWidget {

  @override
  
    FirestoreState createState(){
          return FirestoreState();
        }
      }
    
    class FirestoreState extends State<FirestorePage> {
      String id;
      final db = Firestore.instance;
      final _formKey = GlobalKey<FormState>();
      String name;

      
     Card buildItem(DocumentSnapshot doc){
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text(
                'name : ${doc.data['name']}',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'todo : ${doc.data['todo']}',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox( height:  10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => updateData(doc),
                    child:  Text("Update todo", style: TextStyle(fontSize: 17,color: Colors.green),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => deleteData(doc),
                    child: Text('Delete'),
                  )
                ],
              )
            ],),
          ),
        );
     }

      TextFormField buildTextFormField(){
        return TextFormField(
          decoration: InputDecoration(
            border:  InputBorder.none,
            hintText: 'name',
            fillColor: Colors.blueGrey,
            filled: true,
          ),
          validator: (value){
            if (value.isEmpty) {
              return "Please enter";
            }
          },
          onSaved: (value) => name = value,
        );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar
    : AppBar(
      title: Text('CRUD'),
  ),
  body: ListView(
    padding: EdgeInsets.all(8),
    children: <Widget>[
      Form(
        key: _formKey,
        child: buildTextFormField(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(onPressed: createData,
            child: Text('create'),
            ),SizedBox(
              height: 15.0
              ,
            ),
            RaisedButton(
              onPressed: id != null ? readData : null,
              child: Text('Read'),
            )
          ],
        ),
        StreamBuilder<QuerySnapshot>(
          stream: db.collection('CRUD').snapshots(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Column(children: snapshot.data.documents.map((doc) => buildItem(doc)).toList());
            }else{
              return SizedBox();
            }
          },
        ),
    ],
  ),
  );
  }
  void createData() async{
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      DocumentReference ref = await db.collection('CRUD').add({'name': '$name'});
      setState(() => id = ref.documentID);
      print(ref.documentID);
    }
  }
  void readData() async{
    DocumentSnapshot snapshot = await db.collection('CRUD').document(id).get();
    print(snapshot.data['name']);
  }
  void  updateData(DocumentSnapshot doc) async{
    await db.collection('CRUD').document(doc.documentID).updateData({'todo': 'pease'});

  }
  void deleteData(DocumentSnapshot doc) async{
    await db.collection("CRUD").document(doc.documentID).delete();
    setState(() => id = null);

  }


}
