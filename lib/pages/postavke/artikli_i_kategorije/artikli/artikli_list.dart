import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/data_source/article_pos_data_source.dart';
import 'package:blagajna/db/entities/article_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/common/buttons/add_button.dart';
import 'package:blagajna/pages/common/search_widget.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/artikli/artikli_bloc.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/artikli/dodaj_artikl.dart';
import 'package:blagajna/pages/postavke/artikli_i_kategorije/artikli_i_kategorije.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Articles extends StatefulWidget {
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {

  Database database = Injection.injector.get<Database>();

  final ArticlesBloc _articlesBloc = ArticlesBloc();
  ArticlePosLarge articlePosLarge = ArticlePosLarge();
  List<ArticlePosLarge> articlesList;
  int count = 0;

  @override
  Widget build(BuildContext context) {

    if (articlesList == null) {
      articlesList = List<ArticlePosLarge>();
      updateListView();
    }

    return BaseBlocScaffoldWidget(

      _articlesBloc,
      
      getDetailAppBar(context, Localization.of(context).articles,
              () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getArticlesAndCategories(context)))),


      Column(
          children: <Widget>[

            getSearchWidget(context),

            Expanded(
                child: getArticlesListView()
            ),

            SafeArea(
              child: getAddButton(context, () => AddArticle(articlePosLarge)),
            ),

          ],
        ),
    );
  }

  ListView getArticlesListView() {

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return InkWell(
            onTap: () {
              navigateToDetail(this.articlesList[position]);
            },

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 20.0),

                  Text(this.articlesList[position].item_name??'item',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xff0a5c67),
                   ),
                  ),
                  SizedBox(height: 5.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('MP cijena: ' + this.articlesList[position].item_mp_price.toString()??'item'),
                      Text('JM: ' + this.articlesList[position].jmj_name??'item'),
                    ],
                  ),

                  Text('Porezna stopa: ' + this.articlesList[position].tax_pdv.toString()??'item'),
                  Text('Povratna naknada: ' + this.articlesList[position].item_povratna_naknada.toString()??'item'),

                  SizedBox(height: 10.0),

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

   navigateToDetail(ArticlePosLarge artikliPos) async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddArticle(artikliPos);
    }));

    if (result == true) {
      updateListView();
    }
  }

  updateListView() {

    Future<List<ArticlePosLarge>> articlesListFuture = ArticlePosDataSource.getAllPosArticles(database);
    articlesListFuture.then((articlesList) {
      setState(() {
        this.articlesList = articlesList;
        this.count = articlesList.length;
      });
    }
    );
  }


}





