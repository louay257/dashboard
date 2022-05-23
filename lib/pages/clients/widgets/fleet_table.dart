import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

/// Example without datasource
class Clientstable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 30),
      child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: [
            DataColumn2(
              label: Text('Registration Number'),
              size: ColumnSize.M,
            ),
            DataColumn(
              label: Text("connected device Id"),
            ),
            DataColumn(
              label: Text('Type'),
            ),
            DataColumn(
              label: Text('N°'),
            ),
            DataColumn(
              label: Text('Driver'),
            ),
            DataColumn(
              label: Text(''),
            ),
          ],
          rows: List<DataRow>.generate(
              1,
              (index) => DataRow(cells: [
                    DataCell(CustomText(text: " 00-00000000  ")),
                    DataCell(CustomText(text: " TRANSTU-001  ")),
                    DataCell(CustomText(text: " BUS ")),
                    DataCell(CustomText(text: " 527 ")),
                    DataCell(CustomText(text: " 00000001 ")),
                    DataCell(Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                      ],
                    ))
                  ]))),
    );
  }
}
