import 'package:blagajna/localization/localization.dart';
import 'package:flutter/material.dart';

getSearchWidget(BuildContext context){

  return  Padding(
    padding: const EdgeInsets.all(8.0),

    child: Container(
      height: 35.0,

      child: TextFormField(
          decoration: InputDecoration(
              labelText: Localization.of(context).search,
              border: OutlineInputBorder(
              )
          ),
      ),
    ),
  );
}