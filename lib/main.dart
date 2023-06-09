import 'package:flutter/material.dart';
import 'package:note_app/HomePage.dart';
import 'package:note_app/FloattingButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light
      ),
      home: HomePage(),
    );
  }
}
