import 'package:blagajna/bloc/base_bloc.dart';
import 'package:blagajna/db/data_source/prodavac_data_source.dart';
import 'package:blagajna/db/entities/prodavac_pos.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/prodavac/prodavac_list.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class SellerBloc extends BaseBloc{

  final BehaviorSubject<ProdavacPos> sellerPos = BehaviorSubject.seeded(ProdavacPos());

  @override
  void dispose() {
    sellerPos.close();
    super.dispose();
  }

  saveSeller(BuildContext context, ProdavacPos sellerPos) async {

    int result;
    if (sellerPos.id != null) {
      result = await ProdavacDataSource.updateProdavac(database, sellerPos);
    } else {
      result = await ProdavacDataSource.insertProdavac(database, sellerPos);
    }

    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Seller()));
    }
    else {
      _showAlertDialog(context, 'Status', 'Problem sa spremanjem');
    }

  }


  deleteSeller(BuildContext context, int sellerPos) async {

    if (sellerPos == null) {
      _showAlertDialog(context,'Status', 'Nije izbrisana kategorija');
      return;
    }

    int result = await ProdavacDataSource.deleteProdavac(database, sellerPos);
    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Seller()));
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