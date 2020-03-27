import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/data_source/prodavac_data_source.dart';
import 'package:blagajna/db/entities/prodavac_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/common/buttons/add_button.dart';
import 'package:blagajna/pages/common/search_widget.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/osnovne_postavke.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/prodavac/dodaj_prodavac.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/prodavac/prodavac_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Seller extends StatefulWidget {
  @override
  _SellerState createState() => _SellerState();
}

class _SellerState extends State<Seller> {

  Database database = Injection.injector.get<Database>();

  final SellerBloc _sellerBloc = SellerBloc();
  ProdavacPos sellerPos = ProdavacPos();
  List<ProdavacPos> sellerList;
  int count = 0;

  @override
  Widget build(BuildContext context) {

    if (sellerList == null){
      sellerList = List<ProdavacPos>();
      updateListView();
    }

    return BaseBlocScaffoldWidget(

      _sellerBloc,

      getDetailAppBar(context, Localization.of(context).title_activity_prodavac,
              () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getBasicSettings(context)))),


      Column(
          children: <Widget>[

            getSearchWidget(context),

            Expanded(
              child: getSellerListView(),
            ),

            SafeArea(
              child: getAddButton(context, () => AddSeller(sellerPos)),
            )
          ],
        ),

    );
  }

  ListView getSellerListView() {

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return InkWell(
            onTap: () {
              navigateToDetail(this.sellerList[position]);
            },

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 10.0),

                  Text(this.sellerList[position].prodavac_name??'item',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff0a5c67),
                    ),),

                  SizedBox(height: 10.0),

                  Text('OIB: ' + this.sellerList[position].prodavac_oib??''),

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


   navigateToDetail(ProdavacPos prodavacPos) async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddSeller(prodavacPos);
    }));

    if (result == true) {
      updateListView();
    }
  }

   updateListView() {

    Future<List<ProdavacPos>> sellersListFuture = ProdavacDataSource.getAllProdavac(database);
    sellersListFuture.then((sellersList) {
      setState(() {
        this.sellerList = sellersList;
        this.count = sellersList.length;
      });
    }
    );
  }
}




