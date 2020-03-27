import 'package:blagajna/bloc/base_bloc.dart';
import 'package:blagajna/db/data_source/poslovni_prostor_data_source.dart';
import 'package:blagajna/db/entities/poslovni_prostor_pos.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/poslovni_prostor/poslovni_prostor_list.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class OfficeSpaceBloc extends BaseBloc{

  final BehaviorSubject<PoslovniProstorPos> officeSpace = BehaviorSubject.seeded(PoslovniProstorPos());

  @override
  void dispose() {
    officeSpace.close();
    super.dispose();
  }

  saveOffice(BuildContext context, PoslovniProstorPos officePos) async {

    int result;
    if (officePos.id != null) {
      result = await PoslovniProstorDataSource.updatePoslovniProstor(database, officePos);
    } else {
      result = await PoslovniProstorDataSource.insertPoslovniProstor(database, officePos);
    }

    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> OfficeSpace()));
    }
    else {
      _showAlertDialog(context, 'Status', 'Problem sa spremanjem');
    }

  }


  deleteOffice(BuildContext context, int officePos) async {

    if (officePos == null) {
      _showAlertDialog(context,'Status', 'Nije izbrisana kategorija');
      return;
    }

    int result = await PoslovniProstorDataSource.deletePoslovniProstor(database, officePos);
    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> OfficeSpace()));
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