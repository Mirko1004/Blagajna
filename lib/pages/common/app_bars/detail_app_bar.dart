import 'package:flutter/material.dart';

getDetailAppBar(BuildContext context, String title, Function goTo) {
  return AppBar(

    elevation: 0.0,
    titleSpacing: 0.0,
    centerTitle: false,
    backgroundColor: Colors.white,
    brightness: Brightness.dark,

    leading: InkWell(
      onTap: () => goTo(),

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