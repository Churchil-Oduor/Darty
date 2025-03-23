import 'package:flutter/material.dart';

enum Level { Easy, Medium, Hard }

class SelectLevel extends StatefulWidget {
  const SelectLevel({super.key});

  @override
  State<SelectLevel> createState() => _SelectLevelState();
}

class _SelectLevelState extends State<SelectLevel> {
  Level? _level = Level.Easy;

  void setLevel(Level? value) {
    setState(() {
      _level = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Level", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: const Text("Easy"),
              leading: Radio<Level>(
                value: Level.Easy,
                groupValue: _level,
                onChanged: setLevel,
                activeColor: const Color.fromARGB(255, 29, 29, 29),
              ),
            ),

            ListTile(
              title: Text("Medium"),
              leading: Radio<Level>(
                value: Level.Medium,
                groupValue: _level,
                onChanged: setLevel,
                activeColor: const Color.fromARGB(255, 29, 29, 29),
              ),
            ),

            ListTile(
              title: Text("Hard"),
              leading: Radio<Level>(
                value: Level.Hard,
                groupValue: _level,
                onChanged: setLevel,
                activeColor: const Color.fromARGB(255, 29, 29, 29),
              ),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),

              child: Container(
                height: 60,
                width: 400,

                child: ElevatedButton(
                  child: Text("Done"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 20, 20, 20),
                    foregroundColor: Colors.white,
                  ),

                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
