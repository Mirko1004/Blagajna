import 'package:flutter/material.dart';

getTextForm(String hint){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      Container(
        height: 35.0,
        child: TextFormField(
            decoration: InputDecoration(
                hintText: hint,
                contentPadding: EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                )
            )
        ),
      ),

      SizedBox(height: 20.0)
    ],
  );
}
