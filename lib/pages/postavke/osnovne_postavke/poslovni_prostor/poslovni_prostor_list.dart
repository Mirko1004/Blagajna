import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/data_source/poslovni_prostor_data_source.dart';
import 'package:blagajna/db/entities/poslovni_prostor_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/common/buttons/add_button.dart';
import 'package:blagajna/pages/common/search_widget.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/osnovne_postavke.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/poslovni_prostor/dodaj_poslovni_prostor.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/poslovni_prostor/poslovni_prostor_bloc.dart';
import 'package:flutter/material.dart';

import 'package:sqflite/sqflite.dart';

class OfficeSpace extends StatefulWidget {
  @override
  _OfficeSpaceState createState() => _OfficeSpaceState();
}

class _OfficeSpaceState extends State<OfficeSpace> {

  Database database = Injection.injector.get<Database>();

  final OfficeSpaceBloc _officeSpaceBloc = OfficeSpaceBloc();
  PoslovniProstorPos officePos = PoslovniProstorPos();
  List<PoslovniProstorPos> officeList;
  int count = 0;


  bool _check = false;

  @override
  Widget build(BuildContext context) {

    if(officeList == null){
      officeList = List<PoslovniProstorPos>();
      updateListView();
    }

    return BaseBlocScaffoldWidget(

      _officeSpaceBloc,

      getDetailAppBar(context, Localization.of(context).title_activity_poslovni_prostor,
              () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getBasicSettings(context)))),


      Column(
            children: <Widget>[

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

                        Text(Localization.of(context).odbabir_defaultnog_poslovni_prostor_na_loginu),

                        SizedBox(height: 10.0),

                      ],
                    ),

                    getSearchWidget(context),

              Expanded(
                child: getOfficeListView() ,
              ),


              SafeArea(
                child: getAddButton(context, () => AddOfficeSpace(officePos)),
              ),

            ],
          ),
    );
  }

  ListView getOfficeListView() {

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return InkWell(
            onTap: () {
              navigateToDetail(this.officeList[position]);
            },

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 10.0),

                  Text(this.officeList[position].poslovni_prostor_naziv??'item',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff0a5c67),
                    ),),

                  SizedBox(height: 10.0),

                  Text('OIB: ' + this.officeList[position].poslovni_prostor_oznaka??''),

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


  navigateToDetail(PoslovniProstorPos poslovniProstorPos) async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddOfficeSpace(poslovniProstorPos);
    }));

    if (result == true) {
      updateListView();
    }
  }

  updateListView() {

    Future<List<PoslovniProstorPos>> officeListFuture = PoslovniProstorDataSource.getAllPoslovniProstor(database);
    officeListFuture.then((officeList) {
      setState(() {
        this.officeList = officeList;
        this.count = officeList.length;
      });
    }
    );
  }
}
