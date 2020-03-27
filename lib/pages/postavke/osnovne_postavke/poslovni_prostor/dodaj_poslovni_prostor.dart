import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/entities/poslovni_prostor_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/text_forms/text_form_container_with_title.dart';
import 'package:blagajna/pages/common/text_forms/text_form_keyboard_numbers_hint.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/poslovni_prostor/poslovni_prostor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AddOfficeSpace extends StatefulWidget {

  final PoslovniProstorPos poslovniProstorPos;
  AddOfficeSpace(this.poslovniProstorPos);

  @override
  _AddOfficeSpaceState createState() => _AddOfficeSpaceState(this.poslovniProstorPos);
}

class _AddOfficeSpaceState extends State<AddOfficeSpace> {

  final OfficeSpaceBloc _officeSpaceBloc = OfficeSpaceBloc();

  Database database = Injection.injector.get<Database>();

  PoslovniProstorPos officePos;
  TextEditingController nameController = TextEditingController();
  TextEditingController labelController = TextEditingController();


  _AddOfficeSpaceState(this.officePos);

  bool _check = false;
  bool _check2 = false;

  @override
  Widget build(BuildContext context) {

    nameController.text = officePos.poslovni_prostor_naziv;
    labelController.text = officePos.poslovni_prostor_oznaka;

    return BaseBlocScaffoldWidget(

      _officeSpaceBloc,

      getAppBar(context, Localization.of(context).title_activity_poslovni_prostor),

      Column(
          children: <Widget>[

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: <Widget>[

                      getTextForm(Localization.of(context).poslovni_prostor_naziv, nameController, updateName),
                      getTextForm( Localization.of(context).poslovni_prostor_oznaka_hint, labelController, updateLabel),
                      getTextForm(Localization.of(context).poslovni_prostor_ulica, null, null),
                      getTextFormKeyboardNumbersHint(Localization.of(context).poslovni_prostor_kucni_broj, null),
                      getTextFormWithTitle(Localization.of(context).poslovni_prostor_kucni_broj_dodatak, Localization.of(context).poslovni_prostor_kucni_broj_dodatak_hint),
                      getTextFormKeyboardNumbersHint(Localization.of(context).poslovni_prostor_postanski_broj, null),
                      getTextForm(Localization.of(context).poslovni_prostor_naselje, null, null),
                      getTextForm(Localization.of(context).poslovni_prostor_opcina, null, null),

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

                          Text(Localization.of(context).poslovni_prostor_ostali_tip)

                        ],
                      ),

                      getTextForm(Localization.of(context).poslovni_prostor_bez_adrese, null, null),

                      getTextFormWithTitle(Localization.of(context).poslovni_prostor_radno_vrijeme, Localization.of(context).poslovni_prostor_radno_vrijeme_hint),

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

                          Text(Localization.of(context).defaultni_poslovni_prostor)

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
    officePos.poslovni_prostor_naziv = nameController.text;
  }

  updateLabel(){
    officePos.poslovni_prostor_oznaka = labelController.text;
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
                  getAlertDialog(context, 'Obriši', Localization.of(context).delete_poslovni_prostor  + ' '  + officePos.poslovni_prostor_naziv+ '?');
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
                    _officeSpaceBloc.saveOffice(context, officePos);
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
          onPressed: () => _officeSpaceBloc.deleteOffice(context, officePos.id),
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

