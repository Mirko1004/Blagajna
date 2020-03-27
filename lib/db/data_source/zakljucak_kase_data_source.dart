import 'package:blagajna/db/entities/zakljucak_pos.dart';
import 'package:blagajna/db/tables/racun.dart';
import 'package:blagajna/db/tables/zakljucak_kase.dart';
import 'package:blagajna/globals.dart';
import 'package:sqflite/sqflite.dart';

class ZakljucakKaseDataSource{

  static const allColumns = [
    ZakljucakKase.POS_ZAKLJUCAK_KASE_ID,
    ZakljucakKase.POS_ZAKLJUCAK_BROJ,
    ZakljucakKase.POS_ZAKLJUCAK_NAZIV,
    ZakljucakKase.POS_ZAKLJUCAK_POSLOVNI_PROSTOR_ID,
    ZakljucakKase.POS_ZAKLJUCAK_POSLOVNI_PROSTOR_OZNAKA,
    ZakljucakKase.POS_ZAKLJUCAK_NAPLATNI_UREDJAJ,
    ZakljucakKase.POS_ZAKLJUCAK_DATUM_ZAKLJUCKA,
    ZakljucakKase.POS_ZAKLJUCAK_RACUN_OD_ID,
    ZakljucakKase.POS_ZAKLJUCAK_RACUN_OD_NUMBER,
    ZakljucakKase.POS_ZAKLJUCAK_RACUN_DO_ID,
    ZakljucakKase.POS_ZAKLJUCAK_RACUN_DO_NUMBER,
    ZakljucakKase.POS_ZAKLJUCAK_UKUPNO,
  ];


  static void insertZakljucakKase(Database database, ZakljucakKasePos zakljucakKasePos) async{
    await database.insert(ZakljucakKase.TABLE_POS_ZAKLJUCAK_KASE, zakljucakKasePos.toMap(), nullColumnHack: null );
    //database.update(ZakljucakKase.TABLE_POS_ZAKLJUCAK_KASE, zakljucakKasePos.toMap(), where: ZakljucakKase.POS_ZAKLJUCAK_KASE_ID + "=?", whereArgs: [(zakljucakKasePos.id()).toString()] );

  }

  static Future<List<ZakljucakKasePos>> getZakljucakByID(Database database, int zakljucakId) async {
    final List<Map> zakljucakById = await database.query(ZakljucakKase.TABLE_POS_ZAKLJUCAK_KASE,
        columns: allColumns, where: ZakljucakKase.POS_ZAKLJUCAK_KASE_ID + " = " + zakljucakId.toString() + " ",
    whereArgs: null, groupBy: null, having: null, orderBy: null);
    return zakljucakById.map((zakljucakKaseFromMap) => ZakljucakKasePos.fromMap(zakljucakById.first) ).toList();
  }


  static Future<List<ZakljucakKasePos>> getZakljuckeByInterval(Database database, int poslovniProstorID, String oznakaNaplatnogUredjaja) async {

    String strDateFrom = Globals.formatDateTimeFromDateForInsert(new DateTime.now());
    String strDateTo = Globals.formatDateTimeFromDateForInsert(new DateTime.now());

    String where =  ZakljucakKase.POS_ZAKLJUCAK_POSLOVNI_PROSTOR_ID + " = ? AND " + ZakljucakKase.POS_ZAKLJUCAK_NAPLATNI_UREDJAJ + " = ? AND " + ZakljucakKase.POS_ZAKLJUCAK_DATUM_ZAKLJUCKA + " BETWEEN ? AND ? ";

    final List<Map> zakljucakByInterval= await database.query(ZakljucakKase.TABLE_POS_ZAKLJUCAK_KASE,
        columns:allColumns ,where: where, whereArgs: [poslovniProstorID.toString(), oznakaNaplatnogUredjaja, strDateFrom, strDateTo], groupBy: null, having: null, orderBy: Racun.POS_RACUN_ID + " ASC" );
    return zakljucakByInterval.map((zakljucakKaseFromMap) => ZakljucakKasePos.fromMap(zakljucakKaseFromMap) ).toList();
  }


  static Future<List<ZakljucakKasePos>> getZakljucakLastNumber(Database database, int poslovniProstorID, String oznakaNaplatnogUredjaja) async {

    String strDateFrom = Globals.formatDateTimeFromDateForInsert(new DateTime.now());
    String strDateTo = Globals.formatDateTimeFromDateForInsert(new DateTime.now());

    String where =  ZakljucakKase.POS_ZAKLJUCAK_POSLOVNI_PROSTOR_ID + " = ? AND " + ZakljucakKase.POS_ZAKLJUCAK_NAPLATNI_UREDJAJ + " = ? AND " + ZakljucakKase.POS_ZAKLJUCAK_DATUM_ZAKLJUCKA + " BETWEEN ? AND ? ";

    final List<Map> zakljucakLastNumber= await database.query(ZakljucakKase.TABLE_POS_ZAKLJUCAK_KASE,
        columns:["MAX(" + ZakljucakKase.POS_ZAKLJUCAK_BROJ + ")"] ,where: where, whereArgs: [poslovniProstorID.toString(), oznakaNaplatnogUredjaja, strDateFrom, strDateTo], groupBy: null, having: null, orderBy: null );
    return zakljucakLastNumber.map((zakljucakKaseFromMap) => ZakljucakKasePos.fromMap(zakljucakLastNumber.first) ).toList();
  }
  
  
}