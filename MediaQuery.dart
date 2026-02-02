import 'package:flutter/material.dart';

class Mediaquery extends StatelessWidget {
  const Mediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.blue,
              child: Center(child: Text('Header', style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(
                    color: Colors.green,
                    child: Center(child: Text('Menu'),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      child: Center(child: Text('Konten'),),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}