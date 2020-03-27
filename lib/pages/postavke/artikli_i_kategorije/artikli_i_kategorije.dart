import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/common/green_container.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/artikli/artikli_list.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/kategorije/kategorije_list.dart';
import 'package:blagajna/pages/postavke/postavke.dart';
import 'package:flutter/material.dart';

getArticlesAndCategories(BuildContext context) {

  return Scaffold(

    appBar: getDetailAppBar(context, Localization.of(context).title_activity_settings_artikli_kategorije,
            () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getSettings(context)))),

    body: Container(

      child: Padding(
        padding: const EdgeInsets.only(top:8.0),

        child: Column(
          children: <Widget>[
            getGreenContainer(context, Localization.of(context).title_activity_kategorije, () => Categories()),
            getGreenContainer(context, Localization.of(context).articles, () => Articles()),
          ],
        ),
      ),

      color: Colors.white,
    ),
  );
}
