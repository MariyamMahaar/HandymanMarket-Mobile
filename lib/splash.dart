
import 'package:flutter/material.dart';
import 'package:untitled/land.dart';
import 'package:untitled/main.dart';
import 'home.dart';
import 'main.dart';
void main() {
  runApp(
      const MaterialApp(
        title: 'handyman',
      home: MyApp()));
}


class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        //body:Center(
            body: Container(
              padding: const EdgeInsets.only(left: 50.0, top: 300.0, right: 50),
            child: const Image(
              alignment: Alignment.center,
            image: NetworkImage(
            'https://miro.medium.com/max/1000/1*i8cP7U3U0DMOEgcGtWJhcA.png')
            ),


        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          backgroundColor: const Color(0x817036C2),
          child:const Icon(Icons.arrow_forward_outlined),

        ),

      ),
    );
  }
}