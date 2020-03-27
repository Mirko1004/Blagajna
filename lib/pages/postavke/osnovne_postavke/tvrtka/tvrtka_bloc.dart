import 'package:blagajna/bloc/base_bloc.dart';
import 'package:blagajna/db/data_source/tvrtka_data_source.dart';
import 'package:blagajna/db/entities/tvrtka_pos.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/tvrtka/tvrtka.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class CompanyBloc extends BaseBloc{

  final BehaviorSubject<TvrtkaPos> companyPos = BehaviorSubject.seeded(TvrtkaPos());

  @override
  void dispose() {
    companyPos.close();
    // TODO: implement dispose
    super.dispose();
  }

  saveCompany(BuildContext context, TvrtkaPos companyPosPos) async {

    int result;
    if (companyPosPos.id != null) {
      result = await TvrtkaDataSource.updateTvrtka(database, companyPosPos);
    } else {
      result = await TvrtkaDataSource.insertTvrtka(database, companyPosPos);
    }

    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Company()));
    }
    else {
      _showAlertDialog(context, 'Status', 'Problem sa spremanjem');
    }
  }

  deleteCompany(BuildContext context, int companyPos) async {

    if (companyPos == null) {
      _showAlertDialog(context,'Status', 'Nije izbrisana kategorija');
      return;
    }

    int result = await TvrtkaDataSource.deleteTvrtka(database, companyPos);
    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Company()));
    } else {
      _showAlertDialog(context, 'Status', 'Greška prilikom brisanja kategorije');
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