import 'package:flutter/material.dart';

class ChangePage extends StatefulWidget {
  const ChangePage({Key? key}) : super(key: key);

  @override
  _ChangePageState createState() => _ChangePageState();
}

class _ChangePageState extends State<ChangePage> {
  int counter = 0;
  bool isDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Theme'),
      ),
      body: Center(
        child: Switch(
            value: isDartTheme,
            onChanged: (value) {
              setState(() {
                isDartTheme = value;
              });
            }),
      ),
    );
  }
}
