import 'package:blagajna/bloc/base_bloc.dart';
import 'package:blagajna/db/data_source/kategorija_data_source.dart';
import 'package:blagajna/db/entities/kategorija_pos.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/kategorije/kategorije_list.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class CategoriesBloc extends BaseBloc {

  final BehaviorSubject<KategorijaPos> categoriesPos = BehaviorSubject.seeded(KategorijaPos());

  @override
  void dispose() {
    categoriesPos.close();
    super.dispose();
  }

  saveCategories(BuildContext context, KategorijaPos categoriesPos) async {

    int result;
    if (categoriesPos.id != null) {
      result = await KategorijaDataSource.updateKategorija(database, categoriesPos);
    } else {
      result = await KategorijaDataSource.insertKategorija(database, categoriesPos);
    }

    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Categories()));
    }
    else {
      _showAlertDialog(context, 'Status', 'Problem sa spremanjem');
    }

  }


   deleteCategories(BuildContext context, int categoriesPos) async {

    if (categoriesPos == null) {
      _showAlertDialog(context,'Status', 'Nije izbrisana kategorija');
      return;
    }

    int result = await KategorijaDataSource.deleteKategorija(database, categoriesPos);
    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Categories()));
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