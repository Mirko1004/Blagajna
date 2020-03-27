import 'package:blagajna/db/entities/racun_pos.dart';
import 'package:blagajna/db/tables/racun.dart';
import 'package:blagajna/db/tables/racun_stavke.dart';
import 'package:blagajna/globals.dart';
import 'package:sqflite/sqflite.dart';

class RacunDataSource{

  static const allColumns = [
    Racun.POS_RACUN_ID,
    Racun.POS_RACUN_BROJ,
    Racun.POS_RACUN_POSLOVNI_PROSTOR_ID,
    Racun.POS_RACUN_POSLOVNI_PROSTOR_NAZIV,
    Racun.POS_RACUN_POSLOVNI_PROSTOR_OZNAKA,
    Racun.POS_RACUN_OZNAKA_NAPL_UREDJAJA,
    Racun.POS_RACUN_PRODAVAC_ID,
    Racun.POS_RACUN_PRODAVAC_IME,
    Racun.POS_RACUN_PRODAVAC_OIB,
    Racun.POS_RACUN_KUPAC_ID,
    Racun.POS_RACUN_KUPAC_NAZIV,
    Racun.POS_RACUN_KUPAC_ADRESA,
    Racun.POS_RACUN_KUPAC_POSTA,
    Racun.POS_RACUN_KUPAC_MJESTO,
    Racun.POS_RACUN_KUPAC_OIB,
    Racun.POS_RACUN_VRSTA_PLACANJA_ID,
    Racun.POS_RACUN_VRSTA_PLACANJA_NAZIV,
    Racun.POS_RACUN_DATETIME_IZRADE,
    Racun.POS_RACUN_DATETIME_PLACANJA,
    Racun.POS_RACUN_STORNO,
    Racun.POS_RACUN_STORNO_ORIGINAL_ID,
    Racun.POS_RACUN_DATETIME_STORNO,
    Racun.POS_RACUN_UKUPNO_PRIJE_POPUSTA_IZNOS,
    Racun.POS_RACUN_POPUST_IZNOS,
    Racun.POS_RACUN_UKUPNO_ZA_PLATITI,
    Racun.POS_RACUN_PARAGON_OBRAZAC,
    Racun.POS_RACUN_UUID,
    Racun.POS_RACUN_JIR,
    Racun.POS_RACUN_ZKI,
    Racun.POS_RACUN_DATETIME_FISKALIZACIJE,
    Racun.POS_RACUN_FISKALIZIRAN,
    Racun.POS_RACUN_FISKAL_REQUEST,
    Racun.POS_RACUN_FISKAL_RESPONSE,
    Racun.POS_RACUN_ISPISAN,
    Racun.POS_RACUN_ZAKLJUCEN,
    Racun.POS_RACUN_ZAKLJUCAK_ID,
    Racun.POS_RACUN_OZNAKA_SLIJEDNOSTI,
    Racun.POS_RACUN_PRINT_COUNTER,
    Racun.POS_RACUN_HEADER,
    Racun.POS_RACUN_FOOTER,
    Racun.POS_RACUN_VRSTA_POREZNOG_OBVEZNIKA,
    Racun.POS_RACUN_GODINA,
    Racun.POS_RACUN_CARD_REF_NUMBER,
    Racun.POS_RACUN_CARD_AUTH_CODE,
    Racun.POS_RACUN_CARD_HOLDER_AUTH,
    Racun.POS_RACUN_CARD_TRANS_TYPE,
    Racun.POS_RACUN_CARD_AMOUNT

  ];

