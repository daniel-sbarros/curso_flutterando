import 'package:flutter/material.dart';
import 'package:flutterando/pages/change_page.dart';
import 'package:flutterando/pages/home_page.dart';
import 'package:flutterando/pages/stateful_page.dart';
import 'package:flutterando/pages/test_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      brightness: Brightness.dark,
    ),
    home: const HomePage(),
    routes: {
      "/test": (_) => const TestPage(),
      "/state": (_) => const StatefulPage(),
      "/change": (_) => const ChangePage(),
    },
  ));
}
