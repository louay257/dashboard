import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

import '../../../constants/style.dart';
import '../../../widgets/custom_text.dart';

class stations extends StatefulWidget {
  stations({Key key}) : super(key: key);

  @override
  State<stations> createState() => _stationsState();
}

class _stationsState extends State<stations> {
  var selected;
  List<String> _selectedItems = [];

  void _showMultiSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items = ['4', '5', '3', '2', '527', '27'];
    final List<String> results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: _items);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CustomText(
                text: 'Paths',
                size: 24,
                weight: FontWeight.bold,
              ),
              Container(
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
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.74,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                          padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                padding: EdgeInsets.all(5),
                                child: GestureDetector(
                                    child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: light,
                                    border: Border.all(
                                        color: active.withOpacity(.4),
                                        width: .5),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 6),
                                          color: lightGrey.withOpacity(.1),
                                          blurRadius: 12)
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text("path1"),
                                )));
                          }),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 30,
                      width: 30,
                      child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ],
          ),
          Column(children: [
            SizedBox(
              width: 20,
            )
          ]),
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CustomText(
                text: 'Details',
                size: 24,
                weight: FontWeight.bold,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.62,
                  height: MediaQuery.of(context).size.height * 0.74,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: active.withOpacity(.4), width: .5),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 6),
                          color: lightGrey.withOpacity(.1),
                          blurRadius: 12)
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: TextField(
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                  labelText: "Path ID",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 20),
                                // use this button to open the multi-select dialog
                                ElevatedButton(
                                  child: const Text('Select BUS/Metros'),
                                  onPressed: _showMultiSelect,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // display selected items
                                Wrap(
                                  children: _selectedItems
                                      .map((e) => Chip(
                                            backgroundColor: primary1,
                                            label: Text(e),
                                          ))
                                      .toList(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'Stations List',
                              size: 18,
                              weight: FontWeight.bold,
                            ),
                            RaisedButton(
                              color: Colors.white,
                              onPressed: () {},
                              child: Text('Add Station'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.38,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: active.withOpacity(.4), width: .5),
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
                          child: Expanded(
                            child: ListView(
                              padding: EdgeInsets.all(5),
                              children: [
                                DataTable2(
                                    columnSpacing: 12,
                                    horizontalMargin: 12,
                                    minWidth: 500,
                                    columns: [
                                      DataColumn(
                                        label: Text('ID'),
                                      ),
                                      DataColumn(
                                        label: Text("Name"),
                                      ),
                                      DataColumn2(
                                        label: Text('Location'),
                                        size: ColumnSize.M,
                                      ),
                                      DataColumn(
                                        label: Text(''),
                                      ),
                                    ],
                                    rows: List<DataRow>.generate(
                                        1,
                                        (index) => DataRow(cells: [
                                              DataCell(
                                                  CustomText(text: " 01  ")),
                                              DataCell(CustomText(
                                                  text: " Barcalone ")),
                                              DataCell(CustomText(
                                                  text:
                                                      " 36.794988,10.180110 ")),
                                              DataCell(Row(
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons.edit)),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons.delete))
                                                ],
                                              ))
                                            ]))),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class MultiSelect extends StatefulWidget {
  final List<String> items;
  const MultiSelect({Key key, this.items}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  // this variable holds the selected items
  final List<String> _selectedItems = [];

// This function is triggered when a checkbox is checked or unchecked
  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select BUSES'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
                    value: _selectedItems.contains(item),
                    title: Text(item),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (isChecked) => _itemChange(item, isChecked),
                  ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: _cancel,
        ),
        ElevatedButton(
          child: const Text('Submit'),
          onPressed: _submit,
        ),
      ],
    );
  }
}
