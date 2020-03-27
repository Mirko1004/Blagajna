import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/data_source/kupac_data_source.dart';
import 'package:blagajna/db/entities/kupac_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/common/buttons/add_button.dart';
import 'package:blagajna/pages/common/search_widget.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/kupac/dodaj_kupac.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/kupac/kupac_bloc.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/osnovne_postavke.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Customer extends StatefulWidget {
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {

  Database database = Injection.injector.get<Database>();

  final CustomerBloc _customerBloc = CustomerBloc();
  KupacPos customerPos = KupacPos();
  List<KupacPos> customerList;
  int count = 0;

  @override
  Widget build(BuildContext context) {

    if(customerList == null){
      customerList = List<KupacPos>();
      updateListView();
    }

    return BaseBlocScaffoldWidget(

      _customerBloc,

      getDetailAppBar(context, Localization.of(context).title_activity_kupac,
              () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getBasicSettings(context)))),


      Column(
          children: <Widget>[

            getSearchWidget(context),

            Expanded(
              child: getCustomerView(),
            ),

            SafeArea(
              child: getAddButton(context, () => AddCustomer(customerPos)),
            )
          ],
        ),
    );
  }

  ListView getCustomerView(){

    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position){
          return InkWell(
            onTap: (){
              navigateToDetail(this.customerList[position]);
              },

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 10.0),

                  Text(this.customerList[position].kupac_name??'item',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff0a5c67),
                    ),),

                  SizedBox(height: 5.0),

                  Text('Adresa: ' + this.customerList[position].kupac_adresa + ', ' + this.customerList[position].kupac_posta + ' ' + this.customerList[position].kupac_mjesto),

                  SizedBox(height: 4.0),

                 Text('OIB: ' + this.customerList[position].kupac_oib),

                  SizedBox(height: 4.0),

                  Container(
                    height: 1.0,
                    color: Colors.grey,
                  )
                ],
              ),
            )
          );
        },
    );
  }

   navigateToDetail(KupacPos kupacPos) async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddCustomer(kupacPos);
    }));

    if (result == true) {
      updateListView();
    }
  }

  updateListView(){

    Future<List<KupacPos>> customersListFuture = KupacDataSource.getAllKupac(database);
    customersListFuture.then((customersList){
      setState((){
        this.customerList = customersList;
        this.count = customersList.length;
      });
    }
    );
  }

}



