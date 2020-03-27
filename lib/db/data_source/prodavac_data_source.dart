import 'package:blagajna/db/entities/prodavac_pos.dart';
import 'package:blagajna/db/tables/prodavac.dart';
import 'package:sqflite/sqflite.dart';

class ProdavacDataSource{

  static const allColumns = [
    Prodavac.POS_PRODAVAC_ID,
    Prodavac.POS_PRODAVAC_NAME,
    Prodavac.POS_PRODAVAC_OIB,
    Prodavac.POS_PRODAVAC_USERNAME,
    Prodavac.POS_PRODAVAC_PASSWORD,
    Prodavac.POS_PRODAVAC_IS_ADMIN,
    Prodavac.POS_PRODAVAC_IS_ACTIVE
  ];

  static Future<List<ProdavacPos>> getAllProdavac(Database database) async {
    final List<Map> prodavacList = await database.query(Prodavac.TABLE_POS_PRODAVAC,
        columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
    return prodavacList.map((prodavacFromMap) => ProdavacPos.fromMap(prodavacFromMap) ).toList();
  }


  static Future<ProdavacPos> getProdavacByPassword(Database database, String password) async {
    final List<Map> prodavacByPassword = await database.query(Prodavac.TABLE_POS_PRODAVAC,
        columns: allColumns, where: Prodavac.POS_PRODAVAC_PASSWORD + " = ? AND " + Prodavac.POS_PRODAVAC_IS_ACTIVE + " = 1 " ,whereArgs: [password], groupBy: null, having: null, orderBy: null);
      return ProdavacPos.fromMap(prodavacByPassword.first) ;

  }

  static Future<ProdavacPos> getProdavacByUsername(Database database, String username) async {
    final List<Map> prodavacByUsername= await database.query(Prodavac.TABLE_POS_PRODAVAC,
        columns: allColumns, where: Prodavac.POS_PRODAVAC_USERNAME + " = ? AND " + Prodavac.POS_PRODAVAC_IS_ACTIVE + " = 1 " ,whereArgs: [username], groupBy: null, having: null, orderBy: null);

    if (prodavacByUsername.length > 0) {
      return  ProdavacPos.fromMap(prodavacByUsername.first);
    }
    return null;
  }


  static Future<ProdavacPos> getProdavacByID(Database database, String prodavacId) async {
    final List<Map> prodavacById = await database.query(Prodavac.TABLE_POS_PRODAVAC,
        columns: allColumns, where: Prodavac.POS_PRODAVAC_ID + " = " + (prodavacId).toString() + " " ,whereArgs: null, groupBy: null, having: null, orderBy: null);

    if (prodavacById.length > 0) {
      return ProdavacPos.fromMap(prodavacById.first);
    }
    return null;
  }


  static Future<List<ProdavacPos>>getProdavacByName(Database database, String inputText) async {

    if (inputText == null  ||  inputText.length  == 0)  {
      final List<Map<String, dynamic>> prodavacByName = await database.query(Prodavac.TABLE_POS_PRODAVAC,
          columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return prodavacByName.map((prodavacFromMap) => ProdavacPos.fromMap(prodavacFromMap)).toList();

    }
    else {
      final List<Map> prodavacByName = await database.query(Prodavac.TABLE_POS_PRODAVAC,
          columns: allColumns, where: Prodavac.POS_PRODAVAC_NAME+ " LIKE '%" + inputText + "%'" ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return prodavacByName.map((prodavacFromMap) => ProdavacPos.fromMap(prodavacFromMap)).toList();
    }
  }


  static Future insertProdavac(Database database, ProdavacPos prodavacPos) async{
    await database.insert(Prodavac.TABLE_POS_PRODAVAC, prodavacPos.toMap(), nullColumnHack: null );
  }

  static Future updateProdavac(Database database, ProdavacPos prodavacPos) async{
    await database.update(Prodavac.TABLE_POS_PRODAVAC, prodavacPos.toMap(), where: Prodavac.POS_PRODAVAC_ID + "=?", whereArgs: [prodavacPos.id().toString()] );
  }

  static Future deleteProdavac(Database database, int _id) async{
    await database.delete(Prodavac.TABLE_POS_PRODAVAC, where: Prodavac.POS_PRODAVAC_ID
        + " = " + _id.toString(), whereArgs: null);
  }

  static Future<int> countAdmins(Database database) async {
    final List<Map<String, dynamic>> adminsCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + Prodavac.TABLE_POS_PRODAVAC + " WHERE " +
            Prodavac.POS_PRODAVAC_IS_ADMIN + " = 1");
    int result = Sqflite.firstIntValue(adminsCount);
    return result;
  }

  static Future<int> countActive(Database database) async {
    final List<Map<String, dynamic>> activeCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + Prodavac.TABLE_POS_PRODAVAC + " WHERE " +
            Prodavac.POS_PRODAVAC_IS_ACTIVE + " = 1");
    int result = Sqflite.firstIntValue(activeCount);
    return result;
  }

  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        'SELECT COUNT (*) from ' + Prodavac.TABLE_POS_PRODAVAC);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }

}