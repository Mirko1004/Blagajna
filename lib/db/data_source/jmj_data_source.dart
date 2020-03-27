import 'package:blagajna/db/entities/jmj_pos.dart';
import 'package:blagajna/db/tables/jmj.dart';
import 'package:sqflite/sqflite.dart';

class JmjDataSource {

  static const allColumns = [
    Jmj.POS_JMJ_ID,
    Jmj.POS_JMJ_NAME
  ];

  static void deleteAllJmj(Database database) async{
    await database.delete(Jmj.TABLE_POS_JMJ, where: null, whereArgs: null);
    await database.delete("sqlite_sequence", where:  "name='" + Jmj.TABLE_POS_JMJ + "'", whereArgs: null);
  }

  static Future<List<JmjPos>> getJmjName(Database database, int jmjId) async {
    final List<Map> jmjName = await database.query(Jmj.TABLE_POS_JMJ,
        columns: allColumns, where: Jmj.POS_JMJ_ID + " = ?" , whereArgs: [(jmjId.toString())], groupBy: null, having: null, orderBy: null );

    if (jmjName.length > 0) {
      return jmjName.map((jmjFromMap) => JmjPos.fromMap(jmjName.first)).toList();
    }
    return null;
  }

  static Future<List<JmjPos>> getAllJmjListItems(Database database) async {
    final List<Map> jmjList = await database.query(Jmj.TABLE_POS_JMJ,
        columns: allColumns, where: null, whereArgs: null ,groupBy: null, having: null, orderBy: null );
    return jmjList.map((jmjFromMap) => JmjPos.fromMap(jmjFromMap)).toList();
  }

  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + Jmj.TABLE_POS_JMJ);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }

}
