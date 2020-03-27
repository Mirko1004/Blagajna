import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/arhiva_racuna/arhiva_racuna.dart';
import 'package:blagajna/pages/blagajna/blagajna.dart';
import 'package:blagajna/pages/common/green_container.dart';
import 'package:blagajna/pages/home_page/home_page_bloc.dart';
import 'package:blagajna/pages/izvjestaji/izvjestaji.dart';
import 'package:blagajna/pages/login/login.dart';
import 'package:blagajna/pages/postavke/postavke.dart';
import 'package:blagajna/pages/zakljucak_blagajne/zakljucak_blagajne.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomePageBloc _homePageBloc = HomePageBloc();

  @override
  Widget build(BuildContext context) {
    return BaseBlocScaffoldWidget(

      _homePageBloc,

      AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,

        leading: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login())),

          child: Image.asset("assets/images/back_arrow.png",
            height: 23.0,
            width: 23.0,
          ),
        ),

        title: Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(Localization.of(context).app_name,
                  style: TextStyle(
                      color: Colors.black
                  )),

              Text('Administrator / Test poslovni prostor',
                  style: TextStyle(
                      color: Colors.grey,
                    fontSize: 16.0
                  )),
            ],
          ),
        ),
      ),

      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:8.0, bottom: 8.0 ),

          child: Column(
              children: <Widget>[

                SizedBox(height: 10.0),

                MaterialButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getCashRegister(context))),
                  child: Container(
                    height: 100.0,
                    color: Color(0xffd62608),

                    child: Center(

                      child: Text( Localization.of(context).blagajna,
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 25.0
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 13.0),

                getGreenContainer(context, Localization.of(context).arhiva_racuna, () => getBillArchive(context)),

                getGreenContainer(context, Localization.of(context).zakljucak_blagajne, () => getCashRegisterConclusion(context)),

                getGreenContainer(context, Localization.of(context).izvjestaji, () => Reports()),

                getGreenContainer(context, Localization.of(context).postavke, () => getSettings(context)),

              ],
            ),
        ),
      ),
    );
  }
}


