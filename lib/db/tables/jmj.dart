
class Jmj{

  static const String TABLE_POS_JMJ = "UNIT_POS";
  static const String POS_JMJ_ID = "_id";
  static const String POS_JMJ_NAME = "jmj_name";

  static get createTableString => 'CREATE TABLE $TABLE_POS_JMJ'
      '($POS_JMJ_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_JMJ_NAME TEXT)';
}
