
class Tvrtka{

  static const String TABLE_POS_TVRTKA = "TVRTKA_POS";
  static const String POS_TVRTKA_ID = "_id";
  static const String POS_TVRTKA_NAZIV = "tvrtka_naziv";
  static const String POS_TVRTKA_ADRESA = "tvrtka_adresa";
  static const String POS_TVRTKA_POSTA = "tvrtka_posta";
  static const String POS_TVRTKA_MJESTO = "tvrtka_mjesto";
  static const String POS_TVRTKA_OIB = "tvrtka_oib";
  static const String POS_TVRTKA_VRSTA_OBVEZNIKA_PDV_ID = "tvrtka_vrsta_obveznika_pdv_id";
  static const String POS_TVRTKA_OZNAKA_NAPLATNOG_UREDAJA = "tvrtka_oznaka_uredaja";
  static const String POS_TVRTKA_OZNAKA_SLIJEDNOSTI_ID = "tvrtka_oznaka_slijednosti_id";

  static get createTableString => 'CREATE TABLE $TABLE_POS_TVRTKA'
      '($POS_TVRTKA_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_TVRTKA_NAZIV TEXT, '
      '$POS_TVRTKA_ADRESA TEXT, '
      '$POS_TVRTKA_POSTA TEXT,'
      '$POS_TVRTKA_MJESTO TEXT, '
      '$POS_TVRTKA_OIB TEXT, '
      '$POS_TVRTKA_VRSTA_OBVEZNIKA_PDV_ID INTEGER, '
      '$POS_TVRTKA_OZNAKA_NAPLATNOG_UREDAJA TEXT, '
      '$POS_TVRTKA_OZNAKA_SLIJEDNOSTI_ID INTEGER) ';
}