import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/text_forms/text_form_container.dart';
import 'package:blagajna/pages/postavke/podesenja_za_fiskalizaciju/podesenja_za_fiskalizaciju_bloc.dart';
import 'package:flutter/material.dart';

class FiscalSettings extends StatefulWidget {
  @override
  _FiscalSettingsState createState() => _FiscalSettingsState();
}

class _FiscalSettingsState extends State<FiscalSettings> {

  final FiscalSettingsBloc _fiscalSettingsBloc = FiscalSettingsBloc();
  bool _check = false;
  bool _check2 = false;
  bool _check3 = false;

  @override
  Widget build(BuildContext context) {

    return BaseBlocScaffoldWidget(

      _fiscalSettingsBloc,

      getAppBar(context, Localization.of(context).title_activity_fiskalizacija),

       SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text(Localization.of(context).putanja_do_test_certifikata),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 150.0,
                      color: Color(0xff0a5c67),
                      child: Center(
                        child: Text(Localization.of(context).download_cert,
                          style: TextStyle(
                              color: Colors.white

                          ),),
                      ),
                    ),
                  ],
                ),

                Text(Localization.of(context).putanja_do_test_certifikata_hint),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 150.0,
                      color: Color(0xff0a5c67),
                      child: Center(
                        child: Text(Localization.of(context).izaberi_cert,
                          style: TextStyle(
                              color: Colors.white

                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.0),

                getTextForm( Localization.of(context).test_password),

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

                    Text(Localization.of(context).ukljuci_fiskalizaciju)

                  ],
                ),

                Row(
                  children: <Widget>[

                    Checkbox(
                      onChanged: (bool tap){

                        setState(() {
                          _check2 = tap;
                        });
                      },
                      value: _check2,
                    ),

                    Text(Localization.of(context).produkcijska_fiskalizacija_omogucena)

                  ],
                ),


                SizedBox(height: 10.0),

                Container(
                  height: 50.0,
                  width: 110,
                  color: Color(0xffd62608),
                  child: Center(
                    child: Text(
                      Localization.of(context).echo,
                      style: TextStyle(
                          color: Colors.white
                      ),

                    ),

                  ),

                ),

                SizedBox(height: 10.0),

                Container(
                  height: 50.0,
                  width: 150,
                  color: Color(0xffd62608),
                  child: Center(
                    child: Text(
                      Localization.of(context).pobrisi_certifikate,
                      style: TextStyle(
                          color: Colors.white
                      ),

                    ),

                  ),

                ),

                SizedBox(height: 10.0),

                Row(
                    children: <Widget>[

                      Checkbox(
                        onChanged: (bool tap){

                          setState(() {
                            _check3 = tap;
                          });
                        },
                        value: _check3,
                      ),

                      Expanded(
                            child: Text(Localization.of(context).skip_fiskal_download,
                            ),
                          ),

                    ],
                  ),

              ],
            ),
          ),
       ),
    );
  }
}






