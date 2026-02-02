import 'package:flutter/material.dart';

class Tugasresponsif extends StatelessWidget {
  const Tugasresponsif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas Responsif'),
      ),
      body: Center(
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.purple,
                child: Center(child: Text('Sidebar'),),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.yellow,
                child: Center(child: Text('Main Content'),),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.cyan,
                child: Center(child: Text('Ads'),),
              ),
            )
          ],
        ),
      ),
    );
  }
}