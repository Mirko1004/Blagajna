import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/buttons/add_button.dart';
import 'package:blagajna/pages/common/search_widget.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/pisaci/dodaj_pisac.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/pisaci/pisaci_bloc.dart';
import 'package:flutter/material.dart';

class Printers extends StatefulWidget {
  @override
  _PrintersState createState() => _PrintersState();
}

class _PrintersState extends State<Printers> {

  final PrinterBloc _printerBloc = PrinterBloc();
  bool _check = false;

  @override
  Widget build(BuildContext context) {

    return BaseBlocScaffoldWidget(

      _printerBloc,

      getAppBar(context, Localization.of(context).title_activity_printer_list),

       Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[

                      Checkbox(
                        onChanged: (bool tap){

                          setState(() {
                            _check = tap;
                          });
                        },
                        value: _check,
                      ),

                      Text(Localization.of(context).print_artikla_u_jednom_redu),

                      SizedBox(height: 10.0),

                    ],
                  ),

                  getSearchWidget(context),

                ],
              ),
            ),

            SafeArea(
                child: getAddButton(context, () => addPrinter(context))
            )

          ],
        ),
    );
  }
}
