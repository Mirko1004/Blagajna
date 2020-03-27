import 'package:blagajna/db/entities/sync_error_pos.dart';
import 'package:blagajna/db/tables/sync_error.dart';
import 'package:sqflite/sqflite.dart';

class SyncErrorDataSource{

  static const allColumns = [
    SyncError.SYNC_ERROR_TABLE_ID,
    SyncError.SYNC_ERROR_ENTITY_ID,
    SyncError.SYNC_ERROR_ENTITY_TYPE,
    SyncError.SYNC_ERROR_CODE,
    SyncError.SYNC_ERROR_MESSAGE,
    SyncError.SYNC_ERROR_ENTITY_UPDATE
  ];


  static Future<List<SyncErrorPos>> getSyncErrors(Database database) async {
    final List<Map> syncErrorList = await database.query(SyncError.TABLE_SYNC_ERROR,
        columns: allColumns, where: null ,whereArgs: null, groupBy: null, having: null, orderBy: null);
    return syncErrorList.map((syncErrorFromMap) => SyncErrorPos.fromMap(syncErrorFromMap) ).toList();
  }


  static void insertUpdateSyncError(Database database, SyncErrorPos syncErrorPos) async{

    await database.query(SyncError.TABLE_SYNC_ERROR, columns: allColumns, where: SyncError.SYNC_ERROR_ENTITY_ID + " = ? AND " + SyncError.SYNC_ERROR_ENTITY_TYPE + " = ? ",
        whereArgs: [syncErrorPos.entity_id, syncErrorPos.entity_type], groupBy: null, having: null, orderBy: null );
    await database.insert(SyncError.TABLE_SYNC_ERROR, syncErrorPos.toMap(), nullColumnHack: null );
    await database.update(SyncError.TABLE_SYNC_ERROR, syncErrorPos.toMap(), where: SyncError.SYNC_ERROR_ENTITY_ID + " = ? AND " + SyncError.SYNC_ERROR_ENTITY_TYPE + " = ? ",
        whereArgs: [(syncErrorPos.entity_id).toString(), syncErrorPos.entity_type.toString()] );
  }


  static void deleteSyncError(Database database,int entityId, int entityType, bool isUpdate) async{

    int update = 1;
    if (!isUpdate)
      update = 0;

    await database.delete(SyncError.TABLE_SYNC_ERROR, where: SyncError.SYNC_ERROR_ENTITY_ID + " = ? AND " + SyncError.SYNC_ERROR_ENTITY_TYPE + " = ? AND " + SyncError.SYNC_ERROR_ENTITY_UPDATE + " = ?",
    whereArgs: [entityId.toString(), entityType.toString(), update.toString()]);
  }


}