import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ExecForm extends StatefulWidget {
  @override
  State<ExecForm> createState() => _ExecFormState();
}

class _ExecFormState extends State<ExecForm> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter name of Person";
              }
              return null;
            },
          ),
          
        ],
      ),
    );
  }
}
