import 'package:blagajna/db/entities/kategorija_pos.dart';
import 'package:blagajna/db/tables/kategorija_artikla.dart';
import 'package:sqflite/sqflite.dart';

class KategorijaDataSource{

  static const allColumns = [
    KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_ID,
    KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_NAZIV
  ];


  static Future<List<KategorijaPos>> getAllKategorijeListItems(Database database) async {
    final List<Map> kategorijaList = await database.query(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA,
        columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
    print(kategorijaList);
    return kategorijaList.map((kategorijaFromMap) => KategorijaPos.fromMap(kategorijaFromMap)).toList();
  }


  static Future<KategorijaPos> getKategorijaName(Database database, int kategorijaId) async {
    final List<Map> kategorijaName = await database.query(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA,
        columns: allColumns, where: KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_ID+ " = ?" ,whereArgs: [kategorijaId.toString() ], groupBy: null, having: null, orderBy: null);

    if (kategorijaName.length > 0) {
      return KategorijaPos.fromMap(kategorijaName.first);
    }
    return null;
  }

  static Future<KategorijaPos> getKategorijaByID(Database database, int kategorijaId) async {
    final List<Map> kategorijaById = await database.query(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA,
        columns: allColumns ,where: KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_ID+ " = ?" , whereArgs: [kategorijaId.toString() ], groupBy: null, having: null, orderBy: null);

    if (kategorijaById.length > 0) {
      return KategorijaPos.fromMap(kategorijaById.first);
    }
    return null;
  }

  static Future insertKategorija (Database database, KategorijaPos kategorijaPos) async {
   await database.insert(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA, kategorijaPos.toMap());
  }

  static Future updateKategorija (Database database, KategorijaPos kategorijaPos) async {
     await database.update(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA, kategorijaPos.toMap(), where: KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_ID + "=?", whereArgs: [kategorijaPos.id().toString()]);
  }


  static Future deleteKategorija(Database database, int _id) async {
     await database.delete(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA, where: KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_ID + " = " + _id.toString(), whereArgs: null);
  }


  static Future<List<KategorijaPos>>getKategorijaByName(Database database, String inputText) async {

    if (inputText == null  ||  inputText.length  == 0)  {
      final List<Map<String, dynamic>> kategorijaByName = await database.query(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA,
          columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return kategorijaByName.map((kategorijaFromMap) => KategorijaPos.fromMap(kategorijaFromMap)).toList();

    }
    else {
      final List<Map> kategorijaByName = await database.query(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA,
          columns: allColumns, where: KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_NAZIV + " LIKE '%" + inputText + "%'" ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return kategorijaByName.map((kategorijaFromMap) => KategorijaPos.fromMap(kategorijaFromMap)).toList();
    }
  }


  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }

}

