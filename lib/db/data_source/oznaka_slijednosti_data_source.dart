import 'package:blagajna/db/entities/oznaka_slijednosti_pos.dart';
import 'package:blagajna/db/tables/oznaka_slijednosti.dart';
import 'package:sqflite/sqflite.dart';

class OznakaSlijednostiDataSource{

  static const allColumns = [
    OznakaSlijednosti.POS_OZNAKA_SLIJEDNOSTI_ID,
    OznakaSlijednosti.POS_OZNAKA_SLIJEDNOSTI_NAZIV
  ];

  static Future<List<OznakaSlijednostiPos>> getAllOznakaSlijednosti(Database database) async {
    final List<Map> oznakaSlijednostiList = await database.query(OznakaSlijednosti.TABLE_POS_OZNAKA_SLIJEDNOSTI,
        columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
    return oznakaSlijednostiList.map((oznakaSlijednostiFromMap) => OznakaSlijednostiPos.fromMap(oznakaSlijednostiFromMap)).toList();
  }
}