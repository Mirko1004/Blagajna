import 'package:blagajna/db/entities/poslovni_prostor_pos.dart';
import 'package:blagajna/db/tables/poslovni_prostor.dart';
import 'package:sqflite/sqflite.dart';

class PoslovniProstorDataSource{

  static const allColumns = [
    PoslovniProstor.POS_POSLOVNI_PROSTOR_ID,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_NAZIV,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_OZNAKA,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_OSTALI_TIP_CHECK,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_ULICA,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_KUCNI_BROJ,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_KUCNI_BROJ_DODATAK,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_POSTANSKI_BROJ,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_NASELJE,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_OPCINA,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_OSTALI_TIP,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_RADNO_VRIJEME,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_POCETAK_PRIMJENE,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_ZATVOREN,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_PRIJAVLJEN,
    PoslovniProstor.POS_POSLOVNI_PROSTOR_DEFAULT
];

  static Future<List<PoslovniProstorPos>> getAllPoslovniProstor(Database database) async {
    final List<Map> poslovniProstorList = await database.query(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR,
        columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
    return poslovniProstorList.map((poslovniProstorFromMap) => PoslovniProstorPos.fromMap(poslovniProstorFromMap) ).toList();
  }


  static Future<PoslovniProstorPos> getDefaultPoslovniProstorId(Database database) async {
    final List<Map> poslovniProstorDefault = await database.query(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR,
        columns: allColumns, where: PoslovniProstor.POS_POSLOVNI_PROSTOR_DEFAULT + " = 1 " ,whereArgs: null, groupBy: null, having: null, orderBy: null);

    if (poslovniProstorDefault.length > 0) {
      return PoslovniProstorPos.fromMap(poslovniProstorDefault.first);
    }
    return null;
  }


  static Future<PoslovniProstorPos> getPoslovniProstorById(Database database, int poslovniProstorId) async {
    final List<Map> poslovniProstorById = await database.query(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR,
        columns: allColumns, where: PoslovniProstor.POS_POSLOVNI_PROSTOR_ID+ " = " + (poslovniProstorId).toString() ,whereArgs: null, groupBy: null, having: null, orderBy: null);

    if (poslovniProstorById.length > 0) {
      return PoslovniProstorPos.fromMap(poslovniProstorById.first);
    }
    return null;

  }


   static Future<List<PoslovniProstorPos>>getPoslovniProstorByName(Database database, String inputText) async {

    if (inputText == null  ||  inputText.length  == 0)  {
      final List<Map> poslovniProstorByName = await database.query(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR,
          columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return poslovniProstorByName .map((poslovniProstorFromMap) => PoslovniProstorPos.fromMap(poslovniProstorFromMap)).toList();

    }
    else {
      final List<Map> poslovniProstorByName = await database.query(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR,
          columns: allColumns, where: PoslovniProstor.POS_POSLOVNI_PROSTOR_NAZIV+ " LIKE '%" + inputText + "%'" ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return poslovniProstorByName.map((poslovniProstorFromMap) => PoslovniProstorPos.fromMap(poslovniProstorFromMap)).toList();
    }

  }

  static Future insertPoslovniProstor(Database database, PoslovniProstorPos poslovniProstorPos) async{
    await database.insert(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR, poslovniProstorPos.toMap(), nullColumnHack: null );
  }

  static Future updatePoslovniProstor(Database database, PoslovniProstorPos poslovniProstorPos) async{
    await database.update(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR, poslovniProstorPos.toMap(), where: PoslovniProstor.POS_POSLOVNI_PROSTOR_ID + "=?", whereArgs: [(poslovniProstorPos.id()).toString()] );
  }

  static Future deletePoslovniProstor(Database database, int _id) async{
    await database.delete(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR, where: PoslovniProstor.POS_POSLOVNI_PROSTOR_ID
        + " = " + _id.toString(), whereArgs: null
    );
  }

  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }

}