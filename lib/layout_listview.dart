import 'package:flutter/material.dart';
class LayoutListview1 extends StatelessWidget {
  const LayoutListview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Vertikal')),
      body: ListView(
        children: <Widget>[
          ListTile(leading: Icon(Icons.map), title: Text('map')),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Galery')),
          ListTile(leading: Icon(Icons.phone), title: Text('Hp')),

        ],
      ),
    );
  }
}