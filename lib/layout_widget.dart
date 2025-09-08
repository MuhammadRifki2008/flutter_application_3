import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
       appBar: AppBar(title:  Text('Layout Contoh', style:  TextStyle(color: Colors.blueAccent),),
       backgroundColor: Colors.blueAccent ,
       ),
       
       body: Column(
        children: [
          SizedBox(height: 30),
          Image.asset('images/ypc.gif'),
          SizedBox(height: 25),
          Text('SMK YPC TASIKMALAYA',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), ),
          Text('Perangkat Lunak dan Gim'),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Column(
                children: [
                  Icon(Icons.call),
                  Text('Call'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.map),
                  Text('Route')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share),
                  Text('Shere'),
                ],
              ),
            ],
          ),
        ],
       ),
    );
  }
}