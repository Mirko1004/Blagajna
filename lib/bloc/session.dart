import 'package:blagajna/db/entities/kategorija_pos.dart';
import 'package:blagajna/repository/preferences_interface.dart';
import 'package:dio/dio.dart';

class Session {

  Dio loginDio;

  final PreferencesInterface _preferencesInterface;

  PreferencesInterface get preferencesInterface => _preferencesInterface;

  Session(this._preferencesInterface);

  KategorijaPos kategorijaPos;

}
