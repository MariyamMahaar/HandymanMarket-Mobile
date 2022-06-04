import 'package:flutter/material.dart';
import 'home.dart';
import 'contactus.dart';
import 'register.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text('HANDYMAN MARKET')
  ,
  backgroundColor: Colors.greenAccent[400],

  ),
  body: Home(),
  );
  }
  }
