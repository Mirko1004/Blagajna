import 'package:blagajna/localization/localization.dart';
import 'package:flutter/material.dart';

getAddButton( BuildContext context, Function goTo) {
  return MaterialButton(

    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => goTo())),
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

              Text(Localization.of(context).add,
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