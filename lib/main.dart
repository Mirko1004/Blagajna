import 'package:blagajna/db/data_source/tvrtka_data_source.dart';
import 'package:blagajna/db/entities/article_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization_delegate.dart';
import 'package:blagajna/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

void main() async {

  await Injection.initInjection();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  ArticlePos articlePos = ArticlePos();

  Database database = Injection.injector.get<Database>();

  @override
  void initState() {
    super.initState();
    queryData();
  }

  queryData() async {

    final sss = await TvrtkaDataSource.getTvrtka(database);
    int i = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        LocalizationDelegate(),
      ],

      home: Login(),

    );
  }
}
