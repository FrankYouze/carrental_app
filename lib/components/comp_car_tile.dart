import 'package:carrental_app/pages/car_status.dart';
import 'package:flutter/material.dart';

class CarTile extends StatelessWidget {
  const CarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Car Title"),
        subtitle:Text("car Id"),
        leading: Image(
            height: 100,
            width: 100,
            image: AssetImage('assets/josh-berquist-_4sWbzH5fp8-unsplash.jpg')),
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> CarStatusPage()));
            },
      ),
    );
  }
}