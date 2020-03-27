import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/arhiva_racuna/nefiskalizirani_racuni.dart';
import 'package:blagajna/pages/arhiva_racuna/pregled_racuna/pregled_racuna.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/green_container.dart';
import 'package:flutter/material.dart';

getBillArchive(BuildContext context) {

  return Scaffold(

    appBar: getAppBar(context, Localization.of(context).arhiva_racuna),

    body: Container(
      color: Colors.white,

      child: Padding(
        padding: const EdgeInsets.only(top:8.0),

        child: Column(
          children: <Widget>[
            getGreenContainer(context, Localization.of(context).title_activity_nefiskalizirani_racuni, () => getNonFiscalBills(context)),
            getGreenContainer(context, Localization.of(context).title_activity_pregled_racuna, () => BillReview()),
          ],
        ),
      ),
    ),
  );
}
