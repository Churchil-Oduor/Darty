import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: ListView(children: [
        ListTile(leading: Text("New Game"),onTap: () {
          Navigator.pushNamed(context, "/arena");
        },),
        ListTile(leading: Text("Select Level"),),
        ListTile(leading: Text("Exit"),),
        ListTile(leading: Text("Developers"),)
      ],),
    );

  }
}
