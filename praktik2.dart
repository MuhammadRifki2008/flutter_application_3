import 'package:flutter/material.dart';

class Praktik2 extends StatelessWidget {
  const Praktik2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('praktik2 Page'),
      ),
      body: Column(
        children: [
          Image.asset('image/bakekok.jpg'),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
               child: Text('Kembali'))
            ],
          ),
        ],
      ),
    );
  }
}