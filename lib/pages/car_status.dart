import 'package:flutter/material.dart';

class CarStatusPage extends StatelessWidget {
  const CarStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.green[100],
      body: Center(
        child:Text('CAR status')
      ),
    );
  }
}