import 'package:blagajna/db/entities/kupac_pos.dart';
import 'package:blagajna/db/tables/kupac.dart';
import 'package:sqflite/sqflite.dart';

class KupacDataSource{

  static const allColumns = [
    Kupac.POS_KUPAC_ID,
    Kupac.POS_KUPAC_NAME,
    Kupac.POS_KUPAC_ADRESA,
    Kupac.POS_KUPAC_POSTA,
    Kupac.POS_KUPAC_MJESTO,
    Kupac.POS_KUPAC_OIB
    ];

  static Future<List<KupacPos>> getAllKupac(Database database) async {
    final List<Map> kupacList = await database.query(Kupac.TABLE_POS_KUPAC,
        columns: allColumns ,where: null,whereArgs: null, groupBy: null, having: null, orderBy: null);
    return kupacList.map((kupacFromMap) => KupacPos.fromMap(kupacFromMap)).toList();
  }


  static Future<KupacPos> getKupacByID(Database database, int kupacId) async {
    final List<Map> kupacById = await database.query(Kupac.TABLE_POS_KUPAC,
        columns: allColumns ,where: Kupac.POS_KUPAC_ID + " = " + (kupacId).toString() + " ",whereArgs: null, groupBy: null, having: null, orderBy: null);

    if (kupacById.length > 0) {
      return KupacPos.fromMap(kupacById.first);
    }
    return null;
  }

  static Future<List<KupacPos>>getKupacByName(Database database, String inputText) async {

    if (inputText == null  ||  inputText.length  == 0)  {
      final List<Map> kupacByName = await database.query(Kupac.TABLE_POS_KUPAC,
          columns: allColumns ,where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return kupacByName.map((kupacFromMap) => KupacPos.fromMap(kupacFromMap)).toList();

    }
    else {
      final List<Map> kupacByName = await database.query(Kupac.TABLE_POS_KUPAC,
          columns: allColumns, where: Kupac.POS_KUPAC_NAME+ " LIKE '%" + inputText + "%'" ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return kupacByName.map((kupacFromMap) => KupacPos.fromMap(kupacFromMap)).toList();
    }

  }

  static Future insertKupac(Database database, KupacPos kupacPos) async{
    await database.insert(Kupac.TABLE_POS_KUPAC, kupacPos.toMap(), nullColumnHack: null);
  }

  static Future updateKupac(Database database, KupacPos kupacPos) async{
    await database.update(Kupac.TABLE_POS_KUPAC, kupacPos.toMap(),  where: Kupac.POS_KUPAC_ID+ "=?", whereArgs: [kupacPos.id().toString()]);
  }

  static Future deleteKupac(Database database, int _id) async {
   await database.delete(Kupac.TABLE_POS_KUPAC, where: Kupac.POS_KUPAC_ID
        + " = " + _id.toString(), whereArgs: null);
  }

}