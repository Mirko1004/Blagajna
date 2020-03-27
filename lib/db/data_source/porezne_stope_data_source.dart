import 'package:blagajna/db/entities/porezna_stopa_pos.dart';
import 'package:blagajna/db/tables/porezne_stope.dart';
import 'package:blagajna/db/tables/vrsta_poreza.dart';
import 'package:sqflite/sqflite.dart';

class PorezneStopeDataSource{

  static Future<PoreznaStopaPos> getPoreznaStopaByID(Database database, int itemId) async {
  {
    String select = "SELECT "       + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_ID+","
        + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_NAME+","
        + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_VRSTA_POREZA_ID+","
        + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_PDV+","
        + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_PPOT+","
        +VrstaPoreza.TABLE_POS_VRSTA_POREZA+"."+VrstaPoreza.POS_VRSTA_POREZA_NAME
        +" FROM "
        + PorezneStope.TABLE_POREZNE_STOPE+" AS "+ PorezneStope.TABLE_POREZNE_STOPE+", "
        +VrstaPoreza.TABLE_POS_VRSTA_POREZA+" AS "+VrstaPoreza.TABLE_POS_VRSTA_POREZA+
        " WHERE "+VrstaPoreza.TABLE_POS_VRSTA_POREZA+"."+VrstaPoreza.POS_VRSTA_POREZA_ID+" = "+ PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_VRSTA_POREZA_ID+
        " AND "+ PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_ID+"="+(itemId).toString();


    final List<Map> porezneStopeById = await database.rawQuery(select, null);

    if (porezneStopeById.length > 0) {
      return  PoreznaStopaPos.fromMap(porezneStopeById.first);
    }
    return null;
  }

  }

  static Future<List<PoreznaStopaPos>> getAllPorezneStope(Database database) async {
    {
      String select = "SELECT "       + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_ID+","
          + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_NAME+","
          + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_VRSTA_POREZA_ID+","
          + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_PDV+","
          + PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_PPOT+","
          +VrstaPoreza.TABLE_POS_VRSTA_POREZA+"."+VrstaPoreza.POS_VRSTA_POREZA_NAME
          +" FROM "
          + PorezneStope.TABLE_POREZNE_STOPE+" AS "+ PorezneStope.TABLE_POREZNE_STOPE+", "
          +VrstaPoreza.TABLE_POS_VRSTA_POREZA+" AS "+VrstaPoreza.TABLE_POS_VRSTA_POREZA+
          " WHERE "+VrstaPoreza.TABLE_POS_VRSTA_POREZA+"."+VrstaPoreza.POS_VRSTA_POREZA_ID+" = "+ PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_VRSTA_POREZA_ID+
          " AND "+ PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_ID;


      final List<Map> porezneStopeAll = await database.rawQuery(select, null);
      return porezneStopeAll.map((porezneStopeFromMap) => PoreznaStopaPos.fromMap(porezneStopeFromMap)).toList();
    }

  }

  static Future<List<PoreznaStopaPos>> getPorezneStopeByName (Database database, String inputText) async {

    String select = "SELECT * "+
        "FROM "+ PorezneStope.TABLE_POREZNE_STOPE+", "+VrstaPoreza.TABLE_POS_VRSTA_POREZA+
        " WHERE "+VrstaPoreza.TABLE_POS_VRSTA_POREZA+"."+VrstaPoreza.POS_VRSTA_POREZA_ID+" = "+ PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_VRSTA_POREZA_ID;

    if (inputText == null  ||  inputText.length == 0)  {
      final List<Map> porezneStopeName = await database.rawQuery(select, null);
      return porezneStopeName.map((porezneStopeFromMap) => PoreznaStopaPos.fromMap(porezneStopeFromMap) ).toList();
    }

    else {
      select = select+" AND "+ PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_NAME+" LIKE '%"+inputText + "%'";
      final List<Map> porezneStopeName = await database.rawQuery(select, null);
      return porezneStopeName.map((porezneStopeFromMap) => PoreznaStopaPos.fromMap(porezneStopeFromMap) ).toList();
    }
  }


  static void insertPorezneStope(Database database, PoreznaStopaPos poreznaStopaPos) async{
    await database.insert(PorezneStope.TABLE_POREZNE_STOPE, poreznaStopaPos.toMap(), nullColumnHack: null);
    //database.update(PorezneStope.TABLE_POREZNE_STOPE, poreznaStopaPos.toMap(),  where: PorezneStope.POS_TAX_ID +"=?", whereArgs: [(poreznaStopaPos.id().toString())]);

  }


  static void deletePoreznaStopa(Database database, int _id) async{
    await database.delete(PorezneStope.TABLE_POREZNE_STOPE, where:PorezneStope.POS_TAX_ID
        + " = " + _id.toString(), whereArgs: null );
  }


  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + VrstaPoreza.TABLE_POS_VRSTA_POREZA);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }

}