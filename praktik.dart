import 'package:flutter/material.dart';
import 'package:flutter_application_1/praktik2.dart';

class Praktik extends StatelessWidget {
  const Praktik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('praktik Page'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'This is praktik Page',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Praktik2()));
                },
               child: Text('Klik saya'))
            ],
          ),
        ],
      ),
    );
  }
}