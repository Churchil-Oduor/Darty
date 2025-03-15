import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  AdminPanel({super.key});

  List items = [
    ["Upcoming Tasks", Icon(Icons.task)],
    ["Executive Committee"],
    ["ETs & Ministries"],
    ["Students & Associates"],
    ["Upcoming Events", Icon(Icons.calendar_month)],
    ["Summons", Icon(Icons.book)],
    ["Suggestions", Icon(Icons.message_outlined)],
  ];

  final double radius = 10;
  final double grid_spacing = 10;
  final double grid_height = 130;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromARGB(232, 190, 203, 221),
      //appBar: AppBar(backgroundColor: Colors.white, elevation: 5),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Admin Panel",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/JKUATCU LOGO.png"),
                          height: 70,
                          width: 70,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Text("JKUAT"),
                            SizedBox(height: 1),
                            Text("Christian Union"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //space inbetween the Padding and the Text
                  SizedBox(height: 20),

                  Text(
                    "View & Manage",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Flexible(
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Text("Upcoming Tasks"),
                          trailing: Icon(
                            Icons.task_outlined,
                            color: const Color.fromARGB(255, 34, 31, 31),
                          ),
                          onTap: () {},
                        ),
                        ListTile(leading: Text("Executive Committee")),
                        ListTile(leading: Text("Ets & Ministries")),
                        ListTile(leading: Text("Students & Associates")),
                        ListTile(
                          leading: Text("Upcoming Events"),
                          trailing: Icon(
                            Icons.calendar_month,
                            color: const Color.fromARGB(255, 34, 31, 31),
                          ),
                        ),
                        ListTile(
                          leading: Text("Summons"),
                          trailing: Icon(
                            Icons.book,
                            color: const Color.fromARGB(255, 34, 31, 31),
                          ),
                        ),
                        ListTile(
                          leading: Text("Suggestions Box"),
                          trailing: Icon(
                            Icons.message_outlined,
                            color: const Color.fromARGB(255, 34, 31, 31),
                          ),
                        ),

                        SizedBox(height: 30),

                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 50,
                            width: 230,

                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    const Color.fromARGB(255, 245, 60, 47),
                                    const Color.fromARGB(255, 141, 12, 3),
                                  ], // Define your gradient colors
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(
                                  8,
                                ), // Ensure rounded corners
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors
                                          .transparent, // Transparent background
                                  shadowColor: Colors.black.withOpacity(
                                    0.5,
                                  ), // Keep shadow effect
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 12,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Open Nominations"),
                                    SizedBox(width: 5),
                                    Icon(Icons.lock, weight: 10, size: 15),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 20),
                          child: Text(
                            "Made By JKUATCU IT",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///The Dashboard is defined here
          //
          //
          Expanded(
            flex: 4,
            child: Container(
              color: const Color.fromARGB(255, 246, 248, 248),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.notifications_none)],
                    ),
                  ),

                  ///creating the Grid view
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 50, right: 10),
                      child: Column(
                        children: [
                          ///Text Field
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: grid_height,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(radius),
                                  ),

                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 10,
                                          left: 10,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Executive Committee",
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                  255,
                                                  245,
                                                  245,
                                                  245,
                                                ),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: grid_spacing),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: grid_height,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(radius),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(width: grid_spacing),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: grid_height,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(radius),
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          ///Grid Row
                          ///Bottom Task Row
                          ///Text Field
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(radius),
                            ),
                            child: Text(
                              "Messages",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(radius),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
