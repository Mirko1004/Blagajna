import 'package:blagajna/db/tables/artikli.dart';
import 'package:blagajna/db/tables/godina.dart';
import 'package:blagajna/db/tables/insert_pos_default_values.dart';
import 'package:blagajna/db/tables/jmj.dart';
import 'package:blagajna/db/tables/kategorija_artikla.dart';
import 'package:blagajna/db/tables/kupac.dart';
import 'package:blagajna/db/tables/oznaka_slijednosti.dart';
import 'package:blagajna/db/tables/polog.dart';
import 'package:blagajna/db/tables/porezne_stope.dart';
import 'package:blagajna/db/tables/poslovni_prostor.dart';
import 'package:blagajna/db/tables/printer.dart';
import 'package:blagajna/db/tables/prodavac.dart';
import 'package:blagajna/db/tables/racun.dart';
import 'package:blagajna/db/tables/racun_header_footer.dart';
import 'package:blagajna/db/tables/racun_stavke.dart';
import 'package:blagajna/db/tables/sync_error.dart';
import 'package:blagajna/db/tables/tvrtka.dart';
import 'package:blagajna/db/tables/vrsta_obveznika_pdv.dart';
import 'package:blagajna/db/tables/vrsta_placanja.dart';
import 'package:blagajna/db/tables/vrsta_poreza.dart';
import 'package:blagajna/db/tables/working_units.dart';
import 'package:blagajna/db/tables/zakljucak_kase.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {

  static DatabaseHelper _databaseHelper;
  static Database database;

  DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory DatabaseHelper() {

    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance(); // This is executed only once, singleton object
    }
    return _databaseHelper;
  }

  Future<Database> getDatabase() async {

    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'fiskalnakasa.db');

    Database database = await openDatabase(path, version: 6,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(OznakaSlijednosti.createTableString);
          await db.execute(ZakljucakKase.createTableString);
          await db.execute(RacunHeaderFooter.createTableString);
          await db.execute(Polog.createTableString);
          await db.execute(Godina.createTableString);
          await db.execute(Jmj.createTableString);
          await db.execute(KategorijaArtikla.createTableString);
          await db.execute(VrstaPoreza.createTableString);
          await db.execute(PorezneStope.createTableString);
          await db.execute(Prodavac.createTableString);
          await db.execute(Kupac.createTableString);
          await db.execute(VrstaObveznikaPdv.createTableString);
          await db.execute(Tvrtka.createTableString);
          await db.execute(PoslovniProstor.createTableString);
          await db.execute(VrstaPlacanja.createTableString);
          await db.execute(Artikli.createTableString);
          await db.execute(Racun.createTableString);
          await db.execute(RacunStavke.createTableString);
          await db.execute(Printer.createTableString);
          await db.execute(WorkingUnits.createTableString);
          await db.execute(SyncError.createTableString);

          InsertPosDefaultValues insertPosDefaultValues =  InsertPosDefaultValues(db);
          await insertPosDefaultValues.insertDefaultOznakaSlijednosti();
          await insertPosDefaultValues.insertDefaultRacunHeaderFooter();
          await insertPosDefaultValues.insertDefaultPolog();
          await insertPosDefaultValues.insertDefaultGodina();
          await insertPosDefaultValues.insertDefaultProdavac();
          await insertPosDefaultValues.insertDefaultTvrtka();
          await insertPosDefaultValues.insertDefaultPoslovniProstor();
          await insertPosDefaultValues.insertDefaultVrsteObveznikaPDV();
          await insertPosDefaultValues.insertDefaultJedinicneMjere();
          await insertPosDefaultValues.insertDefaultKategorije();
          await insertPosDefaultValues.insertDefaultVrstePlacanja();
          await insertPosDefaultValues.insertDefaultVrstePoreza();
          await insertPosDefaultValues.insertDefaultPorezneStope();
          await insertPosDefaultValues.insertDefaultArtikli();
        });

    return database;
  }

}