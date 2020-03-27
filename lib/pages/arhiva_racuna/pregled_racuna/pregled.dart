import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/buttons/exportiraj_ispis.dart';
import 'package:flutter/material.dart';

getReview(BuildContext context){

  return Scaffold(
    appBar: getAppBar(context, Localization.of(context).title_activity_print_to_screen),
    body: Container(
      child: Column(
        children: <Widget>[

          Expanded(
            child: SingleChildScrollView(
            ),
          ),

          SafeArea(
            child: getExportPrint(context),
          )

        ],
      ),

      color: Colors.white,
    ),
  );

}