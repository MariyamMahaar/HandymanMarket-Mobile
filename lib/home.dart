import 'package:flutter/material.dart';
import 'contactus.dart';
import 'register.dart';
import 'service.dart';
import 'login.dart';
import 'splash.dart';

class Home extends StatelessWidget {
  String msg = 'Flutter RaisedButton Example';

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: const Text('HANDYMAN MARKET'),

          backgroundColor: Colors.deepPurple[400],

        ),
        drawer: Drawer(
          child: ListView(

            padding: EdgeInsets.zero,
            children: <Widget>[

              ListTile(
                leading: const Icon(Icons.home), title: const Text("Home"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Home(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.design_services), title: const Text("Services"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ServiceForm(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.contacts), title: const Text("Contact Us"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          contact(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),

        body: Column(
        children: [
        const Image(
            image: NetworkImage(
                'https://media.istockphoto.com/photos/home-renovation-and-diy-picture-id586932394?s=612x612')),
        Container(
          padding: const EdgeInsets.only(top: 10.0),

          margin: const EdgeInsets.all(25),
          child: RaisedButton(
              child: const Text(
                "Worker",
                style: TextStyle(fontSize: 20.0),
              ),
              color: const Color(0x817036C2),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => register()),
                );
              }
          ),
        ),

          Container(

          margin: const EdgeInsets.all(25),
          child: RaisedButton(
              child: const Text(
                "Customer",
                style: TextStyle(fontSize: 20.0),

              ),
              color: const Color(0x817036C2),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              }
          ),
        ),

          Padding(
            padding: const EdgeInsets.only(top: 280.0, right: 280, left: 0.0, bottom: 05.0),
            child: FloatingActionButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },

              backgroundColor: const Color(0x817036C2),
              child:const Icon(Icons.arrow_back_outlined),
            ),
          )
          ],

      //
    ));
  }
}

