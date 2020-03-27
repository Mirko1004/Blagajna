import 'package:flutter/material.dart';

void getAlertDialog(BuildContext context, String title, String text) {

  var alertDialog = AlertDialog(

    title: Text(title),

    content: Text(text),

    actions: <Widget>[

      FlatButton(
        onPressed: () => Navigator.pop(context),
        child: Text('PONIŠTI'),
      ),

      FlatButton(
        onPressed: () => Navigator.pop(context),
        child: Text('OK'),
      ),
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
