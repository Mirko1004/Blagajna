import 'package:blagajna/bloc/base_bloc.dart';
import 'package:blagajna/db/data_source/article_pos_data_source.dart';
import 'package:blagajna/db/entities/article_pos.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/artikli/artikli_list.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ArticlesBloc extends BaseBloc{

  final BehaviorSubject<ArticlePosLarge> articlesPosLarge = BehaviorSubject.seeded(ArticlePosLarge());

  @override
  void dispose() {
    articlesPosLarge.close();
    super.dispose();
  }

  saveArticles(BuildContext context, ArticlePosLarge articlesPosLarge) async {

    int result;
    if (articlesPosLarge.id != null) {
      result = await ArticlePosDataSource.updateArticle(database, articlesPosLarge);
    } else {
      result = await ArticlePosDataSource.insertArticle(database, articlesPosLarge);
    }

    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Articles()));
    }
    else {
      _showAlertDialog(context, 'Status', 'Problem sa spremanjem');
    }
  }


  deleteArticles(BuildContext context, int articlesPos) async {

    if (articlesPos == null) {
      _showAlertDialog(context,'Status', 'Nije izbrisan artikl');
      return;
    }

    int result = await ArticlePosDataSource.deleteArticle(database, articlesPos);
    if (result != 0) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Articles()));
    } else {
      _showAlertDialog(context, 'Status', 'Greška prilikom brisanja artikla');
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