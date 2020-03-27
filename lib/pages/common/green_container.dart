import 'package:flutter/material.dart';

getGreenContainer( BuildContext context, String text, Function goTo) {
  return MaterialButton(

    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => goTo())),
    child: Padding(
      padding: EdgeInsets.only(top: 5.0),

        child: Container(
            height: 50.0,
            decoration: new BoxDecoration(
              color: Color(0xff0a5c67),
            ),

            child: Center(
                child: Text(text,
                    style: TextStyle(
                        color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 15.0),
                ),
            ),
          ),
    ),
  );
}
