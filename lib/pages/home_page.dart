import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      // CORPO
      body: Container(),
      // MENU
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Menu"),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
            ListTile(
              title: const Text("Ir para Test"),
              onTap: () {
                Navigator.of(context).pushNamed("/test");
              },
            ),
            ListTile(
              title: const Text("Ir para Stateful"),
              onTap: () {
                Navigator.of(context).pushNamed("/state");
              },
            ),
            ListTile(
              title: const Text("Ir para Change Theme"),
              onTap: () {
                Navigator.of(context).pushNamed("/change");
              },
            ),
            ListTile(
              title: const Text("Esconder Menu"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
