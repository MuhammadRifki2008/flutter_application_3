import 'package:flutter/material.dart';

class WidgetInteraktif extends StatefulWidget {
  const WidgetInteraktif({super.key});

  @override
  State<WidgetInteraktif> createState() => _WidgetInteraktifState();
}

class _WidgetInteraktifState extends State<WidgetInteraktif> {
  bool _isChecked = false;
  bool _isSwitched =false;
  double _sliderValue = 50;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Interaktif"),backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            Text("Checkbox: ${_isChecked ? 'Aktif' : 'Tidak Aktif'}"),
            SizedBox(height: 30,),
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            Text("Checkbox: ${_isChecked ? 'Aktif' : 'Tidak Aktif'}"),
            SizedBox(height: 30,),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text("Slider: ${_sliderValue.toInt()}%"),
          ],
        ),
      ),
    );
  }
}