import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/utils.dart';

class Arena extends StatefulWidget {
  const Arena({super.key});

  @override
  State<Arena> createState() => _HomeState();
}

class _HomeState extends State<Arena> {
  List<String> grid_items = List.filled(9, "");
  final double radius = 30;
  bool isPlayerX = true;
  final String playeO = "O";
  final String playerX = "X";

  void _handleTap(int index) {
    if (grid_items[index] == "") {
      setState(() {
        grid_items[index] = isPlayerX ? playerX : playeO;
        isPlayerX = !isPlayerX;
      });
    }
  }

  void _refresh() {
    setState(() {
      grid_items.fillRange(0, 9, "");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tic Tac Toe")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You\n score",
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 40),
                ),
                SizedBox(width: 20),
                Text(
                  "Vs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(width: 20),
                Text(
                  "Carl\n score",
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 40),
                ),
              ],
            ),
          ),

          SizedBox(height: 50),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _handleTap(index),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(radius)),
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: Text(
                      grid_items[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),

          ElevatedButton(onPressed: _refresh, child: Text("Refresh")),
        ],
      ),
    );
  }
}
