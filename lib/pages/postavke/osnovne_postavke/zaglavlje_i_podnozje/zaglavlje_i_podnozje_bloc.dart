import 'package:blagajna/bloc/base_bloc.dart';
import 'package:blagajna/db/data_source/racun_header_footer_data_source.dart';
import 'package:blagajna/db/entities/racun_header_footer_pos.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/osnovne_postavke.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HeaderFooterBloc extends BaseBloc{

  final BehaviorSubject<RacunHeaderFooterPos> headerFooterPos = BehaviorSubject.seeded(RacunHeaderFooterPos());

  @override
  void dispose() {
    headerFooterPos.close();
    super.dispose();
  }

  saveHeaderFooter(BuildContext context, RacunHeaderFooterPos headerFooterPos) async {

    int result;
    if (headerFooterPos.id != null) {
      result = await RacunHeaderFooterDataSource.updateHeaderFooter(database, headerFooterPos);
    } else {
      result = await RacunHeaderFooterDataSource.insertHeaderFooter(database, headerFooterPos);
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