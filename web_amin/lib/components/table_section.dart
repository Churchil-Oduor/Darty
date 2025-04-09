import 'package:flutter/material.dart';
import 'package:web_amin/components/tables/ets_min_subcom.dart';
import 'package:web_amin/components/tables/main_exec.dart';
import 'package:web_amin/components/tables/tasks.dart';
import 'package:web_amin/pages/Dashboard.dart';

class TableSection extends StatelessWidget {
  final String table_id;
  final Function(AREA, String) manageDisplay;
  TableSection({super.key, required this.table_id ,required this.manageDisplay});
  @override
  Widget build(BuildContext context) {
    if (table_id == "tasks") {
      return Tasks();
    } else if (table_id == "exec") {
      return MainExec(manageDisplay: manageDisplay,);
    } else if (table_id == "ets&ministries") {
      return EtsMinSubcom(manageDisplay: manageDisplay,);
    } else {
      return Row();
    }
  }
}
