class OznakaSlijednosti {

  static const String POS_OZNAKA_SLIJEDNOSTI_ID = "_id";
  static const String TABLE_POS_OZNAKA_SLIJEDNOSTI = "OZNAKA_SLIJEDNOSTI_POS";
  static const String POS_OZNAKA_SLIJEDNOSTI_NAZIV = "pos_oznaka_slijednosti_naziv";

  static get createTableString => 'CREATE TABLE $TABLE_POS_OZNAKA_SLIJEDNOSTI'
      '($POS_OZNAKA_SLIJEDNOSTI_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_OZNAKA_SLIJEDNOSTI_NAZIV TEXT)';
}