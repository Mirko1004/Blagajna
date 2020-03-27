import 'package:blagajna/db/entities/racun_stavka_pos.dart';
import 'package:blagajna/db/tables/racun.dart';
import 'package:blagajna/db/tables/racun_stavke.dart';
import 'package:blagajna/globals.dart';
import 'package:sqflite/sqflite.dart';

class RacunStavkeDataSource{

  static const allColumns = [
    RacunStavke.POS_RACUN_STAVKE_ID,
    RacunStavke.POS_RACUN_STAVKE_RACUN_ID,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_ID,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_NAZIV,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_CODE,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_BARCODE,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_MP_CIJENA,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_POVRATNA_NAKNADA,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_JMJ_ID,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_JMJ,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_KATEGORIJA_ID,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_KATEGORIJA_NAZIV,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_POREZ_ID,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_POREZ_NAZIV,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_VRSTA_POREZA_ID,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_VRSTA_POREZA_NAZIV,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_PDV,
    RacunStavke.POS_RACUN_STAVKE_ARTIKL_PPOT,
    RacunStavke.POS_RACUN_STAVKE_KOLICINA,
    RacunStavke.POS_RACUN_STAVKE_POPUST_POSTO,
    RacunStavke.POS_RACUN_STAVKE_POPUST_IZNOS,
    RacunStavke.POS_RACUN_STAVKE_IZNOS_BEZ_RABATA,
    RacunStavke.POS_RACUN_STAVKE_IZNOS,
    RacunStavke.POS_RACUN_STAVKE_POREZ_IZNOS,
    RacunStavke.POS_RACUN_STAVKE_OSNOVICA_IZNOS,
    RacunStavke.POS_RACUN_STAVKE_PDV_IZNOS,
    RacunStavke.POS_RACUN_STAVKE_PPOT_IZNOS,
    RacunStavke.POS_RACUN_STAVKE_POVRATNA_NAKNADA_IZNOS
  ];


  static void deleteStavkeByRacunID(Database database, int racunId)
  {
    database.delete(RacunStavke.TABLE_POS_RACUN_STAVKE, where: RacunStavke.POS_RACUN_STAVKE_RACUN_ID
        + " = " + (racunId).toString() ,whereArgs: null );
  }


  static Future<List<RacunStavkaPos>> getRacunIznos(Database database, int racunId) async {

    String select = "SELECT SUM("+RacunStavke.POS_RACUN_STAVKE_IZNOS+") FROM " + RacunStavke.TABLE_POS_RACUN_STAVKE+" WHERE "+ RacunStavke.POS_RACUN_STAVKE_RACUN_ID + " = " + (racunId).toString();

    final List<Map> racunStavkaIznos = await database.rawQuery(select, null);
    return racunStavkaIznos.map((racunStavkeFromMap) => RacunStavkaPos.fromMap(racunStavkaIznos.first) ).toList();
  }


  static Future<RacunStavkaPos> getRacunStavkuById(Database database,int stavkaId ) async {
    final List<Map> racunStavkaById = await database.query(RacunStavke.TABLE_POS_RACUN_STAVKE,
        columns : allColumns, where: RacunStavke.POS_RACUN_STAVKE_ID + " = ? ", whereArgs: [stavkaId.toString()], groupBy: null, having: null, orderBy:null);
    return RacunStavkaPos.fromMap(racunStavkaById.first);
  }



  static Future<List<RacunStavkaPos>> getRacunStavkeByRacunIdRange(Database database, int racunMinId, int racunMaxID) async {
    final List<Map> racunStavkeByRacunIdRange = await database.query(RacunStavke.TABLE_POS_RACUN_STAVKE,
        columns : allColumns, where: RacunStavke.POS_RACUN_STAVKE_RACUN_ID + " BETWEEN ? AND ? ", whereArgs: [racunMinId.toString(), racunMaxID.toString()], groupBy: null, having: null, orderBy:RacunStavke.POS_RACUN_STAVKE_ID );
    return racunStavkeByRacunIdRange.map((racunStavkaFromMap) => RacunStavkaPos.fromMap(racunStavkaFromMap) ).toList();
  }



