import 'package:flutter/material.dart';

class LayoutGridview extends StatelessWidget {
  const LayoutGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contoh GridView")),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index){
          return Center(
            child: Text("Item $index", style: TextStyle(fontSize: 20)),
          );
        }),
      ),
    );
  }
}