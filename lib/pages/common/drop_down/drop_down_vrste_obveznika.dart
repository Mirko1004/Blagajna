import 'package:flutter/material.dart';

class DropDownTypeOfPayer extends StatefulWidget {

  @override
  _DropDownTypeOfPayerState createState() =>  _DropDownTypeOfPayerState();
}

class _DropDownTypeOfPayerState extends State<DropDownTypeOfPayer> {

 List _items =
  [ 'R1',
    'R2',
    'R1 - nije u sustavu pdv-a',
    'R2 - nije u sustavu pdv-a'];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentItem;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentItem = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items =  List();
    for (String item in _items) {
      items.add( DropdownMenuItem(
          value: item,
          child: Text(item)
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Vrste obveznika PDV-a"),
                 Container(
                  padding: EdgeInsets.all(8.0),
                ),
                 DropdownButton(
                   value: _currentItem,
                  items: _dropDownMenuItems,
                  onChanged: changedDropDownItem,
                )
              ],
            )
      ),
    );
  }

  void changedDropDownItem(String selectedItem) {
    setState(() {
      _currentItem = selectedItem;
    });
  }

}