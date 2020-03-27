import 'package:flutter/material.dart';

void getAlertDialogLogin(BuildContext context, String text) {

  var alertDialog = AlertDialog(

    title: Text('Greška'),

    content: Text(text),

    actions: <Widget>[

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
