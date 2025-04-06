import 'package:flutter/material.dart';
import 'package:web_amin/components/tables/ets_min_subcom.dart';
import 'package:web_amin/components/tables/exec.dart';
import 'package:web_amin/components/tables/tasks.dart';

class TableSection extends StatelessWidget {
  final String table_id;
  TableSection({super.key, required this.table_id});
  @override
  Widget build(BuildContext context) {
    if (table_id == "tasks") {
      return Tasks();
    } else if (table_id == "exec") {
      return MainExec();
    } else if (table_id == "ets&ministries") {
      return EtsMinSubcom();
    } else {
      return Row();
    }
  }
}
