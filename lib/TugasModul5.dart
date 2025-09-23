import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Mandiri',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tugas Mandiri")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SpacedListPage()),
                );
              },
              child: const Text("Spaced List (4 Item)"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LongListPage()),
                );
              },
              child: const Text("Long List (100 Item)"),
            ),
          ],
        ),
      ),
    );
  }
}

// -------------------
// 1 & 2. Spaced List
// -------------------
class SpacedListPage extends StatelessWidget {
  const SpacedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemsCount = 4;
    final List<Color> colors = [
      Colors.lightBlue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Spaced List")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  itemsCount,
                  (index) => Card(
                    margin: const EdgeInsets.all(12),
                    color: colors[index],
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Text(
                          "Item ${index + 1}",
                          style: const TextStyle(
                            fontSize: 20,
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

// -------------------
// 3, 4, 5. Long List
// -------------------
class LongListPage extends StatelessWidget {
  const LongListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items =
        List<String>.generate(100, (i) => "Item ${i + 1}");

    return Scaffold(
      appBar: AppBar(title: const Text("Long List")),
      body: ListView.builder(
        itemCount: items.length,
        prototypeItem: const ListTile(title: Text("Prototype Item")),
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.star),
            title: Text(
              items[index],
              style: TextStyle(
                color: index % 10 == 0 ? Colors.red : Colors.black,
                fontWeight:
                    index % 10 == 0 ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          );
        },
      ),
    );
  }
}
