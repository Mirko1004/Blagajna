import 'package:blagajna/db/entities/porezna_stopa_pos.dart';
import 'package:blagajna/db/tables/vrsta_poreza.dart';
import 'package:sqflite/sqflite.dart';

class VrstaPorezaDataSource{

  static const allColumns = [
    VrstaPoreza.POS_VRSTA_POREZA_ID,
    VrstaPoreza.POS_VRSTA_POREZA_NAME
  ];

  static deleteAllVrstaPoreza(Database database) async{
   await database.delete(VrstaPoreza.TABLE_POS_VRSTA_POREZA, where: null, whereArgs: null);
   await database.delete("sqlite_sequence", where: "name='" + VrstaPoreza.TABLE_POS_VRSTA_POREZA + "'", whereArgs: null);
  }

  static Future<List<PoreznaStopaPos>> getAllvrstePoreza(Database database) async {
    final List<Map> vrstePorezaList = await database.query(VrstaPoreza.TABLE_POS_VRSTA_POREZA,
        columns: allColumns, where: null, whereArgs: null, groupBy: null, having: null, orderBy: null );
    return vrstePorezaList .map((vrstaPorezaFromMap) => PoreznaStopaPos.fromMap(vrstaPorezaFromMap) ).toList();
  }

  static Future<PoreznaStopaPos> getAllVrstaPorezaById(Database database, int vrstaPorezaId) async {
    final List<Map> vrstePorezaByIdList = await database.query(VrstaPoreza.TABLE_POS_VRSTA_POREZA,
        columns: allColumns, where: VrstaPoreza.POS_VRSTA_POREZA_ID + " = " + (vrstaPorezaId).toString() + " ", whereArgs: null, groupBy: null, having: null, orderBy: null );
    return PoreznaStopaPos.fromMap(vrstePorezaByIdList.first);
  }

  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        "SELECT COUNT(*) FROM" + VrstaPoreza.TABLE_POS_VRSTA_POREZA);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }

}