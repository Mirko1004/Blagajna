import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/common/green_container.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/kupac/kupac_list.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/pisaci/pisaci.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/polog/polog.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/poslovni_prostor/poslovni_prostor_list.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/prodavac/prodavac_list.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/tvrtka/tvrtka.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/zaglavlje_i_podnozje/zaglavlje_i_podnozje_racuna.dart';
import 'package:blagajna/pages/postavke/postavke.dart';
import 'package:flutter/material.dart';

getBasicSettings (BuildContext context) {

  return Scaffold(
    appBar: getDetailAppBar(context, Localization.of(context).title_activity_settings_osnovno,
            () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getSettings(context)))),

    body: Container(
      color: Colors.white,

      child: ListView(
          children: <Widget>[
            getGreenContainer(context, Localization.of(context).title_activity_tvrtka, () => Company()),
            getGreenContainer(context, Localization.of(context).title_activity_printer_list, () => Printers()),
            getGreenContainer(context, Localization.of(context).title_activity_poslovni_prostor, () => OfficeSpace()),
            getGreenContainer(context, Localization.of(context).title_activity_prodavac, () => Seller()),
            getGreenContainer(context, Localization.of(context).title_activity_kupac, () => Customer()),
            getGreenContainer(context, Localization.of(context).title_activity_polog, () => Deposit()),
            getGreenContainer(context, Localization.of(context).title_activity_racun_header_footer, () => HeaderFooter()),
          ],
        ),
    ),
  );
}
