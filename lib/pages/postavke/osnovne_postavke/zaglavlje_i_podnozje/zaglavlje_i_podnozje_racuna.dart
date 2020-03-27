import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/data_source/racun_header_footer_data_source.dart';
import 'package:blagajna/db/entities/racun_header_footer_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/detail_app_bar.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/osnovne_postavke.dart';
import 'package:blagajna/pages/postavke/osnovne_postavke/zaglavlje_i_podnozje/zaglavlje_i_podnozje_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class HeaderFooter extends StatefulWidget {
  @override
  _HeaderFooterState createState() => _HeaderFooterState();
}

class _HeaderFooterState extends State<HeaderFooter> {

  Database database = Injection.injector.get<Database>();
  final HeaderFooterBloc _headerFooterBloc = HeaderFooterBloc();

  RacunHeaderFooterPos racunHeaderFooterPos = RacunHeaderFooterPos();
  List<RacunHeaderFooterPos> headerFooterList;
  TextEditingController headerController = TextEditingController();
  TextEditingController footerController = TextEditingController();
  int count = 0;

  @override
  Widget build(BuildContext context) {

    headerController.text = racunHeaderFooterPos.racun_header_footer_header;
    footerController.text = racunHeaderFooterPos.racun_header_footer_footer;

    if (headerFooterList == null) {
      headerFooterList = List<RacunHeaderFooterPos>();
      updateListView();
    }

    return BaseBlocScaffoldWidget(

      _headerFooterBloc,

      getDetailAppBar(context, Localization.of(context).title_activity_racun_header_footer,
              () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => getBasicSettings(context)))),

      Column(
        children: <Widget>[

          Expanded(
              child: getHeaderFooter()
          ),

          SafeArea(
            child: getSaveButton(context),
          ),

        ],
      ),

    );
  }

  ListView getHeaderFooter() {

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return   Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: <Widget>[

                Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Text(Localization.of(context).zaglavlje_racuna),

                              SizedBox(height: 5.0),

                              Container(
                                height: 125.0,
                                child: TextField(
                                    controller: headerController,
                                    onChanged: (value) {
                                      updateHeader();
                                    },
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                      hintText: (this.headerFooterList[position].racun_header_footer_header) ,
                                        border: OutlineInputBorder(
                                        )
                                    )
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10.0),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Text(Localization.of(context).podnozje_racuna),

                              SizedBox(height: 5.0),

                              Container(
                                height: 125.0,
                                child: TextField(
                                    controller: footerController,
                                    onChanged: (value) {
                                      updateFooter();
                                    },
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                        hintText: (this.headerFooterList[position].racun_header_footer_footer),
                                        border: OutlineInputBorder(
                                        )
                                    )
                                ),
                              ),
                            ],
                          ),
              ],
            ),
        );
      },
    );
  }

  updateHeader(){
    racunHeaderFooterPos.racun_header_footer_header = headerController.text;
  }

  updateFooter(){
    racunHeaderFooterPos.racun_header_footer_footer = footerController.text;
  }

  void updateListView() {

    Future<List<RacunHeaderFooterPos>> headerFooterListFuture = RacunHeaderFooterDataSource.getRacunHeaderFooter(database);
    headerFooterListFuture.then((headerFooterList) {
      setState(() {
        this.headerFooterList = headerFooterList;
        this.count = headerFooterList.length;
      });
    }
    );
  }

  getSaveButton( BuildContext context) {
    return MaterialButton(

      onPressed: () {

        setState(() {
          _headerFooterBloc.saveHeaderFooter(context, racunHeaderFooterPos);
        });
      },

      child: Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),

        child: Container(
          height: 50.0,
          decoration: new BoxDecoration(
            color: Color(0xff0a5c67),
          ),

          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.save,
                    color: Colors.white),

                SizedBox(width: 10.0),

                Text(Localization.of(context).save,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}









