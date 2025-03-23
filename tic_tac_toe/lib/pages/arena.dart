import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Arena extends StatefulWidget {
  const Arena({super.key});

  @override
  State<Arena> createState() => _ArenaState();
}

class _ArenaState extends State<Arena> {
  final Color border_color = const Color.fromARGB(255, 80, 79, 79);
  final Color tile_color = Colors.white;
  final double border_width = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text('Crabby'),
                      SizedBox(height: 10),
                      Image.asset('assets/logo.png'),
                      Text('Score: 0'),
                    ],
                  ),
                ),

                Expanded(flex: 1, child: Column(children: [Text('VS')])),

                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text('Crabby'),
                      SizedBox(height: 10),
                      Image.asset('assets/logo.png'),
                      Text('Score: 0'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///Grid down here
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.amber,
                child: Center(
                  child: Column(
                    children: [
                      //Row1
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.green,
                          child: Row(
                            children: [
                              //R1 col1
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: tile_color,
                                    border: Border(
                                      right: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                      bottom: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              //Row1 Col2
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: tile_color,
                                    border: Border(
                                      bottom: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              //Row1 COl3
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: tile_color,
                                    border: Border(
                                      bottom: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                      left: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //Row2
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                          child: Row(
                            children: [
                              //R2 Col1
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: tile_color,
                                    border: Border(
                                      right: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                      bottom: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              //R2 Col2
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: tile_color,
                                    border: Border(
                                      bottom: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                    ),

                                    ///
                                  ),
                                ),
                              ),
                              //R2 Col3
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: tile_color,
                                    border: Border(
                                      left: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                      bottom: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //Row3
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.deepPurple,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: tile_color,
                                    border: Border(
                                      right: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: tile_color,
                                    border: Border(
                                      right: BorderSide(color: border_color),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: tile_color,
                                    border: Border(
                                      left: BorderSide(
                                        color: border_color,
                                        width: border_width,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(45.0),
              child: Container(
                color: Colors.amber,
                width: 400,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text('Exit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: border_color,
                      foregroundColor: tile_color,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
