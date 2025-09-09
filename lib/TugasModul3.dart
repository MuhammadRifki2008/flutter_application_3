import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List dan GridView',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List dan GridView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ListView Vertikal
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Menu Aplikasi:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView(
              shrinkWrap: true, // supaya bisa dalam Column
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text("Map"),
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text("Album"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                ),
              ],
            ),

            // ListView Horizontal
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Warna Horizontal:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 15),
                  Image(image:  AssetImage('images/rm1.jpeg'), width: 100, height: 100, fit: BoxFit.cover),
                  SizedBox(width: 15),
                  Image(image:  AssetImage('images/rm2.jpeg'), width: 100, height: 100, fit: BoxFit.cover),
                  SizedBox(width: 15),
                  Image(image:  AssetImage('images/rm3.jpeg'), width: 100, height: 100, fit: BoxFit.cover),
                  SizedBox(width: 15),
                  Image(image:  AssetImage('images/rm4.jpeg'), width: 100, height: 100, fit: BoxFit.cover),
                  SizedBox(width: 15),
                  Image(image:  AssetImage('images/rm5.jpeg'), width: 100, height: 100, fit: BoxFit.cover),
                ],
              ),
            ),

            // GridView
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Grid Item:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text("Item $index"),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
