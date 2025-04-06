import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

const double form_padding = 30;
const double container_padding = 100;
const double textfield_radius = 10;

class ExecForm extends StatefulWidget {
  @override
  State<ExecForm> createState() => _ExecFormState();
}

class _ExecFormState extends State<ExecForm> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: container_padding - 20,
          bottom: container_padding - 20,
          left: container_padding * 3,
          right: container_padding * 3,
        ),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              right: form_padding,
              left: form_padding,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text(
                        "Chair Person",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 20,),
                Form(
                  key: _key,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Enter Name",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(textfield_radius),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter name of Person";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Enter Name",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(textfield_radius),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter name of Person";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Enter Name",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(textfield_radius),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter name of Person";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (_key.currentState!.validate()) {
                                  print("Validated..");
                                }
                              },
                              child: const Text("save"),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () {
                                if (_key.currentState!.validate()) {
                                  print("Validated..");
                                }
                              },
                              child: const Text("Cancel"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
