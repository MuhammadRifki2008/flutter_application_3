import 'package:flutter/material.dart';
// import 'package:flutter_application_1/praktik.dart';
// import 'package:flutter_application_1/MediaQuery.dart';
import 'package:flutter_application_1/TugasResponsif.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Main App',
      home: Tugasresponsif(),
      debugShowCheckedModeBanner: false,
    );
  }
}
