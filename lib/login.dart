import 'package:flutter/material.dart';
import 'package:untitled/contactus.dart';
import 'package:untitled/home.dart';
import 'package:untitled/register.dart';
import 'package:untitled/service.dart';
import 'register.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Here')
        ,
        backgroundColor: Colors.deepPurple[400],

      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            // UserAccountsDrawerHeader(
            //   accountName: Text("Abhishek Mishra"),
            //   accountEmail: Text("abhishekm977@gmail.com"),
            //   currentAccountPicture: CircleAvatar(
            //     backgroundColor: Colors.orange,
            //     child: Text(
            //       "A",
            //       style: TextStyle(fontSize: 40.0),
            //     ),
            //   ),
            // ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
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
              leading: Icon(Icons.design_services), title: Text("Services"),
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
              leading: Icon(Icons.contacts), title: Text("Contact Us"),
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

body: LoginForm(),
    );
  }
}
class LoginForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}


class MyCustomFormState extends State<LoginForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 200.0, right: 50),

              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  //icon: const Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
              Container(
                padding: const EdgeInsets.only(left: 50.0, top: 20.0, right: 50),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 20.0, right: 50),
              child: TextButton(

                onPressed: () {
                  //forgot password screen
                },
                style: TextButton.styleFrom(
                  primary: Colors.deepPurple,
                ),

                child: const Text('Forgot Password',),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 150.0, top: 20.0, right: 50),
                child: RaisedButton(
                  child: const Text('Submit'),
                  color: Color(0x817036C2),

                  onPressed: () {
                    // It returns true if the form is valid, otherwise returns false
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                    }
                  },
                )),




            Row(
              children: <Widget>[
                const Text('Dont have an account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.deepPurple,
                        fontSize: 20),
                  ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => register()),
                      );
                    }//signup screen
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280.0, right: 100, left: 12.0, bottom: 05.0),
              child: FloatingActionButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },

                backgroundColor: Color(0x817036C2),
                child:const Icon(Icons.arrow_back_outlined),
              ),
            )
          ],
        ));
  }
}