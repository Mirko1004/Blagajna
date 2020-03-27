import 'package:flutter/material.dart';

class DropDownUnits extends StatefulWidget {

  @override
  _DropDownUnitsState createState() =>  _DropDownUnitsState();
}

class _DropDownUnitsState extends State<DropDownUnits> {

  List _items =
  [ 'KOM',
    'KG',
    'L',
    'M',
    'M2',
    'M3',
    'Min',
    'Sat',
    'Km',];

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
    return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Jedinična mjera"),

             DropdownButtonFormField(
                value: _currentItem,
                items: _dropDownMenuItems,
                onChanged: changedDropDownItem,
              ),
          ],
        )
    );
  }

  void changedDropDownItem(String selectedItem) {
    setState(() {
      _currentItem = selectedItem;
    });
  }

}