
class Polog{

  static const String TABLE_POS_POLOG = "POLOG_POS";
  static const String POS_POLOG_ID = "_id";
  static const String POS_POLOG_POLOG = "polog_polog";

  static get createTableString => 'CREATE TABLE $TABLE_POS_POLOG'
      '($POS_POLOG_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_POLOG_POLOG REAL)';

}