import 'package:flutter/material.dart';
import 'service.dart';
import 'package:untitled/contactus.dart';
import 'home.dart';

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us')
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

      body: ContactForm(),
    );
  }
}
class ContactForm extends StatefulWidget {
  @override
  ContactFormState createState() {
    return ContactFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class ContactFormState extends State<ContactForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          //SizedBox(height: 100.0,),

          Padding(
            padding: const EdgeInsets.only(left: 50.0, top: 100.0, right: 50),

            child: TextFormField(
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
          Padding(
            // padding: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.only(left: 50.0, top: 10.0, right: 50),

            child: TextFormField(
              minLines: 6,
              keyboardType: TextInputType.multiline,
              maxLines:null ,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Comments here',
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
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
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
      ),
    );
  }
}