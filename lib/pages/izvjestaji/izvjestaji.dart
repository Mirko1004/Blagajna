import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/green_container.dart';
import 'package:blagajna/pages/izvjestaji/ispis_dnevnog_prometa/ispis_dnevnog_prometa.dart';
import 'package:blagajna/pages/izvjestaji/izvjestaji_bloc.dart';
import 'package:blagajna/pages/izvjestaji/pregled_prometa_po_artiklima/pregled_prometa_po_artiklima.dart';
import 'package:blagajna/pages/izvjestaji/promet_po_vrsti_placanja/promet_po_vrsti_placanja.dart';
import 'package:flutter/material.dart';

class Reports extends StatefulWidget {
  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {

  final ReportsBloc _reportsBloc = ReportsBloc();

  @override
  Widget build(BuildContext context) {

    return BaseBlocScaffoldWidget(

      _reportsBloc,

      getAppBar(context, Localization.of(context).izvjestaji),

       Padding(
          padding: const EdgeInsets.only(top:8.0),

          child: Column(
            children: <Widget>[

              getGreenContainer(context, Localization.of(context).ispis_dnevnog_prometa, () => DnevniPromet()),
              getGreenContainer(context, Localization.of(context).pregled_prometa_po_artiklima, () => ReviewTradeArticles()),
              getGreenContainer(context, Localization.of(context).pregled_prometa_po_vrsti_placnja, () => TypeOfPayment()),

            ],
          ),
        ),

    );
  }
}







