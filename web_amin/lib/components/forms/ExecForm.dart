import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:web_amin/components/utils/custom_button.dart';

const double border_radius = 10;
const double spacing = 10;
const double textfield_height = 40;
const double font_size = 15;
const double button_radius = 5;

class Execform extends StatefulWidget {
  Execform({super.key});

  @override
  State<Execform> createState() => _ExecformState();
}

class _ExecformState extends State<Execform> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        height: 300,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(border_radius),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6.0, top: 15, bottom: 1),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "Chair Person (Main Executive)",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 6.0, top: 1, bottom: 10),
                child: Container(
                  child: Row(
                    children: [
                      Text("Role Management", style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),
              Container(
                height: textfield_height,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Enter name",
                    labelStyle: TextStyle(fontSize: font_size),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing),

              Container(
                height: textfield_height,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    labelStyle: TextStyle(fontSize: font_size),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing),
              Container(
                height: textfield_height,
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Enter Phone",
                    prefix: Text("+254 "),

                    labelStyle: TextStyle(fontSize: font_size),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: CustomButton(
                        button_label: "Save",
                        color_grad_1: Colors.blueAccent,
                        color_grad_2: Colors.lightBlue,
                        onClick: () {
                          print("Saved");
                        },
                        border_radius: button_radius,
                      ),
                    ),
                  ),

                  SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: CustomButton(
                        button_label: "Cancel",
                        color_grad_1: Colors.red,
                        color_grad_2: Colors.redAccent,
                        onClick: () {
                          print("Cancel");
                        },
                        border_radius: button_radius,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
