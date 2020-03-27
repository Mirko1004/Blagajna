import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:flutter/material.dart';

addPrinter(BuildContext context){

  return Scaffold(
    appBar: getAppBar(context, Localization.of(context).title_activity_printer_list),

    body:  Column(
        children: <Widget>[
          ],
      ),
  );
}