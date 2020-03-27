import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/entities/kategorija_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/kategorije/kategorije_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AddCategories extends StatefulWidget {

  final KategorijaPos kategorijaPos;

  AddCategories(this.kategorijaPos);

  @override
  _AddCategoriesState createState() => _AddCategoriesState(this.kategorijaPos);
}

class _AddCategoriesState extends State<AddCategories> {

  final CategoriesBloc _categoriesBloc = CategoriesBloc();
  Database database = Injection.injector.get<Database>();
  KategorijaPos categoriesPos;
  TextEditingController titleController = TextEditingController();

  _AddCategoriesState(this.categoriesPos);

  @override
  Widget build(BuildContext context) {

    titleController.text = categoriesPos.kategorija_name;

    return BaseBlocScaffoldWidget(

      _categoriesBloc,

       getAppBar(context, Localization.of(context).title_activity_add_edit_kategorija),

      Column(
          children: <Widget>[

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Text(Localization.of(context).item_name),

                      SizedBox(height: 5.0),

                     getTextForm(),

                      SizedBox(height: 10.0)
                    ],
                  ),
                )
            ),

            SafeArea(
              child: getDeleteSave(context)
            ),

          ],
        ),
    );
  }


  updateTitle(){
    categoriesPos.kategorija_name = titleController.text;
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
                  getAlertDialog(context, 'Obriši', Localization.of(context).delete_kategorija  + ' '  + categoriesPos.kategorija_name + '?');
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
                    _showAlertDialog('Greška', Localization.of(context).naziv_obvezan_kategorija);
                  }
                  else {
                   _categoriesBloc.saveCategories(context, categoriesPos);
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
          onPressed: () => _categoriesBloc.deleteCategories(context, categoriesPos.id),
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

  getTextForm(){

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

        Container(
          height: 35.0,
          child: TextField(
            controller: titleController,
              onChanged: (value) {
              updateTitle();
              },
              decoration: InputDecoration(
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







