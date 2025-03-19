import 'package:flutter/material.dart';
import 'dart:async';

import 'package:tic_tac_toe/pages/arena.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      if (mounted) {
        
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/logo.png")),
            SizedBox(height: 30),
            Text("Tic Tac Toe"),
          ],
        ),
      ),
    );
  }
}
