import 'package:blagajna/bloc/session.dart';
import 'package:blagajna/repository/preferences_interface.dart';

class DataCache {

  final int postsPerPage = 24;

  final PreferencesInterface _preferencesInterface;
  final Session _session;

  DataCache(this._preferencesInterface, this._session);


}
