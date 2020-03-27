import 'package:blagajna/db/entities/vrsta_obveznika_pos.dart';
import 'package:blagajna/db/tables/vrsta_obveznika_pdv.dart';
import 'package:sqflite/sqflite.dart';

class VrstaObveznikaPdvDataSource{

  static const allColumns = [
    VrstaObveznikaPdv.POS_VRSTA_OBVEZNIKA_PDV_ID,
    VrstaObveznikaPdv.POS_VRSTA_OBVEZNIKA_PDV_NAZIV
  ];

  static deleteAllVrsteObveznikaPdvDataSource(Database database) async{
    await database.delete(VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV, where: null, whereArgs: null);
    await database.delete("sqlite_sequence", where: "name='" + VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV + "'",  whereArgs: null);
  }

  static Future<List<VrstaObveznikaPos>> getAllVrsteObveznika(Database database) async {
    final List<Map> vrsteObveznikaList = await database.query(VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV,
        columns: allColumns, where: null, whereArgs: null, groupBy: null, having: null, orderBy: null );
    return vrsteObveznikaList.map((vrsteObveznikaFromMap) => VrstaObveznikaPos.fromMap(vrsteObveznikaFromMap)).toList();
  }

  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount =  await database.rawQuery(
        "SELECT COUNT(*) FROM " + VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }



}