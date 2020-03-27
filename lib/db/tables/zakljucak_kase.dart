class ZakljucakKase {

  static const String TABLE_POS_ZAKLJUCAK_KASE = "POS_ZAKLJUCAK_KASE";
  static const String POS_ZAKLJUCAK_KASE_ID = "_id";
  static const String POS_ZAKLJUCAK_BROJ = "pos_zakljucak_broj";
  static const String POS_ZAKLJUCAK_NAZIV = "pos_zakljucak_naziv";
  static const String POS_ZAKLJUCAK_POSLOVNI_PROSTOR_ID = "pos_zakljucak_poslovni_prostor_id";
  static const String POS_ZAKLJUCAK_POSLOVNI_PROSTOR_OZNAKA = "pos_zakljucak_poslovni_prostor_oznaka";
  static const String POS_ZAKLJUCAK_NAPLATNI_UREDJAJ = "pos_zakljucak_naplatni_uredjaj";
  static const String POS_ZAKLJUCAK_DATUM_ZAKLJUCKA = "pos_zakljucak_datum_zakljucka";
  static const String POS_ZAKLJUCAK_RACUN_OD_ID = "pos_zakljucak_racun_od_id";
  static const String POS_ZAKLJUCAK_RACUN_OD_NUMBER = "pos_zakljucak_racun_od_broj";
  static const String POS_ZAKLJUCAK_RACUN_DO_ID = "pos_zakljucak_racun_do_id";
  static const String POS_ZAKLJUCAK_RACUN_DO_NUMBER = "pos_zakljucak_racun_do_broj";
  static const String POS_ZAKLJUCAK_UKUPNO = "pos_zakljucak_ukupno";

  static get createTableString => 'CREATE TABLE $TABLE_POS_ZAKLJUCAK_KASE'
      '($POS_ZAKLJUCAK_KASE_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_ZAKLJUCAK_NAPLATNI_UREDJAJ TEXT, '
      '$POS_ZAKLJUCAK_BROJ INTEGER, '
      '$POS_ZAKLJUCAK_NAZIV TEXT,'
      '$POS_ZAKLJUCAK_POSLOVNI_PROSTOR_ID INTEGER, '
      '$POS_ZAKLJUCAK_POSLOVNI_PROSTOR_OZNAKA TEXT, '
      '$POS_ZAKLJUCAK_DATUM_ZAKLJUCKA DATETIME, '
      '$POS_ZAKLJUCAK_RACUN_OD_ID INTERGER, '
      '$POS_ZAKLJUCAK_RACUN_OD_NUMBER INTEGER, '
      '$POS_ZAKLJUCAK_RACUN_DO_ID INTEGER, '
      '$POS_ZAKLJUCAK_RACUN_DO_NUMBER INTEGER, '
      '$POS_ZAKLJUCAK_UKUPNO REAL)';
}