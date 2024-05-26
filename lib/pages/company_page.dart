import 'package:carrental_app/components/comp_car_tile.dart';
import 'package:carrental_app/pages/car_registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CompanyHome extends StatelessWidget {
  const CompanyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.green[100],
      body:SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('COMPANY NAME',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)),
      Container(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
           TextButton(onPressed: (){}, child: Text("REGISTERD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
           SizedBox(width: 50,),
            TextButton(onPressed: (){}, child: Text("IN USE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]))),
             SizedBox(width: 50,),
            TextButton(onPressed: (){}, child: Text("ORDERS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])))
        
        
        
          ],
        ),
      ),
      Expanded(
        child: Container(
          
          color: Colors.green[50],
          child: ListView(
            children: [

              CarTile(),
              CarTile(),
               CarTile(),
              CarTile(),
               CarTile(),
              CarTile(),
            
              CarTile(),
              CarTile(),
               CarTile(),
              CarTile(),
               CarTile(),
              CarTile(),
            ],
          ),
  
        ),
      )
          ],
        ),
      )
      ,floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FloatingActionButton(onPressed: (){

          Navigator.push(context,MaterialPageRoute(builder: (context) => CarRegPage()));
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.add,size: 40,),
        ),
      ),
      
      );
  }
}