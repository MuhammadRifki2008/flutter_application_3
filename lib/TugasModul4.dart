import 'package:flutter/material.dart';

// --- 1. Class Abstrak ---
abstract class ListItem {
  Widget buildItem(BuildContext context);
}

// --- 2. HeadingItem ---
class HeadingItem extends ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        heading,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// --- 3. MessageItem ---
class MessageItem extends ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);

  @override
  Widget buildItem(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.message, color: Colors.blue),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sender,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(body),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// --- 4. ImageItem ---
class ImageItem extends ListItem {
  final String title;
  final String imagePath;
  ImageItem(this.title, this.imagePath);

  @override
  Widget buildItem(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul di atas gambar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          // Gambar full lebar
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

// --- Widget utama ---
class LayoutListItem extends StatelessWidget {
  const LayoutListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(
      30,
      (i) {
        if (i % 5 == 0) {
          return HeadingItem('Heading $i');
        } else if (i % 3 == 0) {
          final images = [
            'images/ft1.jpg',
            'images/ft2.jpg',
            'images/ft3.jpg',
          ];
          // pakai i ~/ 3 biar gambar ganti tiap kelipatan 3
          return ImageItem('Image Item $i', images[(i ~/ 3) % images.length]);
        } else {
          return MessageItem('Sender $i', 'Message body $i');
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("List dengan Berbagai Item"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index].buildItem(context);
        },
      ),
    );
  }
}
