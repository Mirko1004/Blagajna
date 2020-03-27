
class PorezneStope{

  static const String TABLE_POREZNE_STOPE = "TAX_POS";
  static const String POS_TAX_ID = "_id";
  static const String POS_TAX_NAME = "tax_display_name";
  static const String POS_TAX_VRSTA_POREZA_ID = "tax_vrsta_poreza_id";
  static const String POS_TAX_PDV = "tax_pdv";
  static const String POS_TAX_PPOT = "tax_ppot";

  static get createTableString => 'CREATE TABLE $TABLE_POREZNE_STOPE'
      '($POS_TAX_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_TAX_NAME TEXT, '
      '$POS_TAX_VRSTA_POREZA_ID INTEGER, '
      '$POS_TAX_PDV REAL,'
      '$POS_TAX_PPOT REAL)';

}