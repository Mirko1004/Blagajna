import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/green_container.dart';
import 'package:blagajna/pages/zakljucak_blagajne/nezakljuceni_racuni/nezakljuceni_racuni.dart';
import 'package:blagajna/pages/zakljucak_blagajne/pregled_zakljucaka/pregled_zakljucaka.dart';
import 'package:flutter/material.dart';

getCashRegisterConclusion(BuildContext context) {

  return Scaffold(

    appBar: getAppBar(context, Localization.of(context).zakljucak_blagajne),

    body: Container(
      color: Colors.white,

      child: Padding(
        padding: const EdgeInsets.only(top:8.0),

        child: Column(
          children: <Widget>[
            getGreenContainer(context, Localization.of(context).nezakljuceni_racuni, () => getUnclearedBills(context)),
            getGreenContainer(context, Localization.of(context).pregled_zakljucaka, () => getReviewConclusion(context)),
          ],
        ),
      ),
    ),
  );
}
