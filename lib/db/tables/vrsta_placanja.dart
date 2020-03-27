
class VrstaPlacanja{

  static const String TABLE_POS_VRSTA_PLACANJA = "VRSTA_PLACANJA_POS";
  static const String POS_VRSTA_PLACANJA_ID = "_id";
  static const String POS_VRSTA_PLACANJA_NAME = "vrsta_placanja_name";

  static get createTableString => 'CREATE TABLE $TABLE_POS_VRSTA_PLACANJA'
      '($POS_VRSTA_PLACANJA_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_VRSTA_PLACANJA_NAME TEXT)';
}