  static Future<List<RacunPos>> getAllRacuni(Database database) async {
    final List<Map> racunList = await database.query(Racun.TABLE_POS_RACUN,
        columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
    return racunList.map((racunFromMap) => RacunPos.fromMap(racunFromMap) ).toList();
  }

  static Future<RacunPos> getRacunById(Database database, int racunId) async {
    final List<Map> racunById = await database.query(Racun.TABLE_POS_RACUN,
        columns: allColumns, where: Racun.POS_RACUN_ID + " = " + (racunId).toString() + " " ,whereArgs: null, groupBy: null, having: null, orderBy: null);

    if (racunById.length > 0) {
      return  RacunPos.fromMap(racunById.first);
    }
    return null;
  }

  static Future<List<RacunPos>> getNefiskaliziraniRacuni(Database database, int racunId) async {
    final List<Map> racunNefiskalizirani = await database.query(Racun.TABLE_POS_RACUN,
        columns: allColumns, where: Racun.POS_RACUN_FISKALIZIRAN + " = 0 AND " + Racun.POS_RACUN_ZAKLJUCEN + " = 1 " ,whereArgs: null, groupBy: null, having: null, orderBy: Racun.POS_RACUN_ID + " DESC");

    if (racunNefiskalizirani.length > 0) {
      return racunNefiskalizirani.map((racunFromMap) => RacunPos.fromMap(racunFromMap)).toList();
    }
    return null;
  }

  static Future<List<RacunPos>> getPrometArtikalaByInterval(Database database, int poslovniProstorId) async {

    String strDateFrom = Globals.formatDateTimeFromDateForInsert(new DateTime.now());
    String strDateTo = Globals.formatDateTimeFromDateForInsert(new DateTime.now());

    String select = "SELECT " +
        RacunStavke.TABLE_POS_RACUN_STAVKE+"."+RacunStavke.POS_RACUN_STAVKE_ARTIKL_NAZIV +
        ", SUM(" + RacunStavke.TABLE_POS_RACUN_STAVKE+"."+RacunStavke.POS_RACUN_STAVKE_KOLICINA + ") " +
        ", " + RacunStavke.TABLE_POS_RACUN_STAVKE+"."+RacunStavke.POS_RACUN_STAVKE_ARTIKL_MP_CIJENA +
        ", SUM(" + RacunStavke.TABLE_POS_RACUN_STAVKE+"."+RacunStavke.POS_RACUN_STAVKE_IZNOS + ") " +
        " FROM " +
        RacunStavke.TABLE_POS_RACUN_STAVKE + " AS " + RacunStavke.TABLE_POS_RACUN_STAVKE + ", " +
        Racun.TABLE_POS_RACUN + " AS " + Racun.TABLE_POS_RACUN +
        " WHERE " +
        Racun.TABLE_POS_RACUN+"."+Racun.POS_RACUN_ID + " = " + RacunStavke.TABLE_POS_RACUN_STAVKE+"."+RacunStavke.POS_RACUN_STAVKE_RACUN_ID + " AND " +
        Racun.TABLE_POS_RACUN+"."+Racun.POS_RACUN_ZAKLJUCEN + " = 1 AND " +
        Racun.TABLE_POS_RACUN+"."+Racun.POS_RACUN_POSLOVNI_PROSTOR_ID + " = ? AND " +
        Racun.TABLE_POS_RACUN+"."+Racun.POS_RACUN_DATETIME_PLACANJA + " BETWEEN ? AND ? " +
        " GROUP BY " +
        RacunStavke.TABLE_POS_RACUN_STAVKE+"."+RacunStavke.POS_RACUN_STAVKE_ARTIKL_NAZIV + ", " +
        RacunStavke.TABLE_POS_RACUN_STAVKE+"."+RacunStavke.POS_RACUN_STAVKE_ARTIKL_MP_CIJENA;


    final List<Map> prometArtikalaByInterval = await database.rawQuery(select,[poslovniProstorId.toString(), strDateFrom, strDateTo] );

    if (prometArtikalaByInterval.length > 0) {
      return prometArtikalaByInterval.map((racunFromMap) => RacunPos.fromMap(prometArtikalaByInterval.first) ).toList();
    }
    return null;
  }


  static Future<List<RacunPos>> getRacuniByInterval(Database database, int poslovniProstorId,  bool bStornoRacuni) async {

    String strDateFrom = Globals.formatDateTimeFromDateForInsert(new DateTime.now());
    String strDateTo = Globals.formatDateTimeFromDateForInsert(new DateTime.now());

    String where = Racun.POS_RACUN_ZAKLJUCEN + " = 1 AND " + Racun.POS_RACUN_POSLOVNI_PROSTOR_ID + " = ? AND " +
        Racun.POS_RACUN_DATETIME_PLACANJA + " BETWEEN ? AND ? ";

    if(bStornoRacuni)
      where += " AND " + Racun.POS_RACUN_STORNO + " = 1 AND  " + Racun.POS_RACUN_STORNO_ORIGINAL_ID + " > 0";


    final List<Map> racunByInterval = await database.query(Racun.TABLE_POS_RACUN,
        columns: allColumns, where: where, whereArgs: [poslovniProstorId.toString(), strDateFrom, strDateTo], groupBy: null, having: null, orderBy: Racun.POS_RACUN_ID + " DESC" );

    if (racunByInterval.length > 0) {
      return racunByInterval.map((racunFromMap) => RacunPos.fromMap(racunFromMap) ).toList();
    }
    return null;

  }


  static Future<List<RacunPos>> getRacuniForZakljucak(Database database, int zakljucakId) async {

    String where = Racun.POS_RACUN_ZAKLJUCAK_ID + " = ? ";

    final List<Map> racunForZakljucak = await database.query(Racun.TABLE_POS_RACUN,
        columns: allColumns, where: where ,whereArgs: [zakljucakId.toString()], groupBy: null, having: null, orderBy: Racun.POS_RACUN_ID + " DESC");

    if (racunForZakljucak.length > 0) {
      return racunForZakljucak.map((racunFromMap) => RacunPos.fromMap(racunFromMap) ).toList();
    }
    return null;
  }


  static Future<List<RacunPos>> getNezakljuceneRacuneByInterval(Database database, int poslovniProstorId,  String oznakaNaplatnogUredjaja) async {

    String strDateFrom = Globals.formatDateTimeFromDateForInsert(new DateTime.now());
    String strDateTo = Globals.formatDateTimeFromDateForInsert(new DateTime.now());

    String where = Racun.POS_RACUN_ZAKLJUCEN + " = 1 AND " + Racun.POS_RACUN_POSLOVNI_PROSTOR_ID + " = ? AND " + Racun.POS_RACUN_OZNAKA_NAPL_UREDJAJA + " = ? AND " +
        Racun.POS_RACUN_ZAKLJUCAK_ID + " = 0 AND " + Racun.POS_RACUN_DATETIME_PLACANJA + " BETWEEN ? AND ? ";

    final List<Map> racunNezakljucenByInterval = await database.query(Racun.TABLE_POS_RACUN,
        columns: allColumns, where: where, whereArgs: [poslovniProstorId.toString(),oznakaNaplatnogUredjaja, strDateFrom, strDateTo], groupBy: null, having: null, orderBy: Racun.POS_RACUN_ID + " ASC" );

    if (racunNezakljucenByInterval.length > 0) {
      return racunNezakljucenByInterval.map((racunFromMap) => RacunPos.fromMap(racunFromMap) ).toList();
    }
    return null;

  }


  static void insertRacun(Database database, RacunPos racunPos) async{
    await database.insert(Racun.TABLE_POS_RACUN, racunPos.toMap(), nullColumnHack: null );
    //database.update(Racun.TABLE_POS_RACUN, racunPos.toMap(), where: Racun.POS_RACUN_ID + "=?", whereArgs: [(racunPos.id()).toString()] );
  }


  static void updateRacunIznos(Database database, RacunPos racunPos,int racunId, double iznos) async {
    final racunValuesIznos = {
      Racun.POS_RACUN_UKUPNO_ZA_PLATITI : iznos,
    };

    await database.update(Racun.TABLE_POS_RACUN, racunValuesIznos, where: Racun.POS_RACUN_ID + "=?", whereArgs: [(racunId.toString())] );
    await database.update(Racun.TABLE_POS_RACUN, racunValuesIznos, where: Racun.POS_RACUN_ID + "=?", whereArgs: [(racunPos.id().toString())] );
  }



  static Future<List<RacunPos>> getMaxBrojRacuna(Database database, int poslovniProstorId, String oznakaNaplatnogUredjaja, String godina) async {

    String strWhere = Racun.POS_RACUN_POSLOVNI_PROSTOR_ID + " = ? AND " + Racun.POS_RACUN_OZNAKA_NAPL_UREDJAJA + " = ? AND " + Racun.POS_RACUN_GODINA + " = ? ";

    final List<Map> racunMaxBroj = await database.query(Racun.TABLE_POS_RACUN,
        columns: ["MAX(" + Racun.POS_RACUN_BROJ + ")"], where: strWhere, whereArgs: [(poslovniProstorId).toString(), oznakaNaplatnogUredjaja, godina], groupBy: null, having: null, orderBy: null );

    if (racunMaxBroj.length > 0) {
      return racunMaxBroj.map((racunFromMap) => RacunPos.fromMap(racunMaxBroj.first) ).toList();
    }
    return null;

  }


  static void deleteRacun(Database database, int _id) async{
    await database.delete(Racun.TABLE_POS_RACUN, where: Racun.POS_RACUN_ID
        + " = " + _id.toString(), whereArgs: null);
  }

  static Future<int> countPoslovniProstorInRacuni(Database database,
      int poslovniProstorId) async {
    final List<
        Map<String, dynamic>> poslovniProstorInRacuniCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + Racun.TABLE_POS_RACUN + " WHERE " + Racun.POS_RACUN_POSLOVNI_PROSTOR_ID + " = " + (poslovniProstorId).toString());
    int result = Sqflite.firstIntValue(poslovniProstorInRacuniCount);
    return result;
  }

  static Future<int> countProdavacInRacuni(Database database,
      int prodavacId) async {
    final List<Map<String, dynamic>> prodavacInRacuniCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + Racun.TABLE_POS_RACUN + " WHERE " + Racun.POS_RACUN_PRODAVAC_ID + " = " + (prodavacId).toString());
    int result = Sqflite.firstIntValue(prodavacInRacuniCount);
    return result;
  }

  static Future<int> countKupacInRacuni(Database database, int kupacId) async {
    final List<Map<String, dynamic>> kupacInRacuniCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + Racun.TABLE_POS_RACUN + " WHERE " + Racun.POS_RACUN_KUPAC_ID + " = " + (kupacId).toString());
    int result = Sqflite.firstIntValue(kupacInRacuniCount);
    return result;
  }

}