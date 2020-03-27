import 'package:flutter/material.dart';

getTextFormKeyboardNumbersTitle(String text, String values){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(text),

      SizedBox(height: 5.0),

      Container(
        height: 35.0,
        child: TextFormField(
            keyboardType: TextInputType.number,
            initialValue: values,
            decoration: InputDecoration(
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