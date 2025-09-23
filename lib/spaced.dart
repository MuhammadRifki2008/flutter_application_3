import 'package:flutter/material.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemsCount = 4;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaced List',
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
        builder: (context, contraints){
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: contraints.maxHeight)
          );
        }
      ),
    );
  }
}