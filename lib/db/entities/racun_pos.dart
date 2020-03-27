import 'package:blagajna/db/tables/racun.dart';

class RacunPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  int racun_broj;
  int racun_poslovni_prostor_id;
  String racun_poslovni_prostor_naziv;
  String racun_poslovni_prostor_oznaka;
  String racun_oznaka_naplatnog_uredjaja;
  int racun_prodavac_id;
  String racun_prodavac_ime;
  String racun_prodavac_oib;
  int racun_kupac_id;
  String racun_kupac_naziv;
  String racun_kupac_adresa;
  String racun_kupac_posta;
  String racun_kupac_mjesto;
  String racun_kupac_oib;
  int racun_vrsta_placanja_id;
  String racun_vrsta_placanja_naziv;
  DateTime racun_datum_izrade;
  DateTime racun_datum_placanja;
  int racun_storniran;
  int racun_storno_original_id;
  DateTime racun_datum_storniranja;
  double racun_ukupno_prije_popusta_iznos;
  double racun_popust_iznos;
  double racun_ukupno_za_platiti;
  String racun_paragon_obrazac = null;
  String racun_uuid;
  String racun_jir;
  String racun_zki = null;
  DateTime racun_datum_fiskalizacije;
  int racun_fiskaliziran;
  String racun_fiskal_request;
  String racun_fiskal_response;
  int racun_ispisan;
  int racun_zakljucen;
  int racun_zakljucak_id;
  int racun_oznaka_slijednosti;
  int racun_print_counter;
  String racun_header;
  String racun_footer;
  int racun_vrsta_poreznog_obveznika;
  String racun_godina;
  String racun_card_ref_number;
  String racun_card_auth_code;
  String racun_card_holder_auth;
  String racun_card_trans_type;
  String racun_card_amount;


  RacunPos({ int id, this.racun_broj, this.racun_poslovni_prostor_id, this.racun_poslovni_prostor_naziv, this.racun_poslovni_prostor_oznaka, this.racun_oznaka_naplatnog_uredjaja, this.racun_prodavac_id,
this.racun_prodavac_ime, this.racun_prodavac_oib, this.racun_kupac_id, this.racun_kupac_naziv, this.racun_kupac_adresa, this.racun_kupac_posta, this.racun_kupac_mjesto, this.racun_kupac_oib,
this.racun_vrsta_placanja_id, this.racun_vrsta_placanja_naziv, this.racun_datum_izrade, this.racun_datum_placanja, this.racun_storniran, this.racun_storno_original_id, this.racun_datum_storniranja,
this.racun_ukupno_prije_popusta_iznos, this.racun_popust_iznos, this.racun_ukupno_za_platiti, this.racun_paragon_obrazac, this.racun_uuid, this.racun_jir, this.racun_zki, this.racun_datum_fiskalizacije,
this.racun_fiskaliziran, this.racun_fiskal_request, this.racun_fiskal_response, this.racun_ispisan, this.racun_zakljucen, this.racun_zakljucak_id, this.racun_oznaka_slijednosti, this.racun_print_counter,
this.racun_header, this.racun_footer, this.racun_vrsta_poreznog_obveznika, this.racun_godina, this.racun_card_ref_number, this.racun_card_auth_code, this.racun_card_holder_auth, this.racun_card_trans_type,
this.racun_card_amount}){
    _id = id;
  }


  toMap() {
    return {
      "_id": id,
      "racun_broj": racun_broj,
      "racun_poslovni_prostor_id": racun_poslovni_prostor_id,
      "racun_poslovni_prostor_naziv": racun_poslovni_prostor_naziv,
      "racun_poslovni_prostor_oznaka": racun_poslovni_prostor_oznaka,
      "racun_oznaka_naplatnog_uredjaja": racun_oznaka_naplatnog_uredjaja,
      "racun_prodavac_id": racun_prodavac_id,
      "racun_prodavac_ime": racun_prodavac_ime,
      "racun_prodavac_oib": racun_prodavac_oib,
      "racun_kupac_id": racun_kupac_id,
      "racun_kupac_naziv": racun_kupac_naziv,
      "racun_kupac_adresa": racun_kupac_adresa,
      "racun_kupac_posta": racun_kupac_posta,
      "racun_kupac_mjesto": racun_kupac_mjesto,
      "racun_kupac_oib": racun_kupac_oib,
      "racun_vrsta_placanja_id": racun_vrsta_placanja_id,
      "racun_vrsta_placanja_naziv": racun_vrsta_placanja_naziv,
      "racun_datum_izrade": racun_datum_izrade,
      "racun_datum_placanja": racun_datum_placanja,
      "racun_storniran": racun_storniran,
      "racun_storno_original_id": racun_storno_original_id,
      "racun_datum_storniranja": racun_datum_storniranja,
      "racun_ukupno_prije_popusta_iznos": racun_ukupno_prije_popusta_iznos,
      "racun_popust_iznos": racun_popust_iznos,
      "racun_ukupno_za_platiti": racun_ukupno_za_platiti,
      "racun_paragon_obrazac": racun_paragon_obrazac,
      "racun_uuid": racun_uuid,
      "racun_jir": racun_jir,
      "racun_zki": racun_zki,
      "racun_datum_fiskalizacije": racun_datum_fiskalizacije,
      "racun_fiskaliziran": racun_fiskaliziran,
      "racun_fiskal_request": racun_fiskal_request,
      "racun_fiskal_response": racun_fiskal_response,
      "racun_ispisan": racun_ispisan,
      "racun_zakljucen": racun_zakljucen,
      "racun_zakljucak_id": racun_zakljucak_id,
      "racun_oznaka_slijednosti": racun_oznaka_slijednosti,
      "racun_print_counter": racun_print_counter,
      "racun_header": racun_header,
      "racun_footer": racun_footer,
      "racun_vrsta_poreznog_obveznika": racun_vrsta_poreznog_obveznika,
      "racun_godina": racun_godina,
      "racun_card_ref_number": racun_card_ref_number,
      "racun_card_auth_code": racun_card_auth_code,
      "racun_card_holder_auth": racun_card_holder_auth,
      "racun_card_trans_type": racun_card_trans_type,
      "racun_card_amount": racun_card_amount,
    };
  }

