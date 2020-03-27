import 'package:blagajna/db/entities/racun_header_footer_pos.dart';
import 'package:blagajna/db/tables/racun_header_footer.dart';
import 'package:sqflite/sqflite.dart';

class RacunHeaderFooterDataSource{

  static const allColumns = [
    RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_ID,
    RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_HEADER,
    RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_FOOTER
  ];

  static Future<List<RacunHeaderFooterPos>> getRacunHeaderFooter(Database database) async {
    final List<Map> racunHeaderFooterList = await database.query(RacunHeaderFooter.TABLE_POS_RACUN_HEADER_FOOTER,
        columns: allColumns, where: RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_ID + " = 1 " ,whereArgs: null, groupBy: null, having: null, orderBy: null);
    return racunHeaderFooterList.map((racunHeaderFooterFromMap) => RacunHeaderFooterPos.fromMap(racunHeaderFooterList.first)).toList();
  }

  static Future insertHeaderFooter (Database database, RacunHeaderFooterPos racunHeaderFooterPos) async {
    await database.insert(RacunHeaderFooter.TABLE_POS_RACUN_HEADER_FOOTER, racunHeaderFooterPos.toMap());
  }

  static Future updateHeaderFooter (Database database, RacunHeaderFooterPos racunHeaderFooterPos) async {
    await database.update(RacunHeaderFooter.TABLE_POS_RACUN_HEADER_FOOTER, racunHeaderFooterPos.toMap(), where: RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_ID + "=?", whereArgs: [racunHeaderFooterPos.id().toString()]);
  }
}