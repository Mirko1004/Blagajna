
class Racun{

  static const String TABLE_POS_RACUN = "RACUN_POS";
  static const String POS_RACUN_ID = "_id";
  static const String POS_RACUN_BROJ = "racun_broj";
  static const String POS_RACUN_POSLOVNI_PROSTOR_ID = "racun_poslovni_prostor_id";
  static const String POS_RACUN_POSLOVNI_PROSTOR_NAZIV = "racun_poslovni_prostor_naziv";
  static const String POS_RACUN_POSLOVNI_PROSTOR_OZNAKA = "racun_poslovni_prostor_oznaka";
  static const String POS_RACUN_OZNAKA_NAPL_UREDJAJA = "racun_oznaka_naplatnog_uredjaja";
  static const String POS_RACUN_PRODAVAC_ID = "racun_prodavac_id";
  static const String POS_RACUN_PRODAVAC_IME = "racun_prodavac_ime";
  static const String POS_RACUN_PRODAVAC_OIB = "racun_prodavac_oib";
  static const String POS_RACUN_KUPAC_ID = "racun_kupac_id";
  static const String POS_RACUN_KUPAC_NAZIV = "racun_kupac_naziv";
  static const String POS_RACUN_KUPAC_ADRESA = "racun_kupac_adresa";
  static const String POS_RACUN_KUPAC_POSTA = "racun_kupac_posta";
  static const String POS_RACUN_KUPAC_MJESTO = "racun_kupac_mjesto";
  static const String POS_RACUN_KUPAC_OIB = "racun_kupac_oib";
  static const String POS_RACUN_VRSTA_PLACANJA_ID = "racun_vrsta_placanja_id";
  static const String POS_RACUN_VRSTA_PLACANJA_NAZIV = "racun_vrsta_placanja_naziv";
  static const String POS_RACUN_DATETIME_IZRADE = "racun_datum_izrade";
  static const String POS_RACUN_DATETIME_PLACANJA = "racun_datum_placanja";
  static const String POS_RACUN_STORNO = "racun_storniran";
  static const String POS_RACUN_STORNO_ORIGINAL_ID = "racun_storno_original_id";
  static const String POS_RACUN_DATETIME_STORNO = "racun_datum_storniranja";
  static const String POS_RACUN_UKUPNO_PRIJE_POPUSTA_IZNOS = "racun_ukupno_prije_popusta_iznos";
  static const String POS_RACUN_POPUST_IZNOS = "racun_popust_iznos";
  static const String POS_RACUN_UKUPNO_ZA_PLATITI = "racun_ukupno_za_platiti";
  static const String POS_RACUN_PARAGON_OBRAZAC = "racun_paragon_obrazac";
  static const String POS_RACUN_UUID = "racun_uuid";
  static const String POS_RACUN_JIR = "racun_jir";
  static const String POS_RACUN_ZKI = "racun_zki";
  static const String POS_RACUN_DATETIME_FISKALIZACIJE = "racun_datum_fiskalizacije";
  static const String POS_RACUN_FISKALIZIRAN = "racun_fiskaliziran";
  static const String POS_RACUN_FISKAL_REQUEST = "racun_fiskal_request";
  static const String POS_RACUN_FISKAL_RESPONSE= "racun_fiskal_response";
  static const String POS_RACUN_ISPISAN = "racun_ispisan";
  static const String POS_RACUN_ZAKLJUCEN = "racun_zakljucen";
  static const String POS_RACUN_ZAKLJUCAK_ID = "racun_zakljucak_id";
  static const String POS_RACUN_OZNAKA_SLIJEDNOSTI = "racun_oznaka_slijednosti"; //Oznaka slijednosti brojeva računa, da li redoslijed brojeva računa ide prema: naplatnom uređaju - "N" (defaultno), poslovnom prostoru - "D"
  static const String POS_RACUN_PRINT_COUNTER = "racun_print_counter";
  static const String POS_RACUN_HEADER = "racun_header";
  static const String POS_RACUN_FOOTER = "racun_footer";
  static const String POS_RACUN_VRSTA_POREZNOG_OBVEZNIKA = "racun_vrsta_poreznog_obveznika"; //1-R1, 2-R2, 3-R1 nije u sustavu pdv, 4-R2 nije u sustavu pdv
  static const String POS_RACUN_GODINA = "racun_godina";
  static const String POS_RACUN_CARD_REF_NUMBER = "racun_card_ref_number";
  static const String POS_RACUN_CARD_AUTH_CODE = "racun_card_auth_code";
  static const String POS_RACUN_CARD_HOLDER_AUTH = "racun_card_holder_auth";
  static const String POS_RACUN_CARD_TRANS_TYPE = "racun_card_trans_type";
  static const String POS_RACUN_CARD_AMOUNT = "racun_card_amount";

