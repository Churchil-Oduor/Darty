import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  TextEditingController myController = TextEditingController();

  String msg = "";

  

  void counter() {
    String username = myController.text;
    setState(() {
       msg = "Hello " + username;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(msg),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your Name",
                
              ),
            ),
            ElevatedButton(
                onPressed: () => counter(),
                child: Text(
                  "Click Me",
                ))
          ],
        ),
        )
      
      ),
    );
  }
}
