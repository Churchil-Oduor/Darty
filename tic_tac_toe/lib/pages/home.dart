import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text("New Game"),
            onTap: () {
              Navigator.pushNamed(context, "/arena");
            },
          ),
          ListTile(
            leading: Text("Select Level"),
            onTap: () => Navigator.pushNamed(context, '/select_level'),
          ),
          ListTile(leading: Text("Quit")),
        ],
      ),
    );
  }
}
