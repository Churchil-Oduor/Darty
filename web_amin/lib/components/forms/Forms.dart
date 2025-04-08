import 'package:flutter/material.dart';
import 'package:web_amin/components/forms/ExecForm.dart';

class Forms extends StatelessWidget {
  final String form_id;
  Forms({super.key, required this.form_id});

  @override
  Widget build(BuildContext context) {
    if (form_id == "main_exec_form") {
      return Execform();
    } else {
      return Row();
    }
  }
}
