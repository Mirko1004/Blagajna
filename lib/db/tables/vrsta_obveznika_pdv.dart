
class VrstaObveznikaPdv{

  static const String TABLE_POS_VRSTA_OBVEZNIKA_PDV = "POS_VRSTA_OBVEZNIKA_PDV";
  static const String POS_VRSTA_OBVEZNIKA_PDV_ID = "_id";
  static const String POS_VRSTA_OBVEZNIKA_PDV_NAZIV = "vrsta_obveznika_naziv";

  static get createTableString => 'CREATE TABLE $TABLE_POS_VRSTA_OBVEZNIKA_PDV'
      '($POS_VRSTA_OBVEZNIKA_PDV_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_VRSTA_OBVEZNIKA_PDV_NAZIV TEXT)';
}