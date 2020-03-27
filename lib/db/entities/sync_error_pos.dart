import 'package:blagajna/db/tables/sync_error.dart';

class SyncErrorPos{

  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  int entity_id;
  int entity_type;
  int error_code;
  String error_message;
  int entity_update;


  SyncErrorPos({int id, this.entity_id, this.entity_type, this.error_code,
    this.error_message, this.entity_update}){
    _id = id;
  }

  toMap(){
    return {
      "_id" : id,
      "entity_id" : entity_id,
      "entity_type" : entity_type,
      "error_code" : error_code,
      "error_message" : error_message,
      "entity_update" : entity_update,
    };

  }

  factory SyncErrorPos.fromMap(Map queryMap) {
    return SyncErrorPos(
      id: queryMap[SyncError.SYNC_ERROR_TABLE_ID],
      entity_id: queryMap[SyncError.SYNC_ERROR_ENTITY_ID],
      entity_type: queryMap[SyncError.SYNC_ERROR_ENTITY_TYPE],
      error_code: queryMap[SyncError.SYNC_ERROR_CODE],
      error_message: queryMap[SyncError.SYNC_ERROR_MESSAGE],
      entity_update: queryMap[SyncError.SYNC_ERROR_ENTITY_UPDATE],
    );
  }
}



