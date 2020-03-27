import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/alert_dialogs/alert_dialog.dart';
import 'package:flutter/material.dart';

getReviewPrint(BuildContext context, Function goTo){

  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () =>
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => goTo())),
            child: Container(
              height: 50.0,
              decoration: new BoxDecoration(
                color: Color(0xff0a5c67),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.phone_android,
                      color: Colors.white),

                  SizedBox(width: 10.0),

                  Text(Localization.of(context).preview,
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
        ),

        SizedBox(width: 10.0),

        Expanded(
          child: InkWell(
            onTap: () => getAlertDialog(context,'Računi', 'Ispiši račune?'),
            child: Container(
              height: 50.0,
              decoration: new BoxDecoration(
                color: Color(0xffd62608),
              ),

              child: Row(
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
        ),
      ],
    ),
  );
}