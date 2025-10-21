import 'package:flutter/material.dart';

class FavoritWidget extends StatefulWidget {
  const FavoritWidget({super.key});

  @override
  State<FavoritWidget> createState() => _FavoritWidgetState();
}

class _FavoritWidgetState extends State<FavoritWidget> {
  bool _isFavorit = true;
  int _FavoritCount = 41;

  void toggleFavorit(){
    setState(() {
      if (_isFavorit) {
        _isFavorit =false;
        _FavoritCount -= 1;
      }else{
        _isFavorit = true;
        _FavoritCount += 1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Favorit Widget",style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Tekan Bintang Untuk Menambahkan dan Menghapus Favorit",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: toggleFavorit,
                      icon: _isFavorit 
                        ? const Icon(Icons.star)
                        : const Icon(Icons.star_border),
                        iconSize: 40,
                        color: Colors.red,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '$_FavoritCount',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}