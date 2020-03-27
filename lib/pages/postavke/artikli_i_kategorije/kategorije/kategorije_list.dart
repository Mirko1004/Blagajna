import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/data_source/kategorija_data_source.dart';
import 'package:blagajna/db/entities/kategorija_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/common/buttons/add_button.dart';
import 'package:blagajna/pages/common/search_widget.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/artikli_i_kategorije.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/kategorije/dodaj_kategoriju.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/kategorije/kategorije_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  Database database = Injection.injector.get<Database>();

  final CategoriesBloc _categoriesBloc = CategoriesBloc();
  KategorijaDataSource categoriesDataSource = KategorijaDataSource();
  KategorijaPos categoriesPos = KategorijaPos();
  List<KategorijaPos> categoriesList;
  int count = 0;

  @override
  Widget build(BuildContext context) {

    if (categoriesList == null) {
      categoriesList = List<KategorijaPos>();
      updateListView();
    }

    return BaseBlocScaffoldWidget(

      _categoriesBloc,

      getDetailAppBar(context, Localization.of(context).title_activity_kategorije,
              () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getArticlesAndCategories(context)))),

      Column(
          children: <Widget>[

            getSearchWidget(context),

            Expanded(
                child: getCategoriesListView()
            ),

            SafeArea(
              child: getAddButton(context, () => AddCategories(categoriesPos))
            ),

          ],
        ),


    );
  }


  ListView getCategoriesListView() {

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return InkWell(
            onTap: () {
              navigateToDetail(this.categoriesList[position]);
            },

          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(height: 20.0),

                Text(this.categoriesList[position].kategorija_name??'item'),

                SizedBox(height: 20.0),

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


  void navigateToDetail(KategorijaPos kategorijaPos) async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddCategories(kategorijaPos);
    }));

    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {

    Future<List<KategorijaPos>> categoriesListFuture = KategorijaDataSource.getAllKategorijeListItems(database);
      categoriesListFuture.then((categoriesList) {
        setState(() {
          this.categoriesList = categoriesList;
          this.count = categoriesList.length;
        });
      }
     );
  }

}

