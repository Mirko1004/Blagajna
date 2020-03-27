import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/data_source/tvrtka_data_source.dart';
import 'package:blagajna/db/entities/tvrtka_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/common/search_widget.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/osnovne_postavke.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/tvrtka/dodaj_tvrtku.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/tvrtka/tvrtka_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Company extends StatefulWidget {
  @override
  _CompanyState createState() => _CompanyState();
}

class _CompanyState extends State<Company> {

  Database database = Injection.injector.get<Database>();

  final CompanyBloc _companyBloc = CompanyBloc();
  TvrtkaPos companyPos = TvrtkaPos();
  List<TvrtkaPos> companyList;
  int count = 0;

  @override
  Widget build(BuildContext context) {

    if(companyList == null){
      companyList = List<TvrtkaPos>();
      updateListView();
    }

    return BaseBlocScaffoldWidget(

      _companyBloc,

      getDetailAppBar(context, Localization.of(context).title_activity_tvrtka,
              () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getBasicSettings(context)))),


      Column(
        children: <Widget>[

          getSearchWidget(context),

          Expanded(
            child: getCustomerView(),
          ),



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
              navigateToDetail(this.companyList[position]);
            },

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 10.0),

                  Text(this.companyList[position].tvrtka_naziv??'item',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff0a5c67),
                    ),),

                  SizedBox(height: 5.0),

                  Text('Adresa: ' + this.companyList[position].tvrtka_adresa + ', ' + this.companyList[position].tvrtka_posta.toString() + ' ' + this.companyList[position].tvrtka_mjesto),

                  SizedBox(height: 4.0),

                  Text('OIB: ' + this.companyList[position].tvrtka_oib.toString()),

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

  navigateToDetail(TvrtkaPos tvrtkaPos) async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddCompany(tvrtkaPos);
    }));
    if (result == true) {
      updateListView();
    }
  }

  updateListView(){

    Future<List<TvrtkaPos>> companyListFuture = TvrtkaDataSource.getTvrtka(database);
    companyListFuture.then((companyList){
      setState((){
        this.companyList = companyList;
        this.count = companyList.length;
      });
    }
    );
  }

}
