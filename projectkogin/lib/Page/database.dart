import 'package:flutter/material.dart';


// ตัวนี้เป็นการ import package ของ database แบบ realtime
import 'package:firebase_database/firebase_database.dart'; 
//////


class Database extends StatelessWidget{
  final DBRef = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Database'),
     ),
     body: Row(children: <Widget>[
       RaisedButton(
         child: Text("Write data"),
       onPressed: () {
          writeData();
                 },
                ),
                RaisedButton( //// เขียนข้อมูล แบบ readtime
                  child: Text('Read Data'),
                  onPressed: () {
          readdata();
                           },
                          ),
             RaisedButton( /// update readtime
                  child: Text('Update Data'),
                  onPressed: () {
                  updatedata();
                                             },
                                            ),
                   RaisedButton( /// Delete
                  child: Text('Delete Data'),
                  onPressed: () {
                  daletedata();
                                             },
                                            ),
                                           ],),
                                            );
                                        }
                                    void writeData() {
                                      DBRef.child("1").set({
                                        'id':'ID1',
                                        'data': 'This is a sample Data'
                                      });
                                    }
                  
                              void readdata() {
                                DBRef.once().then((DataSnapshot dataSnapShot){
                                    print(dataSnapShot.value);
                                });
                              }
                              void updatedata(){
                                DBRef.child("1").update({
                                  'data': "This is a update"
                                });
                              }
                              void daletedata(){
                                DBRef.child("1").remove();
                            }
                

}
         