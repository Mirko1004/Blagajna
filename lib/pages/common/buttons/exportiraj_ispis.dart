import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/alert_dialogs/alert_dialog_exportiraj.dart';
import 'package:flutter/material.dart';

getExportPrint(BuildContext context){

  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () =>  getAlertDialogExport(context),
            child: Container(
              height: 50.0,
              decoration: new BoxDecoration(
                color: Color(0xff0a5c67),
              ),

              child:  Center(
                child: Text(Localization.of(context).export_to_pdf,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 13.0),
                      ),
              ),
            ),
          ),
        ),

         SizedBox(width: 10.0),

         Expanded(
           child: Container(
              height: 50.0,
              decoration: new BoxDecoration(
                color: Color(0xffd62608),
              ),

              child:   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.print,
                        color: Colors.white),

                    SizedBox(width: 10.0),

                    Text(Localization.of(context).print,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 17.0),
                    ),
                  ],
                ),
           ),
         ),
      ],
    ),
  );
}