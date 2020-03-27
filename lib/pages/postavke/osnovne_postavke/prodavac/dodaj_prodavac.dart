import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/entities/prodavac_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/prodavac/prodavac_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AddSeller extends StatefulWidget {

  final ProdavacPos prodavacPos;

  AddSeller(this.prodavacPos);

  @override
  _AddSellerState createState() => _AddSellerState(this.prodavacPos);
}

class _AddSellerState extends State<AddSeller> {
  final SellerBloc _sellerBloc = SellerBloc();
  Database database = Injection.injector.get<Database>();

  ProdavacPos sellerPos;
  TextEditingController nameController = TextEditingController();
  TextEditingController oibController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _AddSellerState(this.sellerPos);

  bool _check = false;
  bool _check2 = false;

  @override
  Widget build(BuildContext context) {

    nameController.text = sellerPos.prodavac_name;
    oibController.text = sellerPos.prodavac_oib;
    passwordController.text = sellerPos.prodavac_password;

    return BaseBlocScaffoldWidget(

      _sellerBloc,

      getAppBar(context, Localization.of(context).title_activity_prodavac),

       Column(
          children: <Widget>[

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: <Widget>[

                      getTextForm(Localization.of(context).ime_prezime, nameController, updateName),
                      getTextForm(Localization.of(context).tvrtka_oib, oibController, updateOib),
                      getTextForm(Localization.of(context).password, passwordController, updatePassword),
                      getTextForm(Localization.of(context).password_retipe, passwordController, updatePassword),

                      Row(
                        children: <Widget>[

                          Checkbox(
                            onChanged: (bool tap){
                              setState(() {
                                _check = tap;
                              });
                            },
                            value: _check,
                          ),

                          Text(Localization.of(context).administrator)

                        ],
                      ),

                      Row(
                        children: <Widget>[

                          Checkbox(
                            onChanged: (bool tap){
                              setState(() {
                                _check2 = tap;
                              });
                            },
                            value: _check2,
                          ),

                          Text(Localization.of(context).prodavac_aktivan)

                        ],
                      ),
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

  updateName(){
    sellerPos.prodavac_name = nameController.text;
  }

  updateOib(){
    sellerPos.prodavac_oib = oibController.text;
  }

  updatePassword(){
    sellerPos.prodavac_password = passwordController.text;
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
                  getAlertDialog(context, 'Obriši', Localization.of(context).delete_prodavac  + ' '  + sellerPos.prodavac_name+ '?');
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
                  if(nameController.text.isEmpty){
                    _showAlertDialog('Greška', Localization.of(context).ime_prezime_obvezno);
                  }
                  else {
                    _sellerBloc.saveSeller(context, sellerPos);
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
          onPressed: () => _sellerBloc.deleteSeller(context, sellerPos.id),
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

  getTextForm(String hint, TextEditingController controller, Function update){

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


  getTextFormNumbers(String hint, TextEditingController controller, Function update){

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

        Container(
          height: 35.0,
          child: TextField(
            keyboardType: TextInputType.number,
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

