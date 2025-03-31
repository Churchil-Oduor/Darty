import 'package:flutter/material.dart';

class DashboardTable extends StatelessWidget {
  final List<String> colm_titles;
  final List<List<String>> data;

  const DashboardTable({
    super.key,
    required this.colm_titles,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: null,
      columnWidths: {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(1),
      },
      children: [
        // Table Header Row
        TableRow(
          children: colm_titles
              .map(
                (title) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft, // Left-aligned header
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        
        // Table Data Rows
        ...data.map(
          (row) => TableRow(
            children: [
              _buildTableCell(row[0]),
              _buildTableCell(row[1]),
              _buildTableCell(row[2]),
              _buildButtonCell(), // Separate method for button alignment
            ],
          ),
        ),
      ],
    );
  }

  /// Helper method to create a left-aligned and vertically centered TableCell
  Widget _buildTableCell(String text) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle, // Ensures vertical centering
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerLeft, // Left-aligns the text
          child: Text(text),
        ),
      ),
    );
  }

  /// Helper method to create a button cell (vertically centered)
  Widget _buildButtonCell() {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle, // Ensures vertical centering
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerLeft, // Left-aligns the button
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Manage"),
          ),
        ),
      ),
    );
  }
}
