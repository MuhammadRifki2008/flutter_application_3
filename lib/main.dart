import 'package:flutter/material.dart';
// import 'package:flutter_application_3/layout.dart';
// import 'package:flutter_application_3/TugasModul4.dart';
//import 'package:flutter_application_3/layout_GridView.dart';
import 'package:flutter_application_3/TugasModul2.dart';
// import 'package:flutter_application_3/TugasModul3.dart';
//import 'package:flutter_application_3/layout_widget.dart';
//import 'package:flutter_application_3/layout_listview.dart';
// import 'package:flutter_application_3/profile.dart';
//import 'package:flutter_application_3/layout_listview2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Flutter",
      home: Profile(),
    );
  }
}
