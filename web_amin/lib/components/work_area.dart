import 'package:flutter/material.dart';
import 'package:web_amin/components/forms/Forms.dart';
import 'package:web_amin/components/utils/card_row.dart';
import 'package:web_amin/components/utils/footer.dart';
import 'package:web_amin/components/table_section.dart';
import 'package:web_amin/components/utils/top_panel.dart';
import 'package:web_amin/pages/Dashboard.dart';


class WorkArea extends StatefulWidget {
  final String table_id;
   AREA display;

  WorkArea({super.key, required this.table_id, required this.display});

  @override
  State<WorkArea> createState() => _WorkAreaState();
}

class _WorkAreaState extends State<WorkArea> {

  String form_id = "";

  void manageDisplay(AREA managearea, String formID) {
    setState(() {
      widget.display = managearea;
      form_id = formID;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 235, 234, 234),
      child: Column(
        children: [
          //The Top panel
          Expanded(flex: 1, child: TopPanel()),

          Expanded(
            flex: 8,
            child:
                widget.display == AREA.work_area
                    ? Column(
                      children: [
                        Expanded(flex: 4, child: CardRow()),
                        Expanded(
                          flex: 4,
                          child: TableSection(
                            table_id: widget.table_id,
                            manageDisplay: manageDisplay,
                          ),
                        ),
                      ],
                    )
                    : Forms(form_id: form_id),
          ),

          Expanded(flex: 1, child: Footer()),
        ],
      ),
    );
  }
}
