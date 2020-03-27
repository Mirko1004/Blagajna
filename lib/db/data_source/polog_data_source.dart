import 'package:blagajna/db/entities/polog_pos.dart';
import 'package:blagajna/db/tables/polog.dart';
import 'package:sqflite/sqflite.dart';

class PologDataSource{

  static const allColumns = [
    Polog.POS_POLOG_ID,
    Polog.POS_POLOG_POLOG
    ];

  static Future<List<PologPos>> getPolog(Database database) async {
    final List<Map> pologList = await database.query(Polog.TABLE_POS_POLOG,
        columns: allColumns, where:Polog.POS_POLOG_ID + " = 1 ",whereArgs: null, groupBy: null, having: null, orderBy: null);
    return pologList.map((pologFromMap) => PologPos.fromMap(pologList.first)).toList();
  }

  static Future updatePolog(Database database, PologPos pologPos)async{
    await database.update(Polog.TABLE_POS_POLOG, pologPos.toMap(), where: Polog.POS_POLOG_ID + "=?",whereArgs: ["1"]);
  }

  static Future insertPolog(Database database, PologPos pologPos)async{
    await database.insert(Polog.TABLE_POS_POLOG, pologPos.toMap(), nullColumnHack: null);
  }

}