import 'package:flutter/material.dart';
import 'home.dart';
import 'service.dart';
import 'contactus.dart';
class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('You can register yourself here')
          ,
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

      body: const MyCustomForm(),
    );
  }
}
// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),

      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your full name',
                labelText: 'Name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Enter a phone number',
                labelText: 'Phone',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter valid phone number';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.mail),
                hintText: 'Enter your mail',
                labelText: 'E-Mail',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter valid email';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.work),
                hintText: 'Enter your service like Cook, Tutor, etc',
                labelText: 'Service',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter valid service';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.location_on),
                hintText: 'Enter your location',
                labelText: 'Phone',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter valid location';
                }
                return null;
              },
            ),
            Container(
                padding: const EdgeInsets.only(left: 140.0, top: 20.0),
                child: RaisedButton(
                  child: const Text('Submit'),
                  color: const Color(0x817036C2),

                  onPressed: () {
                    // It returns true if the form is valid, otherwise returns false
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context)
                          .showSnackBar(const SnackBar(content: Text('Data is in processing.')));
                    }
                  },
                )),
            Padding(
              padding: const EdgeInsets.only(top: 280.0, right: 100, left: 12.0, bottom: 0.0),
              child: FloatingActionButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },

                backgroundColor: const Color(0x817036C2),
                child:const Icon(Icons.arrow_back_outlined),
              ),
            )
          ],


        ),

      ),
    );
  }
}