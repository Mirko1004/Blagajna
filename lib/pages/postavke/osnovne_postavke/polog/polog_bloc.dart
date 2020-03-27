import 'package:blagajna/bloc/base_bloc.dart';
import 'package:blagajna/db/data_source/polog_data_source.dart';
import 'package:blagajna/db/entities/polog_pos.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/osnovne_postavke.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class DepositBloc extends BaseBloc{

  final BehaviorSubject<PologPos> depositPos = BehaviorSubject.seeded(PologPos());

  @override
  void dispose() {
    depositPos.close();
    super.dispose();
  }

  saveDeposit(BuildContext context, PologPos depositPos) async {

    int result;
    if (depositPos.id != null) {
      result = await PologDataSource.updatePolog(database, depositPos);
    } else {
      result = await PologDataSource.insertPolog(database, depositPos);
    }

    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> getBasicSettings(context)));
    }
    else {
      _showAlertDialog(context, 'Status', 'Problem sa spremanjem');
    }
  }

  _showAlertDialog(BuildContext context, String title, String message) {

    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
        context: context,
        builder: (_) => alertDialog
    );
  }

}