import 'package:flutter/material.dart';
import 'package:web_amin/components/custom_button.dart';
import 'package:web_amin/components/custom_card.dart';

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
  final double card_height = 130;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromARGB(232, 166, 177, 192),
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
                    textAlign: TextAlign.start,
                  ),

                  SizedBox(height: 10),
                  Flexible(
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Text("Upcoming Activities"),
                          trailing: Icon(
                            Icons.task_outlined,
                            color: const Color.fromARGB(255, 34, 31, 31),
                          ),
                          onTap: () {},
                        ),
                        ListTile(leading: Text("Executive Committee")),
                        ListTile(leading: Text("ETs & Ministries")),
                        ListTile(leading: Text("Students & Associates")),
                        ListTile(
                          leading: Text("Suggestion Box"),
                          trailing: Icon(
                            Icons.message_outlined,
                            color: const Color.fromARGB(255, 34, 31, 31),
                          ),
                        ),

                        SizedBox(height: 100),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,

                    child: SizedBox(
                      height: 50,
                      width: 230,

                      ///Nomination Button
                      child: CustomButton(
                        button_label: "Open Nominations",
                        color_grad_1: const Color.fromARGB(255, 245, 60, 47),
                        color_grad_2:  const Color.fromARGB(255, 141, 12, 3),
                        onClick: () => {},
                    

                      ),
                    ),
                  ),

                  ///Made by JKUATCU IT team text
                  Padding(
                    padding: EdgeInsets.only(left: 22, top: 20, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Made By JKUATCU IT",
                        style: TextStyle(fontSize: 10),
                        textAlign: TextAlign.start,
                      ),
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
                                child: CustomCard(
                                  card_height: card_height,
                                  card_color: Colors.amber,
                                  onClick: () => {print("clicked 1")},
                                  title: "Executive Committees",
                                ),
                              ),
                              SizedBox(width: grid_spacing),
                              Expanded(
                                flex: 1,
                                child: CustomCard(
                                  card_height: card_height,
                                  card_color: const Color.fromARGB(
                                    255,
                                    240,
                                    55,
                                    41,
                                  ),
                                  onClick: () => {print("clicked 2")},
                                  title: "ETs & Ministries",
                                ),
                              ),
                              SizedBox(width: grid_spacing),
                              Expanded(
                                flex: 1,
                                child: CustomCard(
                                  card_height: card_height,
                                  card_color: Colors.blue,
                                  onClick: () => print("clicked 3"),
                                  title: "Students & Associates",
                                ),
                              ),
                            ],
                          ),
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
