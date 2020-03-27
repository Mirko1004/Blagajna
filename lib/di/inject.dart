import 'dart:async';
import 'package:blagajna/bloc/data_cache.dart';
import 'package:blagajna/bloc/session.dart';
import 'package:blagajna/db/database_helper.dart';
import 'package:blagajna/repository/preferences_interface.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:sqflite/sqlite_api.dart';

class Injection {

  static Database _database;
  static PreferencesInterface _preferencesInterface = PreferencesInterface();

  static Injector injector;
  static Future initInjection() async {

    _database = await DatabaseHelper().getDatabase();
    await _preferencesInterface.initPreferences();

    injector = Injector.getInjector();

    injector.map<PreferencesInterface>((i) => _preferencesInterface, isSingleton: true );
    injector.map<Session>( (i) => Session( _preferencesInterface ), isSingleton: true );
    injector.map<Database>( (i) => _database, isSingleton: true );
    injector.map<DataCache>( (i) => DataCache( _preferencesInterface, i.get<Session>()), isSingleton: true );
  }
}
