
class Kupac{

  static const String TABLE_POS_KUPAC = "KUPAC_POS";
  static const String POS_KUPAC_ID = "_id";
  static const String POS_KUPAC_NAME = "kupac_name";
  static const String POS_KUPAC_ADRESA = "kupac_adresa";
  static const String POS_KUPAC_POSTA = "kupac_posta";
  static const String POS_KUPAC_MJESTO = "kupac_mjesto";
  static const String POS_KUPAC_OIB = "kupac_oib";

 static get createTableString => 'CREATE TABLE $TABLE_POS_KUPAC'
     '($POS_KUPAC_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
     '$POS_KUPAC_NAME TEXT, '
     '$POS_KUPAC_ADRESA TEXT, '
     '$POS_KUPAC_POSTA TEXT,'
     '$POS_KUPAC_MJESTO TEXT, '
     '$POS_KUPAC_OIB TEXT)';
}