import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/arhiva_racuna/pregled_racuna/pregled.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/buttons/pregled_ispis.dart';
import 'package:blagajna/pages/common/period_od_period_do.dart';
import 'package:flutter/material.dart';

getReviewConclusion(BuildContext context){
  return Scaffold(
    appBar: getAppBar(context, Localization.of(context).pregled_zakljucaka),

    body: Container(
      child: Column(
        children: <Widget>[

          Expanded(
              child:SingleChildScrollView(
                child: PeriodOdPeriodDo(),
              )
          ),

           SafeArea(
              child: getReviewPrint(context, () => getReview(context))
           ),

        ],
      ),

      color: Colors.white,
    ),
  );
}