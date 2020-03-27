
class Artikli{

  static const String TABLE_POS_ARTICLE = "ARTICLE_POS";
  static const String POS_ARTICLE_ID = "_id";
  static const String POS_ARTICLE_ITEM_ID = "item_id";
  static const String POS_ARTICLE_ITEM_CODE = "item_code";
  static const String POS_ARTICLE_ITEM_BARCODE = "item_barcode";
  static const String POS_ARTICLE_ITEM_NAME = "item_name";
  static const String POS_ARTICLE_ITEM_MP_PRICE = "item_mp_price";
  static const String POS_ARTICLE_ITEM_POPUST_POSTO = "item_popust_posto";
  static const String POS_ARTICLE_ITEM_TAX_ID = "item_tax_id";
  static const String POS_ARTICLE_UNIT_ID = "item_unit_id";
  static const String POS_ARTICLE_KATEGORIJA_ID = "item_kategorija_id";
  static const String POS_ARTICLE_POVRATNA_NAKNADA = "item_povratna_naknada";
  static const String POS_ARTICLE_ACTIVE = "item_active";

  static get createTableString => 'CREATE TABLE $TABLE_POS_ARTICLE'
      '($POS_ARTICLE_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_ARTICLE_ITEM_ID INTEGER, '
      '$POS_ARTICLE_ITEM_CODE TEXT, '
      '$POS_ARTICLE_ITEM_BARCODE TEXT,'
      '$POS_ARTICLE_ITEM_NAME TEXT, '
      '$POS_ARTICLE_ITEM_MP_PRICE REAL, '
      '$POS_ARTICLE_ITEM_POPUST_POSTO REAL, '
      '$POS_ARTICLE_ITEM_TAX_ID INTEGER, '
      '$POS_ARTICLE_UNIT_ID INTEGER, '
      '$POS_ARTICLE_KATEGORIJA_ID INTEGER,'
      '$POS_ARTICLE_POVRATNA_NAKNADA REAL,'
      '$POS_ARTICLE_ACTIVE INTEGER) ';
}