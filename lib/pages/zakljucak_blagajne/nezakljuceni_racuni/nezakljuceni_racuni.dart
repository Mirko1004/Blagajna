import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/alert_dialogs/alert_dialog.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/period_od_period_do.dart';
import 'package:flutter/material.dart';

getUnclearedBills(BuildContext context){
  return Scaffold(
    appBar: getAppBar(context, Localization.of(context).nezakljuceni_racuni),

    body: Container(
      child: Column(
        children: <Widget>[

          Expanded(
              child:SingleChildScrollView(
                child: PeriodOdPeriodDo(),
              )
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: InkWell(
                onTap: () => getAlertDialog(context, Localization.of(context).zakljuci_racune, Localization.of(context).zakljuci_racune_message),
                child: Container(
                  height: 50.0,
                  decoration: new BoxDecoration(
                    color: Color(0xff0a5c67),
                  ),

                  child: Center(
                    child: Text(Localization.of(context).zakljuci_racune,
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      color: Colors.white,
    ),
  );
}