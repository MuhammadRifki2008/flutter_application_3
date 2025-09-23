import 'package:flutter/material.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemsCount = 4; // Jumlah item dalam list

    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaced List'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // LayoutBuilder memberikan informasi tinggi maksimum parent
          return SingleChildScrollView(
            // Agar list bisa di-scroll jika tinggi layar terbatas
            child: ConstrainedBox(
              // Menetapkan minimum height sesuai tinggi parent
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  itemsCount,
                  (index) => Card(
                    margin: const EdgeInsets.all(8),
                    color: Colors.blue[100 * (index + 2)],
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
