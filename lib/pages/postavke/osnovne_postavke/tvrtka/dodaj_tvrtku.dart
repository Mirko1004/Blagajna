import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/entities/tvrtka_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/buttons/save_button.dart';
import 'package:blagajna/pages/common/drop_down/drop_down_vrste_obveznika.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/tvrtka/tvrtka_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AddCompany extends StatefulWidget {

  final TvrtkaPos tvrtkaPos;
  AddCompany(this.tvrtkaPos);

  @override
  _AddCompanyState createState() => _AddCompanyState(this.tvrtkaPos);
}

class _AddCompanyState extends State<AddCompany> {

  final CompanyBloc _companyBloc = CompanyBloc();
  Database database = Injection.injector.get<Database>();
  TvrtkaPos companyPos;
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController postController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController oibController = TextEditingController();
  TextEditingController labelController = TextEditingController();
  bool _check = false;


  _AddCompanyState(this.companyPos);

  @override
  Widget build(BuildContext context) {

    nameController.text = companyPos.tvrtka_naziv;
    addressController.text = companyPos.tvrtka_adresa;
    postController.text = companyPos.tvrtka_posta;
    placeController.text = companyPos.tvrtka_mjesto;
    oibController.text = companyPos.tvrtka_oib;
    labelController.text = companyPos.tvrtka_oznaka_uredaja;


    return BaseBlocScaffoldWidget(

      _companyBloc,

      getAppBar(context, Localization.of(context).title_activity_tvrtka),

      Column(
        children: <Widget>[

          Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      getTextForm(Localization.of(context).item_name, nameController, updateName),
                      getTextForm(Localization.of(context).tvrtka_adresa, addressController, updateAddress),
                      getTextFormNumber(Localization.of(context).tvrtka_posta, postController, updatePost),
                      getTextForm(Localization.of(context).tvrtka_mjesto, placeController, updatePlace),
                      getTextFormNumber(Localization.of(context).tvrtka_oib, oibController, updateOib),

                      DropDownTypeOfPayer(),

                      getTextForm(Localization.of(context).tvrtka_oznaka_naplatnog_uredjaja, labelController, updateLabel ),

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

                          Text(Localization.of(context).fiskaliziraj_trans_racune),

                          SizedBox(height: 10.0),

                        ],
                      ),

                    ],
                  ),
                ),
              )
          ),

          SafeArea(
            child: getSaveButton(context),
          ),

        ],
      ),
    );
  }

  updateName(){
    companyPos.tvrtka_naziv = nameController.text;
  }

  updateAddress(){
    companyPos.tvrtka_adresa = addressController.text;
  }

  updatePost(){
    companyPos.tvrtka_posta = postController.text;
  }

  updatePlace(){
    companyPos.tvrtka_mjesto = placeController.text;
  }

  updateOib(){
    companyPos.tvrtka_oib = oibController.text;
  }

  updateLabel(){
    companyPos.tvrtka_oznaka_uredaja = labelController.text;
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
                  getAlertDialog(context, 'Obriši', Localization.of(context).delete_kupac  + ' '  + companyPos.tvrtka_naziv+ '?');
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
                    _showAlertDialog('Greška', Localization.of(context).tvrtka_obvezan_unos);
                  }
                  else {
                    _companyBloc.saveCompany(context, companyPos);
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
          onPressed: () => _companyBloc.deleteCompany(context, companyPos.id),
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

  getTextFormNumber(String hint, TextEditingController controller, Function update){

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