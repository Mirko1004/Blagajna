import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/common/green_container.dart';
import 'package:blagajna/pages/home_page/home_page.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/artikli_i_kategorije.dart';
import 'package:blagajna/pages/postavke/baza_podataka/postavke_baza_podataka.dart';
import 'package:blagajna/pages/postavke/podesenja_za_fiskalizaciju/podesenja_za_fiskalizaciju.dart';
import 'package:flutter/material.dart';
import 'osnovne_postavke/osnovne_postavke.dart';

getSettings (BuildContext context) {

  return Scaffold(

      appBar:  getDetailAppBar(context,Localization.of(context).title_activity_settings ,
              () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()))),


      body: SingleChildScrollView(
          child:  Padding(
                padding: const EdgeInsets.only(top:8.0, bottom:8.0),

                child: Column(
                  children: <Widget>[

                    getGreenContainer(context, Localization.of(context).title_activity_settings_osnovno, () => getBasicSettings(context)),
                     getGreenContainer(context, Localization.of(context).title_activity_settings_artikli_kategorije, () => getArticlesAndCategories(context)),
                     getGreenContainer(context, Localization.of(context).title_activity_fiskalizacija, () => FiscalSettings()),
                     getGreenContainer(context, Localization.of(context).title_activity_settings_database, () => DatabaseSettings()),
                     getGreenContainer(context, Localization.of(context).license_message, () => getSettings(context)),

                  ],
                ),
              ),
        ),
    );
}


