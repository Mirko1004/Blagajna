import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/entities/kupac_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/kupac/kupac_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AddCustomer extends StatefulWidget {

  final KupacPos kupacPos;
  AddCustomer(this.kupacPos);

  @override
  _AddCustomerState createState() => _AddCustomerState(this.kupacPos);
}

class _AddCustomerState extends State<AddCustomer> {

  final CustomerBloc _customerBloc = CustomerBloc();
  Database database = Injection.injector.get<Database>();
  KupacPos customerPos;
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController postController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController oibController = TextEditingController();

  _AddCustomerState(this.customerPos);

  @override
  Widget build(BuildContext context) {

    nameController.text = customerPos.kupac_name;
    addressController.text = customerPos.kupac_adresa;
    postController.text = customerPos.kupac_posta;
    placeController.text = customerPos.kupac_mjesto;
    oibController.text = customerPos.kupac_oib;


    return BaseBlocScaffoldWidget(

      _customerBloc,

      getAppBar(context, Localization.of(context).title_activity_kupac),

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
                        getTextFormNumber(Localization.of(context).posta , postController, updatePost),
                        getTextForm(Localization.of(context).mjesto, placeController, updatePlace),
                        getTextFormNumber(Localization.of(context).tvrtka_oib, oibController, updateOib ),

                      ],
                    ),
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
    customerPos.kupac_name = nameController.text;
  }

  updateAddress(){
    customerPos.kupac_adresa = addressController.text;
  }

  updatePost(){
    customerPos.kupac_posta = postController.text;
  }

  updatePlace(){
    customerPos.kupac_mjesto = placeController.text;
  }

  updateOib(){
    customerPos.kupac_oib = oibController.text;
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
                  getAlertDialog(context, 'Obriši', Localization.of(context).delete_kupac  + ' '  + customerPos.kupac_name+ '?');
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
                    _showAlertDialog('Greška', Localization.of(context).naziv_obvezan_kupac);
                  }
                  else {
                    _customerBloc.saveCustomer(context, customerPos);
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
          onPressed: () => _customerBloc.deleteCustomer(context, customerPos.id),
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