  static Future<List<RacunStavkaPos>> getRacunStavkeByRangeAndVrstaPlacanja(Database database, int poslovniProstorId, int vrstaPlacanjaId) async {

    String strDateFrom = Globals.formatDateTimeFromDateForInsert(new DateTime.now());
    String strDateTo = Globals.formatDateTimeFromDateForInsert(new DateTime.now());

    String select = "SELECT " + RacunStavke.TABLE_POS_RACUN_STAVKE+".*, " +
        Racun.TABLE_POS_RACUN + "." + Racun.POS_RACUN_VRSTA_POREZNOG_OBVEZNIKA + ", " +
        Racun.TABLE_POS_RACUN + "." + Racun.POS_RACUN_VRSTA_PLACANJA_NAZIV +
        " FROM " + RacunStavke.TABLE_POS_RACUN_STAVKE + ", " + Racun.TABLE_POS_RACUN +
        " WHERE " + RacunStavke.TABLE_POS_RACUN_STAVKE + "." + RacunStavke.POS_RACUN_STAVKE_RACUN_ID + " = " + Racun.TABLE_POS_RACUN + "." + Racun.POS_RACUN_ID +
        " AND " + Racun.TABLE_POS_RACUN + "." + Racun.POS_RACUN_POSLOVNI_PROSTOR_ID + " = ? " +
        " AND " + Racun.TABLE_POS_RACUN + "." + Racun.POS_RACUN_VRSTA_PLACANJA_ID + " = ? " +
        " AND " + Racun.TABLE_POS_RACUN + "." +Racun.POS_RACUN_DATETIME_PLACANJA + " BETWEEN ? AND ? ";


    final List<Map> racunStavkeByRangeAndVrstaPlacanja= await database.rawQuery(select, [poslovniProstorId.toString(), vrstaPlacanjaId.toString(), strDateFrom, strDateTo], );
    return racunStavkeByRangeAndVrstaPlacanja.map((racunStavkeFromMap) => RacunStavkaPos.fromMap(racunStavkeFromMap) ).toList();
  }


  static Future<List<RacunStavkaPos>> getRacunStavkeByDateRange(Database database, int poslovniProstorId) async {

    String strDateFrom = Globals.formatDateTimeFromDateForInsert(new DateTime.now());
    String strDateTo = Globals.formatDateTimeFromDateForInsert(new DateTime.now());

    String select = "SELECT " + RacunStavke.TABLE_POS_RACUN_STAVKE+".*, " +
        Racun.TABLE_POS_RACUN + "." + Racun.POS_RACUN_VRSTA_POREZNOG_OBVEZNIKA + ", " +
        Racun.TABLE_POS_RACUN + "." + Racun.POS_RACUN_VRSTA_PLACANJA_NAZIV +
        " FROM " + RacunStavke.TABLE_POS_RACUN_STAVKE + ", " + Racun.TABLE_POS_RACUN +
        " WHERE " + RacunStavke.TABLE_POS_RACUN_STAVKE + "." + RacunStavke.POS_RACUN_STAVKE_RACUN_ID + " = " + Racun.TABLE_POS_RACUN + "." + Racun.POS_RACUN_ID +
        " AND " + Racun.TABLE_POS_RACUN + "." + Racun.POS_RACUN_POSLOVNI_PROSTOR_ID + " = ? " +
        " AND " + Racun.TABLE_POS_RACUN + "." +Racun.POS_RACUN_DATETIME_PLACANJA + " BETWEEN ? AND ? ";

    final List<Map> racunStavkeByDateRange= await database.rawQuery(select, [poslovniProstorId.toString(), strDateFrom, strDateTo], );
    return racunStavkeByDateRange.map((racunStavkeFromMap) => RacunStavkaPos.fromMap(racunStavkeFromMap) ).toList();
  }