factory RacunPos.fromMap(Map queryMap){
  return RacunPos(
    id: queryMap [Racun.POS_RACUN_ID],
    racun_broj: queryMap  [Racun.POS_RACUN_BROJ],
    racun_poslovni_prostor_id: queryMap  [Racun.POS_RACUN_POSLOVNI_PROSTOR_ID],
    racun_poslovni_prostor_naziv: queryMap  [Racun.POS_RACUN_POSLOVNI_PROSTOR_NAZIV],
    racun_poslovni_prostor_oznaka: queryMap  [Racun.POS_RACUN_POSLOVNI_PROSTOR_OZNAKA],
    racun_oznaka_naplatnog_uredjaja: queryMap  [Racun.POS_RACUN_OZNAKA_NAPL_UREDJAJA],
    racun_prodavac_id: queryMap  [Racun.POS_RACUN_PRODAVAC_ID],
    racun_prodavac_ime: queryMap  [Racun.POS_RACUN_PRODAVAC_IME],
    racun_prodavac_oib: queryMap  [Racun.POS_RACUN_PRODAVAC_OIB],
    racun_kupac_id: queryMap  [Racun.POS_RACUN_KUPAC_ID],
    racun_kupac_naziv: queryMap  [Racun.POS_RACUN_KUPAC_NAZIV],
    racun_kupac_adresa: queryMap  [Racun.POS_RACUN_KUPAC_ADRESA],
    racun_kupac_posta: queryMap  [Racun.POS_RACUN_KUPAC_POSTA],
    racun_kupac_mjesto: queryMap  [Racun.POS_RACUN_KUPAC_MJESTO],
    racun_kupac_oib: queryMap  [Racun.POS_RACUN_KUPAC_OIB],
    racun_vrsta_placanja_id: queryMap  [Racun.POS_RACUN_VRSTA_PLACANJA_ID],
    racun_vrsta_placanja_naziv: queryMap  [Racun.POS_RACUN_VRSTA_PLACANJA_NAZIV],
    racun_datum_izrade: queryMap  [Racun.POS_RACUN_DATETIME_IZRADE],
    racun_datum_placanja: queryMap  [Racun.POS_RACUN_DATETIME_PLACANJA],
    racun_storniran: queryMap  [Racun.POS_RACUN_STORNO],
    racun_storno_original_id: queryMap  [Racun.POS_RACUN_STORNO_ORIGINAL_ID],
    racun_datum_storniranja: queryMap  [Racun.POS_RACUN_DATETIME_STORNO],
    racun_ukupno_prije_popusta_iznos: queryMap  [Racun.POS_RACUN_UKUPNO_PRIJE_POPUSTA_IZNOS],
    racun_popust_iznos: queryMap  [Racun.POS_RACUN_POPUST_IZNOS],
    racun_ukupno_za_platiti: queryMap  [Racun.POS_RACUN_UKUPNO_ZA_PLATITI],
    racun_paragon_obrazac: queryMap  [Racun.POS_RACUN_PARAGON_OBRAZAC],
    racun_uuid: queryMap  [Racun.POS_RACUN_UUID],
    racun_jir: queryMap  [Racun.POS_RACUN_JIR],
    racun_zki: queryMap  [Racun.POS_RACUN_ZKI],
    racun_datum_fiskalizacije: queryMap  [Racun.POS_RACUN_DATETIME_FISKALIZACIJE],
    racun_fiskaliziran: queryMap  [Racun.POS_RACUN_FISKALIZIRAN],
    racun_fiskal_request: queryMap  [Racun.POS_RACUN_FISKAL_REQUEST],
    racun_fiskal_response: queryMap  [Racun.POS_RACUN_FISKAL_RESPONSE],
    racun_ispisan: queryMap  [Racun.POS_RACUN_ISPISAN],
    racun_zakljucen: queryMap  [Racun.POS_RACUN_ZAKLJUCEN],
    racun_zakljucak_id: queryMap  [Racun.POS_RACUN_ZAKLJUCAK_ID],
    racun_oznaka_slijednosti: queryMap  [Racun.POS_RACUN_OZNAKA_SLIJEDNOSTI],
    racun_print_counter: queryMap  [Racun.POS_RACUN_PRINT_COUNTER],
    racun_header: queryMap  [Racun.POS_RACUN_HEADER],
    racun_footer: queryMap  [Racun.POS_RACUN_FOOTER],
    racun_vrsta_poreznog_obveznika: queryMap  [Racun.POS_RACUN_VRSTA_POREZNOG_OBVEZNIKA],
    racun_godina: queryMap  [Racun.POS_RACUN_GODINA],
    racun_card_ref_number: queryMap  [Racun.POS_RACUN_CARD_REF_NUMBER],
    racun_card_auth_code: queryMap  [Racun.POS_RACUN_CARD_AUTH_CODE],
    racun_card_holder_auth: queryMap  [Racun.POS_RACUN_CARD_HOLDER_AUTH],
    racun_card_trans_type: queryMap  [Racun.POS_RACUN_CARD_TRANS_TYPE],
    racun_card_amount: queryMap  [Racun.POS_RACUN_CARD_AMOUNT],
  );

}

}


