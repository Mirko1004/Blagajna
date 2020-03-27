import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/entities/article_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/drop_down/drop_down_jedinicne_mjere.dart';
import 'package:blagajna/pages/common/drop_down/drop_down_kategorija_artikla.dart';
import 'package:blagajna/pages/common/drop_down/drop_down_porezne_stope.dart';
import 'package:blagajna/pages/common/text_forms/text_form_keyboard_numbers_title_value.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/artikli/artikli_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AddArticle extends StatefulWidget {

  final ArticlePosLarge artikliPos;
  AddArticle(this.artikliPos);

  @override
  _AddArticleState createState() => _AddArticleState(this.artikliPos);
}

class _AddArticleState extends State<AddArticle> {

  final ArticlesBloc _articlesBloc = ArticlesBloc();
  Database database = Injection.injector.get<Database>();
  ArticlePosLarge articlePosLarge;
  TextEditingController titleController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  _AddArticleState(this.articlePosLarge);

  @override
  Widget build(BuildContext context) {

    titleController.text = articlePosLarge.item_name;
    codeController.text = articlePosLarge.item_code;


    return BaseBlocScaffoldWidget(

      _articlesBloc,

      getAppBar(context, Localization.of(context).article),

      Column(
          children: <Widget>[

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: <Widget>[

                      getTextForm2(Localization.of(context).item_name, titleController, updateTitle),
                      getTextForm2(Localization.of(context).code, codeController, updateCode),
                      getTextForm2(Localization.of(context).barcode, null, null),

                      SizedBox(height: 10.0),

                      DropDownUnits(),

                      SizedBox(height: 20.0),

                      getTextFormKeyboardNumbersTitle(Localization.of(context).item_mp_price,'0,00'),
                      getTextFormKeyboardNumbersTitle(Localization.of(context).popust,'0,00'),

                      SizedBox(height: 20.0),

                      DropDownTaxes(),

                      SizedBox(height: 20.0),

                      DropDownCategoriesArticle(),

                      SizedBox(height: 20.0),

                      getTextFormKeyboardNumbersTitle(Localization.of(context).povratna_naknada,'0,00'),

                    ],
                  ),
                )
            ),

            SafeArea(
              child: getDeleteSave(context),
            ),

          ],
        ),
    );
  }

  updateTitle(){
    articlePosLarge.item_name = titleController.text;
  }

  updateCode(){
    articlePosLarge.item_code = codeController.text;
  }

  _showAlertDialog(String title, String message) {

    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
        context: context,
        builder: (_) => alertDialog
    );
  }

  getDeleteSave(BuildContext context){

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  getAlertDialog(context, 'Obriši', 'Obriši artikl'  + ' '  + articlePosLarge.item_name + '?');
                });
              },
              child: Container(
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Color(0xffd62608),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.delete,
                        color: Colors.white),

                    SizedBox(width: 10.0),

                    Text(Localization.of(context).delete,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(width: 10.0),

          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  if(titleController.text.isEmpty ){
                    _showAlertDialog('Greška', Localization.of(context).naziv_artikla_obvezan);
                  }
                  else {
                    _articlesBloc.saveArticles(context, articlePosLarge);
                  }
                });
              },
              child: Container(
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Color(0xff0a5c67),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.save,
                        color: Colors.white),

                    SizedBox(width: 10.0),

                    Text(Localization.of(context).save,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 17.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  getAlertDialog(BuildContext context, String title, String text) {

    var alertDialog = AlertDialog(

      title: Text(title),

      content: Text(text),

      actions: <Widget>[

        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text('PONIŠTI'),
        ),

        FlatButton(
          onPressed: () => _articlesBloc.deleteArticles(context, articlePosLarge.id),
          child: Text('OK'),
        ),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  getTextForm2(String hint, TextEditingController controller, Function update){

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

        Container(
          height: 35.0,
          child: TextField(
              controller: controller,
              onChanged: (value) {
                update();
              },
              decoration: InputDecoration(
                  hintText: hint,
                  contentPadding: EdgeInsets.all(8.0),
                  border: OutlineInputBorder(
                  )
              )
          ),
        ),

        SizedBox(height: 20.0)
      ],
    );
  }

}

