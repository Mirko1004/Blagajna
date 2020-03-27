import 'package:blagajna/db/entities/printer_pos.dart';
import 'package:blagajna/db/tables/printer.dart';
import 'package:sqflite/sqflite.dart';

class PrinterDataSource{

  static const allColumns = [
    Printer.POS_PRINTER_ID,
    Printer.POS_PRINTER_NAME,
    Printer.POS_PRINTER_ADDRESS,
    Printer.POS_PRINTER_PROFILE,
    Printer.POS_PRINTER_COMMUNICATION_PROTOCOL,
    Printer.POS_PRINTER_WIDTH_SIGNS,
    Printer.POS_PRINTER_LANGUAGE,
    Printer.POS_PRINTER_USE_CRO_SIGNS,
    Printer.POS_PRINTER_TYPE,
    Printer.POS_PRINTER_IS_DEFAULT
    ];


  static Future<List<PrinterPos>> getAllPrinter(Database database) async {
    final List<Map> printerList = await database.query(Printer.TABLE_POS_PRINTER,
        columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return printerList.map((printerFromMap) => PrinterPos.fromMap(printerFromMap)).toList();
  }


  static Future<List<PrinterPos>> getDefaultPrinter(Database database) async {
    final List<Map> printerDefault = await database.query(Printer.TABLE_POS_PRINTER,
        columns: allColumns, where: Printer.POS_PRINTER_IS_DEFAULT + " = 1 " ,whereArgs: null, groupBy: null, having: null, orderBy: null);

    if (printerDefault.length > 0) {
      return printerDefault.map((printerFromMap) => PrinterPos.fromMap(printerDefault.first)).toList();
    }
    return null;
  }


  static Future<PrinterPos> getPrinterByID(Database database, int printerId ) async {
    final List<Map> printerById= await database.query(Printer.TABLE_POS_PRINTER,
        columns: allColumns, where: Printer.POS_PRINTER_ID + " = " + (printerId).toString() + " " ,whereArgs: null, groupBy: null, having: null, orderBy: null);

    if (printerById.length > 0) {
      return  PrinterPos.fromMap(printerById.first);
    }
    return null;
  }


  static Future<List<PrinterPos>>getPrinterByName(Database database, String inputText) async {

    if (inputText == null  ||  inputText.length  == 0)  {
      final List<Map<String, dynamic>> printerByName = await database.query(Printer.TABLE_POS_PRINTER,
          columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return printerByName .map((printerFromMap) => PrinterPos.fromMap(printerFromMap));

    }
    else {
      final List<Map<String, dynamic>> printerByName = await database.query(Printer.TABLE_POS_PRINTER,
          columns: allColumns, where: Printer.POS_PRINTER_NAME+ " LIKE '%" + inputText + "%'" ,whereArgs: null, groupBy: null, having: null, orderBy: null);
      return printerByName.map((printerFromMap) => PrinterPos.fromMap(printerFromMap));
    }
  }


  static void insertPrinter(Database database, PrinterPos printerPos) async{

    await database.insert(Printer.TABLE_POS_PRINTER, printerPos.toMap(), nullColumnHack: null );
    //database.update(Printer.TABLE_POS_PRINTER, printerPos.toMap(), where: Printer.POS_PRINTER_ID+ "=?", whereArgs: [(printerPos.id()).toString()] );
  }


  static void deletePrinter(Database database, int id) async{
    await database.delete(Printer.TABLE_POS_PRINTER,where: Printer.POS_PRINTER_ID
        + " = " + id.toString(), whereArgs: null);
  }

  static deleteAllPrinter(Database database) {
    database.delete(Printer.TABLE_POS_PRINTER,where: null, whereArgs: null);
    database.delete("sqlite_sequence", where: "name='" + Printer.TABLE_POS_PRINTER + "'", whereArgs: null);
  }


  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + Printer.TABLE_POS_PRINTER);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
  }


}