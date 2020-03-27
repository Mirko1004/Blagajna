import 'package:blagajna/db/entities/vrsta_placanja_pos.dart';
import 'package:blagajna/db/tables/vrsta_placanja.dart';
import 'package:sqflite/sqflite.dart';

class VrstaPlacanjaDataSource{

  static const allColumns = [
    VrstaPlacanja.POS_VRSTA_PLACANJA_ID,
    VrstaPlacanja.POS_VRSTA_PLACANJA_NAME
  ];

  static deleteAllVrstaPlacanja(Database database)async {
   await database.delete(VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA,where: null, whereArgs: null);
   await database.delete("sqlite_sequence", where:"name='" + VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA + "'", whereArgs: null );
  }


  static Future<List<VrstaPlacanjaPos>> getAllVrstaPlacanja(Database database) async {
    final List<Map> allVrstaPlacanja = await database.query(VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA,
        columns : allColumns, where: null, whereArgs: null, groupBy: null, having: null, orderBy: null );
    return allVrstaPlacanja.map((vrstaPlacanjaFromMap) => VrstaPlacanjaPos.fromMap(vrstaPlacanjaFromMap) ).toList();
  }

  static Future<VrstaPlacanjaPos> getAllVrstaPlacanjaById(Database database, int _id) async {
    final List<Map> vrstaPlacanjaById = await database.query(VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA,
        columns : allColumns, where: VrstaPlacanja.POS_VRSTA_PLACANJA_ID + " = " + (_id).toString() + " ", whereArgs: null, groupBy: null, having: null, orderBy: null );
    return VrstaPlacanjaPos.fromMap(vrstaPlacanjaById.first);
  }

  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        "SELECT COUNT(*) FROM" + VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }


}