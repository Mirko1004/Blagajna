
class Prodavac{

  static const String TABLE_POS_PRODAVAC = "PRODAVAC_POS";
  static const String POS_PRODAVAC_ID = "_id";
  static const String POS_PRODAVAC_NAME = "prodavac_name";
  static const String POS_PRODAVAC_OIB = "prodavac_oib";
  static const String POS_PRODAVAC_USERNAME = "prodavac_username";
  static const String POS_PRODAVAC_PASSWORD = "prodavac_password";
  static const String POS_PRODAVAC_IS_ADMIN = "prodavac_is_admin";
  static const String POS_PRODAVAC_IS_ACTIVE = "prodavac_is_active";

  static get createTableString => 'CREATE TABLE $TABLE_POS_PRODAVAC'
      '($POS_PRODAVAC_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_PRODAVAC_NAME TEXT, '
      '$POS_PRODAVAC_OIB TEXT, '
      '$POS_PRODAVAC_USERNAME TEXT,'
      '$POS_PRODAVAC_PASSWORD TEXT, '
      '$POS_PRODAVAC_IS_ADMIN INTEGER, '
      '$POS_PRODAVAC_IS_ACTIVE INTEGER)';
}