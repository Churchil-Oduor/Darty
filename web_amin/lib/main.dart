import 'package:flutter/material.dart';
import 'package:web_amin/pages/Dashboard.dart';
import 'package:web_amin/pages/login_page.dart';

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
      title: 'Login Form',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home:  LoginPage(),
      routes: {
        "/admin_panel": (context) => Dashboard(),
        
      },
    );
  }
}
