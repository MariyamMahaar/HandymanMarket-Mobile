import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'home.dart';
import 'contactus.dart';
import 'register.dart';


// void main() {
//   runApp(const MaterialApp(
//     title: 'Navigation Basics',
//     home: (),
//   ));
//}
//}
class Land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HANDYMAN MARKET')
        ,
        backgroundColor: Colors.deepPurple[400],

      ),
      body: Home(),


    );
  }
}