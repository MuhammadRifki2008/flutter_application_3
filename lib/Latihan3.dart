import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'),backgroundColor: Colors.blue,),
      body: Column(
        children: [
          SizedBox(height: 30,),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('images/azis.jpeg'),
          ),
          SizedBox(height: 20,),
          Text("Muhammad Rifki Abdul Azis"),
          Text("Rekayasa Perangkat Lunak"),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.call),
                label: Text("Call"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
                ),
                )
            ],
          )
        ],
      ),
    );
  }
}