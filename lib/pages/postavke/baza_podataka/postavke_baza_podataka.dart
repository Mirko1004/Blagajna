import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/postavke/baza_podataka/postavke_baze_podataka_bloc.dart';
import 'package:flutter/material.dart';

class DatabaseSettings extends StatefulWidget {
  @override
  _DatabaseSettingsState createState() => _DatabaseSettingsState();
}

class _DatabaseSettingsState extends State<DatabaseSettings> {

  final DatabaseSettingsBloc _databaseSettingsBloc = DatabaseSettingsBloc();

  @override
  Widget build(BuildContext context) {

    return BaseBlocScaffoldWidget(

      _databaseSettingsBloc,

      getAppBar(context, Localization.of(context).title_activity_settings_database),

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          getContainer(context, Localization.of(context).export_database ),
          getContainer(context, Localization.of(context).import_database),
          getContainer(context, Localization.of(context).upload_database_button_title),
          getContainer(context, Localization.of(context).download_database_button_title),

          SizedBox(height: 10.0),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Localization.of(context).sync_errors_text),
          ),

          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Container(
              height: 50.0,
              width: 140.0,
              color: Color(0xffd62608),

              child: Center(
                child: Text(
                  Localization.of(context).sync_errors,
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),

            ),
          )
        ],
      ),
    );
  }

  getContainer( BuildContext context, String text) {
    return MaterialButton(

      onPressed: null,
      child: Padding(
        padding: EdgeInsets.only(top: 5.0),

        child: Container(
          height: 50.0,
          decoration: new BoxDecoration(
            color: Color(0xff0a5c67),
          ),

          child: Center(
            child: Text(text,
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 15.0),
            ),
          ),
        ),
      ),
    );
  }
}





