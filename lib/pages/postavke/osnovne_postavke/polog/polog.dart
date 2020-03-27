import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/data_source/polog_data_source.dart';
import 'package:blagajna/db/entities/polog_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/osnovne_postavke.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/polog/polog_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Deposit extends StatefulWidget {
  @override
  _DepositState createState() => _DepositState();
}

class _DepositState extends State<Deposit> {

  Database database = Injection.injector.get<Database>();
  final DepositBloc _depositBloc = DepositBloc();
  PologPos depositPos = PologPos();
  List<PologPos> depositList;
  int count = 0;

  @override
  Widget build(BuildContext context) {

    if (depositList == null) {
      depositList = List<PologPos>();
      updateListView();
    }

    return BaseBlocScaffoldWidget(

      _depositBloc,

      getDetailAppBar(context, Localization.of(context).title_activity_polog,
              () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getBasicSettings(context)))),

      Column(
        children: <Widget>[

          Expanded(
              child: getPolog()
          ),

          SafeArea(
            child: getSaveButton(context),
          ),

        ],
      ),
    );
  }

  ListView getPolog() {

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text('Polog'),

                  SizedBox(height: 10.0),

                  Container(
                    height: 35.0,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        initialValue:(this.depositList[position].polog_polog.toString()),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            border: OutlineInputBorder(
                            )
                        )
                    ),
                  ),
                ],
              ),
            );
        },
    );
  }

  void updateListView() {

    Future<List<PologPos>> depositListFuture = PologDataSource.getPolog(database);
    depositListFuture.then((depositList) {
      setState(() {
        this.depositList = depositList;
        this.count = depositList.length;
      });
    }
    );
  }

  getSaveButton( BuildContext context) {
    return MaterialButton(

      onPressed: () {

        setState(() {
          _depositBloc.saveDeposit(context, depositPos);
        });
      },

      child: Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),

        child: Container(
          height: 50.0,
          decoration: new BoxDecoration(
            color: Color(0xff0a5c67),
          ),

          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.save,
                    color: Colors.white),

                SizedBox(width: 10.0),

                Text(Localization.of(context).save,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }





}








