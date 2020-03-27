
class PoslovniProstor{

  static const String TABLE_POS_POSLOVNI_PROSTOR = "POSLOVNI_PROSTOR_POS";
  static const String POS_POSLOVNI_PROSTOR_ID = "_id";
  static const String POS_POSLOVNI_PROSTOR_NAZIV = "poslovni_prostor_naziv";
  static const String POS_POSLOVNI_PROSTOR_OZNAKA = "poslovni_prostor_oznaka";
  static const String POS_POSLOVNI_PROSTOR_OSTALI_TIP_CHECK = "poslovni_prostor_ostali_tip_check";
  static const String POS_POSLOVNI_PROSTOR_ULICA = "poslovni_prostor_ulica";
  static const String POS_POSLOVNI_PROSTOR_KUCNI_BROJ = "poslovni_prostor_kucni_broj";
  static const String POS_POSLOVNI_PROSTOR_KUCNI_BROJ_DODATAK = "poslovni_prostor_kucni_broj_dodatak";
  static const String POS_POSLOVNI_PROSTOR_POSTANSKI_BROJ = "poslovni_prostor_postanski_broj";
  static const String POS_POSLOVNI_PROSTOR_NASELJE = "poslovni_prostor_naselje";
  static const String POS_POSLOVNI_PROSTOR_OPCINA = "poslovni_prostor_opcina";
  static const String POS_POSLOVNI_PROSTOR_OSTALI_TIP = "poslovni_prostor_ostali_tip";
  static const String POS_POSLOVNI_PROSTOR_RADNO_VRIJEME = "poslovni_prostor_radno_vrijeme";
  static const String POS_POSLOVNI_PROSTOR_POCETAK_PRIMJENE = "poslovni_prostor_pocetak_primjene";
  static const String POS_POSLOVNI_PROSTOR_ZATVOREN = "poslovni_prostor_zatvoren";
  static const String POS_POSLOVNI_PROSTOR_PRIJAVLJEN = "poslovni_prostor_prijavljen";
  static const String POS_POSLOVNI_PROSTOR_DEFAULT = "poslovni_prostor_default";

  static get createTableString => 'CREATE TABLE $TABLE_POS_POSLOVNI_PROSTOR'
      '($POS_POSLOVNI_PROSTOR_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$POS_POSLOVNI_PROSTOR_NAZIV TEXT, '
      '$POS_POSLOVNI_PROSTOR_OZNAKA TEXT, '
      '$POS_POSLOVNI_PROSTOR_OSTALI_TIP_CHECK INTEGER,'
      '$POS_POSLOVNI_PROSTOR_ULICA TEXT, '
      '$POS_POSLOVNI_PROSTOR_KUCNI_BROJ TEXT, '
      '$POS_POSLOVNI_PROSTOR_KUCNI_BROJ_DODATAK TEXT, '
      '$POS_POSLOVNI_PROSTOR_POSTANSKI_BROJ TEXT, '
      '$POS_POSLOVNI_PROSTOR_NASELJE TEXT, '
      '$POS_POSLOVNI_PROSTOR_OPCINA TEXT,'
      '$POS_POSLOVNI_PROSTOR_OSTALI_TIP TEXT,'
      '$POS_POSLOVNI_PROSTOR_RADNO_VRIJEME TEXT,'
      '$POS_POSLOVNI_PROSTOR_POCETAK_PRIMJENE DATETIME,'
      '$POS_POSLOVNI_PROSTOR_ZATVOREN INTEGER,'
      '$POS_POSLOVNI_PROSTOR_PRIJAVLJEN INTEGER,'
      '$POS_POSLOVNI_PROSTOR_DEFAULT INTEGER)';
}