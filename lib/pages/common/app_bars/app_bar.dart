import 'package:flutter/material.dart';

getAppBar(BuildContext context, String title) {
  return AppBar(

    elevation: 0.0,
    titleSpacing: 0.0,
    centerTitle: false,
    backgroundColor: Colors.white,
    brightness: Brightness.dark,

    leading: InkWell(
      onTap: () => Navigator.of(context).pop(),

      child: Image.asset("assets/images/back_arrow.png",
        height: 23.0,
        width: 23.0,
      ),
    ),

    title: Text( title,
        style: TextStyle(
          color: Colors.black
        ),
    ),
  );
}