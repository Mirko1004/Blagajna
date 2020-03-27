
class RacunStavke {

  static const String TABLE_POS_RACUN_STAVKE = "RACUN_STAVKE_POS";
  static const  String POS_RACUN_STAVKE_ID = "_id";
  static const  String POS_RACUN_STAVKE_RACUN_ID = "racun_stavke_racun_id";
  static const  String POS_RACUN_STAVKE_ARTIKL_ID = "racun_stavke_artikl_id";
  static const  String POS_RACUN_STAVKE_ARTIKL_NAZIV = "racun_stavke_artikl_naziv";
  static const  String POS_RACUN_STAVKE_ARTIKL_CODE = "racun_stavke_artikl_code";
  static const  String POS_RACUN_STAVKE_ARTIKL_BARCODE = "racun_stavke_artikl_barcode";
  static const  String POS_RACUN_STAVKE_ARTIKL_MP_CIJENA = "racun_stavke_artikl_mp_cijena";
  static const  String POS_RACUN_STAVKE_ARTIKL_POVRATNA_NAKNADA = "racun_stavke_artikl_povratna_naknada";
  static const  String POS_RACUN_STAVKE_ARTIKL_JMJ_ID = "racun_stavke_artikl_jmj_id";
  static const  String POS_RACUN_STAVKE_ARTIKL_JMJ = "racun_stavke_artikl_jmj";
  static const  String POS_RACUN_STAVKE_ARTIKL_KATEGORIJA_ID = "racun_stavke_artikl_kategorija_id";
  static const  String POS_RACUN_STAVKE_ARTIKL_KATEGORIJA_NAZIV = "racun_stavke_artikl_kategorija_naziv";
  static const  String POS_RACUN_STAVKE_ARTIKL_POREZ_ID = "racun_stavke_artikl_porez_id";
  static const  String POS_RACUN_STAVKE_ARTIKL_POREZ_NAZIV = "racun_stavke_artikl_porez_naziv";
  static const  String POS_RACUN_STAVKE_ARTIKL_VRSTA_POREZA_ID = "racun_stavke_artikl_vrsta_poreza_id";
  static const  String POS_RACUN_STAVKE_ARTIKL_VRSTA_POREZA_NAZIV = "racun_stavke_artikl_vrsta_poreza_naziv";
  static const  String POS_RACUN_STAVKE_ARTIKL_PDV = "racun_stavke_artikl_pdv";
  static const  String POS_RACUN_STAVKE_ARTIKL_PPOT = "racun_stavke_artikl_ppot";
  static const  String POS_RACUN_STAVKE_KOLICINA = "racun_stavke_kolicina";
  static const  String POS_RACUN_STAVKE_POPUST_POSTO = "racun_stavke_popust_posto";
  static const  String POS_RACUN_STAVKE_POPUST_IZNOS = "racun_stavke_popust_iznos";
  static const  String POS_RACUN_STAVKE_IZNOS_BEZ_RABATA = "racun_stavke_iznos_bez_rabata";
  static const  String POS_RACUN_STAVKE_IZNOS = "racun_stavke_iznos";
  static const  String POS_RACUN_STAVKE_POREZ_IZNOS = "racun_stavke_porez_iznos";
  static const  String POS_RACUN_STAVKE_OSNOVICA_IZNOS = "racun_stavke_osnovica_iznos";
  static const  String POS_RACUN_STAVKE_PDV_IZNOS = "racun_stavke_pdv_iznos";
  static const  String POS_RACUN_STAVKE_PPOT_IZNOS = "racun_stavke_ppot_iznos";
  static const  String POS_RACUN_STAVKE_POVRATNA_NAKNADA_IZNOS = "racun_stavke_povratna_naknada_iznos";


  static get createTableString => 'CREATE TABLE $TABLE_POS_RACUN_STAVKE'
      '($POS_RACUN_STAVKE_ID INTEGER PRIMARY KEY AUTOINCREMENT,'
      '$POS_RACUN_STAVKE_RACUN_ID INTEGER,'
      '$POS_RACUN_STAVKE_ARTIKL_ID INTEGER,'
      '$POS_RACUN_STAVKE_ARTIKL_NAZIV TEXT,'
      '$POS_RACUN_STAVKE_ARTIKL_CODE TEXT,'
      '$POS_RACUN_STAVKE_ARTIKL_BARCODE TEXT,'
      '$POS_RACUN_STAVKE_ARTIKL_MP_CIJENA REAL,'
      '$POS_RACUN_STAVKE_ARTIKL_POVRATNA_NAKNADA REAL,'
      '$POS_RACUN_STAVKE_ARTIKL_JMJ_ID INTEGER,'
      '$POS_RACUN_STAVKE_ARTIKL_JMJ TEXT,'
      '$POS_RACUN_STAVKE_ARTIKL_KATEGORIJA_ID INTEGER,'
      '$POS_RACUN_STAVKE_ARTIKL_KATEGORIJA_NAZIV TEXT,'
      '$POS_RACUN_STAVKE_ARTIKL_POREZ_ID INTEGER,'
      '$POS_RACUN_STAVKE_ARTIKL_POREZ_NAZIV TEXT,'
      '$POS_RACUN_STAVKE_ARTIKL_VRSTA_POREZA_ID INTEGER,'
      '$POS_RACUN_STAVKE_ARTIKL_VRSTA_POREZA_NAZIV TEXT,'
      '$POS_RACUN_STAVKE_ARTIKL_PDV REAL,'
      '$POS_RACUN_STAVKE_ARTIKL_PPOT REAL,'
      '$POS_RACUN_STAVKE_KOLICINA REAL,'
      '$POS_RACUN_STAVKE_POPUST_POSTO REAL,'
      '$POS_RACUN_STAVKE_POPUST_IZNOS REAL,'
      '$POS_RACUN_STAVKE_IZNOS_BEZ_RABATA REAL,'
      '$POS_RACUN_STAVKE_IZNOS REAL,'
      '$POS_RACUN_STAVKE_POREZ_IZNOS REAL,'
      '$POS_RACUN_STAVKE_OSNOVICA_IZNOS REAL,'
      '$POS_RACUN_STAVKE_PDV_IZNOS REAL,'
      '$POS_RACUN_STAVKE_PPOT_IZNOS REAL,'
      '$POS_RACUN_STAVKE_POVRATNA_NAKNADA_IZNOS REAL)';
}