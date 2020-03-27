import 'package:blagajna/bloc/base_bloc.dart';
import 'package:blagajna/db/entities/prodavac_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sqflite/sqflite.dart';

class LoginBloc extends BaseBloc {

  Database database = Injection.injector.get<Database>();

  final BehaviorSubject<ProdavacPos> costumerPos = BehaviorSubject.seeded(ProdavacPos());

  @override
  void dispose() {
    costumerPos.close();
    super.dispose();
  }

}
