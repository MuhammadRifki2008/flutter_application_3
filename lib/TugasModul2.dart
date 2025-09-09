import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text('Profile', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('images/alok.jpeg'),
          ),
          SizedBox(height: 20,),
          Text('M. Rifki A.A',),
          Text('Perangkat Lunak dan Gim', style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.call),
                label: Text('Call'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.map),
                label: Text('Route'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.share),
                label: Text('Share'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}