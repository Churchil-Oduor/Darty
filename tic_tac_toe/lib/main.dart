import 'package:flutter/material.dart';
import 'package:tic_tac_toe/pages/arena.dart';
import 'package:tic_tac_toe/pages/home.dart';
import 'package:tic_tac_toe/pages/splash.dart';

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
      theme: ThemeData(useMaterial3: false),
      home: Home(),
      routes: {"/arena": (context) => Arena()},
    );
  }
}
