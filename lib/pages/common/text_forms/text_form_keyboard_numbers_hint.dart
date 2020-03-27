import 'package:flutter/material.dart';

getTextFormKeyboardNumbersHint(String hint, TextEditingController controller){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      Container(
        height: 35.0,
        child: TextFormField(
          controller: controller,
            keyboardType: TextInputType.number,
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