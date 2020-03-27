import 'package:blagajna/bloc/base_bloc.dart';
import 'package:blagajna/db/data_source/kupac_data_source.dart';
import 'package:blagajna/db/entities/kupac_pos.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/kupac/kupac_list.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class CustomerBloc extends BaseBloc {

  final BehaviorSubject<KupacPos> customerPos = BehaviorSubject.seeded(KupacPos());

  @override
  void dispose() {
    customerPos.close();
    super.dispose();
  }

  saveCustomer(BuildContext context, KupacPos customerPos) async {

    int result;
    if (customerPos.id != null) {
      result = await KupacDataSource.updateKupac(database, customerPos);
    } else {
      result = await KupacDataSource.insertKupac(database, customerPos);
    }

    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Customer()));
    }
    else {
      _showAlertDialog(context, 'Status', 'Problem sa spremanjem');
    }

  }


  deleteCustomer(BuildContext context, int customerPos) async {

    if (customerPos == null) {
      _showAlertDialog(context,'Status', 'Nije izbrisana kategorija');
      return;
    }

    int result = await KupacDataSource.deleteKupac(database, customerPos);
    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Customer()));
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