  static get createTableString => 'CREATE TABLE $TABLE_POS_RACUN'
      '($POS_RACUN_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_RACUN_BROJ INTEGER, '
      '$POS_RACUN_POSLOVNI_PROSTOR_ID INTEGER, '
      '$POS_RACUN_POSLOVNI_PROSTOR_NAZIV TEXT, '
      '$POS_RACUN_POSLOVNI_PROSTOR_OZNAKA TEXT, '
      '$POS_RACUN_OZNAKA_NAPL_UREDJAJA TEXT,'
      '$POS_RACUN_PRODAVAC_ID INTEGER, '
      '$POS_RACUN_PRODAVAC_IME TEXT, '
      '$POS_RACUN_PRODAVAC_OIB TEXT, '
      '$POS_RACUN_KUPAC_ID INTEGER, '
      '$POS_RACUN_KUPAC_NAZIV TEXT, '
      '$POS_RACUN_KUPAC_ADRESA TEXT, '
      '$POS_RACUN_KUPAC_POSTA TEXT, '
      '$POS_RACUN_KUPAC_MJESTO TEXT, '
      '$POS_RACUN_KUPAC_OIB TEXT, '
      '$POS_RACUN_VRSTA_PLACANJA_ID INTEGER, '
      '$POS_RACUN_VRSTA_PLACANJA_NAZIV TEXT, '
      '$POS_RACUN_DATETIME_IZRADE DATETIME, '
      '$POS_RACUN_DATETIME_PLACANJA DATETIME, '
      '$POS_RACUN_STORNO INTEGER, '
      '$POS_RACUN_STORNO_ORIGINAL_ID INTEGER,'
      '$POS_RACUN_DATETIME_STORNO DATETIME,'
      '$POS_RACUN_UKUPNO_PRIJE_POPUSTA_IZNOS REAL,'
      '$POS_RACUN_POPUST_IZNOS REAL,'
      '$POS_RACUN_UKUPNO_ZA_PLATITI REAL,'
      '$POS_RACUN_PARAGON_OBRAZAC TEXT,'
      '$POS_RACUN_UUID TEXT,'
      '$POS_RACUN_JIR TEXT,'
      '$POS_RACUN_ZKI TEXT,'
      '$POS_RACUN_DATETIME_FISKALIZACIJE DATETIME,'
      '$POS_RACUN_FISKALIZIRAN INTEGER,'
      '$POS_RACUN_FISKAL_REQUEST TEXT,'
      '$POS_RACUN_FISKAL_RESPONSE TEXT,'
      '$POS_RACUN_ISPISAN INTEGER,'
      '$POS_RACUN_ZAKLJUCEN INTEGER,'
      '$POS_RACUN_ZAKLJUCAK_ID INTEGER,'
      '$POS_RACUN_OZNAKA_SLIJEDNOSTI INTEGER,'
      '$POS_RACUN_PRINT_COUNTER INTEGER,'
      '$POS_RACUN_HEADER TEXT,'
      '$POS_RACUN_FOOTER TEXT,'
      '$POS_RACUN_VRSTA_POREZNOG_OBVEZNIKA INTEGER,'
      '$POS_RACUN_GODINA TEXT,'
      '$POS_RACUN_CARD_REF_NUMBER TEXT,'
      '$POS_RACUN_CARD_AUTH_CODE TEXT,'
      '$POS_RACUN_CARD_HOLDER_AUTH TEXT,'
      '$POS_RACUN_CARD_TRANS_TYPE TEXT,'
      '$POS_RACUN_CARD_AMOUNT TEXT)';
}