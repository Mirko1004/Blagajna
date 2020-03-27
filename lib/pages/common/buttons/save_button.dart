import 'package:blagajna/localization/localization.dart';
import 'package:flutter/material.dart';

getSaveButton( BuildContext context) {
  return MaterialButton(

    onPressed: () => Navigator.pop(context),
    child: Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),

      child: Container(
        height: 50.0,
        decoration: new BoxDecoration(
          color: Color(0xff0a5c67),
        ),

        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.save,
              color: Colors.white),

              SizedBox(width: 10.0),

              Text(Localization.of(context).save,
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 15.0),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}