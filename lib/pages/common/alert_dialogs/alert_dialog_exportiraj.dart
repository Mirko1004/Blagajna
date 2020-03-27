import 'package:blagajna/localization/localization.dart';
import 'package:flutter/material.dart';

void getAlertDialogExport(BuildContext context) {

  var alertDialog = AlertDialog(

    content: Text(Localization.of(context).export_to_pdf),

    actions: <Widget>[

      FlatButton(
        onPressed: () => Navigator.pop(context),
        child: Text(Localization.of(context).save_pdf),
      ),

      FlatButton(
        onPressed: () => Navigator.pop(context),
        child: Text(Localization.of(context).send_pdf_by_mail),
      ),
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
