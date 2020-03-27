import 'package:flutter/material.dart';

class DropDownTaxes extends StatefulWidget {

  @override
  _DropDownTaxesState createState() =>  _DropDownTaxesState();
}

class _DropDownTaxesState extends State<DropDownTaxes> {

  List _items =
  [ 'PDV 5%',
    'PDV 13%',
    'PDV 13%, PPOT 3%',
    'PDV 25%',
    'PDV 25%, PPOT 3%',
    'PDV 0% ',];

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

            Text("Porezna stopa"),

            DropdownButton(
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