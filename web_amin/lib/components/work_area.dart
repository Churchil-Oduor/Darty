import 'package:flutter/material.dart';
import 'package:web_amin/components/tables/ets_subcom_min.dart';
import 'package:web_amin/components/tables/messages.dart';
import 'package:web_amin/components/utils/card_row.dart';
import 'package:web_amin/components/utils/footer.dart';
import 'package:web_amin/components/table_section.dart';
import 'package:web_amin/components/utils/top_panel.dart';

enum AREA { work_area, main_exec_form }

class WorkArea extends StatefulWidget {
  final String table_id;
  WorkArea({super.key, required this.table_id});

  @override
  State<WorkArea> createState() => _WorkAreaState();
}

class _WorkAreaState extends State<WorkArea> {
  final double radius = 10;

  final double grid_spacing = 10;

  final double card_height = 130;

  ///tweaking this section for a while
  AREA display = AREA.main_exec_form;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: const Color.fromARGB(255, 235, 234, 234),
      child: Column(
        children: [
          //The Top panel
          Expanded(flex: 1, child: TopPanel()),

          Expanded(
            flex: 8,
            child:
                display == AREA.work_area
                    ? Column(
                      children: [
                        Expanded(flex: 4, child: CardRow()),
                        Expanded(
                          flex: 4,
                          child: TableSection(table_id: widget.table_id),
                        ),
                      ],
                    )
                    : Messages(),
          ),

          Expanded(flex: 1, child: Footer()),
        ],
      ),
    );
  }
}
