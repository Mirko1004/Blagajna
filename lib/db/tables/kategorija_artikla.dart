
class KategorijaArtikla{

  static const String TABLE_POS_KATEGORIJA_ARTIKLA = "KATEGORIJA_POS";
  static const String POS_KATEGORIJA_ARTIKLA_ID = "_id";
  static const String POS_KATEGORIJA_ARTIKLA_NAZIV = "kategorija_name";

  static get createTableString => 'CREATE TABLE $TABLE_POS_KATEGORIJA_ARTIKLA'
      '($POS_KATEGORIJA_ARTIKLA_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_KATEGORIJA_ARTIKLA_NAZIV TEXT)';

}