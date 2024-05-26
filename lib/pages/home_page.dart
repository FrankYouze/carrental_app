import 'dart:convert';

import 'package:carrental_app/components/cust_car_tile.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final DatabaseReference companiesRef2 =
      FirebaseDatabase.instance.ref().child("RegCompanies");
  Map<String,dynamic>registeredComp = {};
  Map<dynamic,dynamic>allCars = {};


  @override
  void initState() {
    super.initState();
    companiesRef2.onValue.listen((event) {
      setState(() async{
        print("hellw world");
        registeredComp = await Map<String, dynamic>.from(
            event.snapshot.value as Map<dynamic, dynamic>);
            print(registeredComp);
              registeredComp.forEach((key, value) { 
               // print("value ${value}");
               allCars = value;

             print(allCars.keys);
              value.forEach((key,value){
             //  print(key);
              });
              });
      });
    });
  //print(registeredComp.length);
  
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car Rental App"),
        backgroundColor: Colors.green,
      ),
      
      backgroundColor: Colors.green[100],
      body:Column(
        children: [

Expanded(child: Container(
  child: ListView.builder(
    itemCount: allCars.length,
    itemBuilder: (context,index){
      String This = allCars.keys.elementAt(index);
      Map<dynamic,dynamic> hee = allCars[This];
      allCars.keys.forEach((key){
//print(allCars[key]["carModel"]);

      });
    //  print(allCars.keys.elementAt(index));
return CustCarTile(imageUrl: hee['imageUrl'], carModel: hee['carModel']);
  })

))
        ],
      ));
  }
}
