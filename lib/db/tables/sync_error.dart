
class SyncError{

  static const String TABLE_SYNC_ERROR = "TABLE_SYNC_ERROR";
  static const String SYNC_ERROR_TABLE_ID = "_id";
  static const String SYNC_ERROR_ENTITY_ID = "entity_id";
  static const String SYNC_ERROR_ENTITY_TYPE= "entity_type";
  static const String SYNC_ERROR_CODE = "error_code";
  static const String SYNC_ERROR_MESSAGE = "error_message";
  static const String SYNC_ERROR_ENTITY_UPDATE = "entity_update";

  static get createTableString => 'CREATE TABLE $TABLE_SYNC_ERROR'
      '($SYNC_ERROR_TABLE_ID INTEGER PRIMARY KEY AUTOINCREMENT,'
      '$SYNC_ERROR_ENTITY_ID INTEGER,'
      '$SYNC_ERROR_ENTITY_TYPE INTEGER,'
      '$SYNC_ERROR_CODE INTEGER,'
      '$SYNC_ERROR_MESSAGE TEXT,'
      '$SYNC_ERROR_ENTITY_UPDATE INTEGER)';
}