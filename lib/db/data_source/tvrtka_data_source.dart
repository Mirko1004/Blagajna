import 'package:blagajna/db/entities/tvrtka_pos.dart';
import 'package:blagajna/db/tables/tvrtka.dart';
import 'package:sqflite/sqflite.dart';

class TvrtkaDataSource{

  static const allColumns = [
    Tvrtka.POS_TVRTKA_ID,
    Tvrtka.POS_TVRTKA_NAZIV,
    Tvrtka.POS_TVRTKA_ADRESA,
    Tvrtka.POS_TVRTKA_POSTA,
    Tvrtka.POS_TVRTKA_MJESTO,
    Tvrtka.POS_TVRTKA_OIB,
    Tvrtka.POS_TVRTKA_VRSTA_OBVEZNIKA_PDV_ID,
    Tvrtka.POS_TVRTKA_OZNAKA_NAPLATNOG_UREDAJA,
    Tvrtka.POS_TVRTKA_OZNAKA_SLIJEDNOSTI_ID
  ];

  static Future<List<TvrtkaPos>> getTvrtka(Database database) async {
    final List<Map> tvrtkaList = await database.query(Tvrtka.TABLE_POS_TVRTKA,
        columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
    return tvrtkaList.map((tvrtkaFromMap) => TvrtkaPos.fromMap(tvrtkaList.first)).toList();

  }

  static Future insertTvrtka(Database database, TvrtkaPos tvrtkaPos) async{
    await database.insert(Tvrtka.TABLE_POS_TVRTKA, tvrtkaPos.toMap(), nullColumnHack: null);
  }

  static Future updateTvrtka(Database database, TvrtkaPos tvrtkaPos) async{
    database.update(Tvrtka.TABLE_POS_TVRTKA, tvrtkaPos.toMap(), where: Tvrtka.POS_TVRTKA_ID + "=?", whereArgs: [tvrtkaPos.id().toString()] );
  }

  static Future deleteTvrtka(Database database, int _id) async {
    await database.delete(Tvrtka.TABLE_POS_TVRTKA, where: Tvrtka.POS_TVRTKA_ID
        + " = " + _id.toString(), whereArgs: null);
  }

  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        "SELECT COUNT (*) FROM" + Tvrtka.TABLE_POS_TVRTKA);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }

}