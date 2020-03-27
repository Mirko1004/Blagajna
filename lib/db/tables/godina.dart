
class Godina{

  static const String TABLE_POS_GODINA = "GODINA_POS";
  static const String POS_GODINA_ID = "_id";
  static const String POS_GODINA_GODINA = "godina_godina";

  static get createTableString => 'CREATE TABLE $TABLE_POS_GODINA'
      '($POS_GODINA_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_GODINA_GODINA TEXT)';

}