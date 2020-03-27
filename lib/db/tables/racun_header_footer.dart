class RacunHeaderFooter {

  static const String TABLE_POS_RACUN_HEADER_FOOTER = "RACUN_HEADER_FOOTER_POS";
  static const String POS_RACUN_HEADER_FOOTER_ID = "_id";
  static const String POS_RACUN_HEADER_FOOTER_HEADER = "racun_header_footer_header";
  static const String POS_RACUN_HEADER_FOOTER_FOOTER = "racun_header_footer_footer";


  static get createTableString => 'CREATE TABLE $TABLE_POS_RACUN_HEADER_FOOTER'
      '($POS_RACUN_HEADER_FOOTER_ID INTEGER PRIMARY KEY AUTOINCREMENT,'
      '$POS_RACUN_HEADER_FOOTER_HEADER TEXT, '
      '$POS_RACUN_HEADER_FOOTER_FOOTER TEXT)';
}