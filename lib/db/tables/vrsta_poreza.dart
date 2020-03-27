class VrstaPoreza {

  static const String TABLE_POS_VRSTA_POREZA = "VRSTA_POREZA_POS";
  static const String POS_VRSTA_POREZA_ID = "_id";
  static const String POS_VRSTA_POREZA_NAME = "tax_name";

  static get createTableString => 'CREATE TABLE $TABLE_POS_VRSTA_POREZA'
        '($POS_VRSTA_POREZA_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
        '$POS_VRSTA_POREZA_NAME TEXT)';
}