  static Future<List<RacunStavkaPos>> getRacunStavkeByRacunIdAndArtiklId(Database database,  int racunId, int artiklId) async {
    final List<Map> racunStavkeByRacunIdAndArtiklId = await database.query(RacunStavke.TABLE_POS_RACUN_STAVKE,
        columns : allColumns, where: RacunStavke.POS_RACUN_STAVKE_RACUN_ID + " = " + (racunId).toString()
            + " AND " + RacunStavke.POS_RACUN_STAVKE_ARTIKL_ID + " = " + (artiklId).toString()
            + " AND " + RacunStavke.POS_RACUN_STAVKE_POPUST_POSTO + " = 0"
        , whereArgs: null, groupBy: null, having: null, orderBy: null );
    return racunStavkeByRacunIdAndArtiklId.map((racunStavkeFromMap) => RacunStavkaPos.fromMap(racunStavkeFromMap) ).toList();
  }


  static Future<List<RacunStavkaPos>> getRacunStavkeByRacunID(Database database,  int racunId) async {
    final List<Map> racunStavkaByRacunId= await database.query(RacunStavke.TABLE_POS_RACUN_STAVKE,
        columns : allColumns, where: RacunStavke.POS_RACUN_STAVKE_RACUN_ID + " = " + (racunId).toString() + " ", whereArgs: null, groupBy: null, having: null, orderBy: RacunStavke.POS_RACUN_STAVKE_ID + " DESC");
    return racunStavkaByRacunId.map((racunStavkeFromMap) => RacunStavkaPos.fromMap(racunStavkeFromMap) ).toList();
  }


  static Future<List<RacunStavkaPos>> getRacunStavkeListByRacunID(Database database,  int racunId) async {
    final List<Map> racunStavkaListByRacunId= await database.query(RacunStavke.TABLE_POS_RACUN_STAVKE,
        columns : allColumns, where: RacunStavke.POS_RACUN_STAVKE_RACUN_ID + " = " + (racunId).toString() + " ", whereArgs: null, groupBy: null, having: null, orderBy: RacunStavke.POS_RACUN_STAVKE_ID + " DESC");
    return racunStavkaListByRacunId.map((racunStavkeFromMap) => RacunStavkaPos.fromMap(racunStavkeFromMap) ).toList();
  }


  static void insertRacunStavke(Database database, RacunStavkaPos racunStavkaPos) async{
    await database.insert(RacunStavke.TABLE_POS_RACUN_STAVKE, racunStavkaPos.toMap(), nullColumnHack: null );
    //database.update(RacunStavke.TABLE_POS_RACUN_STAVKE, racunStavkaPos.toMap(), where: RacunStavke.POS_RACUN_STAVKE_ID + "=?", whereArgs: [(racunStavkaPos.id()).toString()] );
  }


  static void deleteRacunStavku(Database database, int _id) async{
    await database.delete(RacunStavke.TABLE_POS_RACUN_STAVKE, where: RacunStavke.POS_RACUN_STAVKE_ID
        + " = " + _id.toString(), whereArgs: null );
  }


  static Future<int> countPoreznStopaInRacuni(Database database,
      int poreznaStopaId) async {
    final List<Map<String, dynamic>> poreznStopaInRacuniCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + RacunStavke.TABLE_POS_RACUN_STAVKE + " WHERE " + RacunStavke.POS_RACUN_STAVKE_ARTIKL_POREZ_ID + " = " + (poreznaStopaId).toString());
    int result = Sqflite.firstIntValue(poreznStopaInRacuniCount);
    return result;
  }

  static Future<int> countArtiklInRacuni(Database database,
      int artiklId) async {
    final List<Map<String, dynamic>> artikliInRacuniCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + RacunStavke.TABLE_POS_RACUN_STAVKE + " WHERE " + RacunStavke.POS_RACUN_STAVKE_ARTIKL_ID + " = " + (artiklId).toString());
    int result = Sqflite.firstIntValue(artikliInRacuniCount);
    return result;
  }

  static Future<int> countKategorijaInRacuni(Database database,
      int kategorijaId) async {
    final List<Map<String, dynamic>> kategorijaInRacuniCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + RacunStavke.TABLE_POS_RACUN_STAVKE + " WHERE " + RacunStavke.POS_RACUN_STAVKE_ARTIKL_KATEGORIJA_ID + " = " + (kategorijaId).toString());
    int result = Sqflite.firstIntValue(kategorijaInRacuniCount);
    return result;
  }



}