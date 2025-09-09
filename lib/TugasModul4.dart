import 'package:flutter/material.dart';

// --- 1. Class Abstrak ---
abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
  Widget? buildLeading(BuildContext context) => null; // opsional leading
}

// --- 2. HeadingItem ---
class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 24, // lebih besar dari default
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

// --- 3. MessageItem ---
class MessageItem implements ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);

  @override
  Widget? buildLeading(BuildContext context) => const Icon(Icons.message);
}

// --- 4. ImageItem (baru) ---
class ImageItem implements ListItem {
  final String title;
  final String imagePath;
  ImageItem(this.title, this.imagePath);

  @override
  Widget buildTitle(BuildContext context) => Text(title);

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();

  @override
  Widget? buildLeading(BuildContext context) {
    return Image.asset(
      imagePath,
      width: 50,
      height: 50,
      fit: BoxFit.cover,
    );
  }
}

// --- Widget utama ---
class LayoutListItem extends StatelessWidget {
  const LayoutListItem({super.key});

  @override
  Widget build(BuildContext context) {
    // --- 5 & 6. Data contoh ---
    final List<ListItem> items = List<ListItem>.generate(
      30,
      (i) {
        if (i % 5 == 0) {
          return HeadingItem('Heading $i');
        } else if (i % 2 == 0) {
          return MessageItem('Sender $i', 'Message body $i');
        } else {
          // tambahkan minimal 3 gambar (images/ harus ada di pubspec.yaml)
          final images = [
            'images/pic1.png',
            'images/pic2.png',
            'images/pic3.png',
          ];
          return ImageItem('Image $i', images[i % images.length]);
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
          final item = items[index];
          return ListTile(
            leading: item.buildLeading(context),
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: LayoutListItem(),
    ),
  );
}
