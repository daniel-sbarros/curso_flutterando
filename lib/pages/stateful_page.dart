import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({Key? key}) : super(key: key);

  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Page'),
      ),
      body: Container(
        color: Colors.blue[100],
        child: Center(
          child: GestureDetector(
            child: Text(
              "Contador: $count",
              style: const TextStyle(color: Colors.black54, fontSize: 50),
            ),
            onTap: () {
              setState(() {
                count++;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count += 10;
          });
        },
      ),
    );
  }
}
