import 'package:blagajna/db/entities/working_units_pos.dart';
import 'package:blagajna/db/tables/working_units.dart';
import 'package:sqflite/sqflite.dart';

class WorkingUnitsDataSource {

  static const allColumns = [
    WorkingUnits.WORKING_UNITS_TABLE_ID,
    WorkingUnits.WORKING_UNITS_ID,
    WorkingUnits.WORKING_UNITS_CODE,
    WorkingUnits.WORKING_UNITS_NAME,
    WorkingUnits.WORKING_UNITS_ADDRESS,
    WorkingUnits.WORKING_UNITS_PLACE,
    WorkingUnits.WORKING_UNITS_INDEX,
    WorkingUnits.WORKING_UNITS_TYPE_INDEX,
    WorkingUnits.WORKING_UNITS_DESCRIPTION
  ];

  static Future<List<WorkingUnitsPos>> getAllWorkingUnits(Database database) async {
    final List<Map> workingUnitsList = await database.query(WorkingUnits.TABLE_WORKING_UNITS,
        columns: allColumns, where: null, whereArgs: null, groupBy: null, having: null, orderBy: null );
    return workingUnitsList.map((workingUnitsFromMap) => WorkingUnitsPos.fromMap(workingUnitsFromMap) ).toList();
  }

  static Future<List<WorkingUnitsPos>> getAllWorkingUnitsById(Database database, int _id) async {
    final List<Map> workingUnitsById = await database.query(WorkingUnits.TABLE_WORKING_UNITS,
        columns: allColumns, where:WorkingUnits.WORKING_UNITS_TABLE_ID + " = " + _id.toString()+ " ", whereArgs: null, groupBy: null, having: null, orderBy: null );
    return workingUnitsById.map((workingUnitsFromMap) => WorkingUnitsPos.fromMap(workingUnitsFromMap) ).toList();
  }


  static Future<List<WorkingUnitsPos>> getAllWorkingUnitsByName(Database database, String inputText) async {

    if (inputText == null  ||  inputText.length  == 0)  {
      final List<Map<String, dynamic>> workingUnitsByName = await database.query(WorkingUnits.TABLE_WORKING_UNITS,
           columns: allColumns, where: null, whereArgs: null, groupBy: null, having: null, orderBy: null);
      return workingUnitsByName.map((workingUnitsFromMap) => WorkingUnitsPos.fromMap(workingUnitsFromMap) ).toList();
    }

    else {
      final List<Map<String, dynamic>> workingUnitsByName = await database.query( WorkingUnits.TABLE_WORKING_UNITS, distinct: true, columns: allColumns, where: WorkingUnits.WORKING_UNITS_NAME + " like '%" + inputText + "%'",
          whereArgs: null, groupBy: null, having: null, orderBy: null);
      return workingUnitsByName.map((workingUnitsFromMap) => WorkingUnitsPos.fromMap(workingUnitsFromMap) ).toList();
    }
  }

  static void insertWorkingUnits(Database database, WorkingUnitsPos workingUnitsPos) async {
    await database.insert(WorkingUnits.TABLE_WORKING_UNITS, workingUnitsPos.toMap(), nullColumnHack: null);
  }


  static void deleteAllWorkingUnits(Database database) async{
    await database.delete(WorkingUnits.TABLE_WORKING_UNITS, where: null, whereArgs: null );
    await database.delete("sqlite_sequence", where: "name='"+WorkingUnits.TABLE_WORKING_UNITS+"'",whereArgs: null);
  }


  static Future<int> countTable(Database database) async {
    final List<Map<String, dynamic>> tableCount = await database.rawQuery(
        "SELECT COUNT(*) FROM" + WorkingUnits.TABLE_WORKING_UNITS);
    int result = Sqflite.firstIntValue(tableCount);
    return result;
}

}