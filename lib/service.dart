import 'package:flutter/material.dart';

class ServiceForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Services you can Avail')
          ,
          backgroundColor: Colors.deepPurple[400],


        ),
    body: const service(),
    );
  }
}

class service extends StatelessWidget {
  const service({Key? key}) : super(key: key);

  @override

        Widget build(BuildContext context)

  {
    return Column(
        children: const [
    Image(
    image: NetworkImage(
    'https://media.istockphoto.com/photos/cropped-shot-of-young-repairman-wearing-a-tool-belt-with-various-picture-id1308444364?s=612x612')),
          ListTile(
            leading: Icon(Icons.drive_eta_rounded, size: 45),
            title: Text('DRIVER'),
            subtitle: Text('International License Holders'),
          ),
          ListTile(
            leading: Icon(Icons.coffee, size: 45),
            title: Text('COOK'),
            subtitle: Text('Taste of restaurant at home'),
          ),
          ListTile(
            leading: Icon(Icons.electrical_services, size: 45),
            title: Text('ELECTRICIAN'),
            subtitle: Text('Dont be shocked when our electricians turn up on time!'),
          ),
          ListTile(
            leading: Icon(Icons.car_repair, size: 45),
            title: Text('MECHANIC'),
            subtitle: Text('Save money on your repair projects.'),
          ),
          ListTile(
            leading: Icon(Icons.plumbing, size: 45),
            title: Text('PLUMBER'),
            subtitle: Text('24/7 plumbing, we show up.'),
          ),


        ]

    );


  }
}

