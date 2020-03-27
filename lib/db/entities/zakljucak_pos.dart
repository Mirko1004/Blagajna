import 'package:blagajna/db/tables/zakljucak_kase.dart';

class ZakljucakKasePos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  int pos_zakljucak_broj;
  String pos_zakljucak_naziv;
  int pos_zakljucak_poslovni_prostor_id;
  String pos_zakljucak_poslovni_prostor_oznaka;
  String pos_zakljucak_naplatni_uredjaj;
  DateTime pos_zakljucak_datum_zakljucka;
  int pos_zakljucak_racun_od_id;
  int pos_zakljucak_racun_od_broj;
  int pos_zakljucak_racun_do_id;
  int pos_zakljucak_racun_do_broj;
  double pos_zakljucak_ukupno;


  ZakljucakKasePos({int id, this.pos_zakljucak_broj, this.pos_zakljucak_naziv, this.pos_zakljucak_poslovni_prostor_id, this.pos_zakljucak_poslovni_prostor_oznaka, this.pos_zakljucak_naplatni_uredjaj,
  this.pos_zakljucak_datum_zakljucka, this.pos_zakljucak_racun_od_id, this.pos_zakljucak_racun_od_broj, this.pos_zakljucak_racun_do_id, this.pos_zakljucak_racun_do_broj, this.pos_zakljucak_ukupno}){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "pos_zakljucak_broj": pos_zakljucak_broj,
      "pos_zakljucak_naziv": pos_zakljucak_naziv,
      "pos_zakljucak_poslovni_prostor_id": pos_zakljucak_poslovni_prostor_id,
      "pos_zakljucak_poslovni_prostor_oznaka": pos_zakljucak_poslovni_prostor_oznaka,
      "pos_zakljucak_naplatni_uredjaj": pos_zakljucak_naplatni_uredjaj,
      "pos_zakljucak_datum_zakljucka": pos_zakljucak_datum_zakljucka,
      "pos_zakljucak_racun_od_id": pos_zakljucak_racun_od_id,
      "pos_zakljucak_racun_od_broj": pos_zakljucak_racun_od_broj,
      "pos_zakljucak_racun_do_id": pos_zakljucak_racun_do_id,
      "pos_zakljucak_racun_do_broj": pos_zakljucak_racun_do_broj,
      "pos_zakljucak_ukupno": pos_zakljucak_ukupno,
    };
  }

  factory ZakljucakKasePos.fromMap(Map queryMap){
    return ZakljucakKasePos(
      id: queryMap[ZakljucakKase.POS_ZAKLJUCAK_KASE_ID],
      pos_zakljucak_broj: queryMap[ZakljucakKase.POS_ZAKLJUCAK_BROJ],
      pos_zakljucak_naziv: queryMap[ZakljucakKase.POS_ZAKLJUCAK_NAZIV],
      pos_zakljucak_poslovni_prostor_id: queryMap[ZakljucakKase.POS_ZAKLJUCAK_POSLOVNI_PROSTOR_ID],
      pos_zakljucak_poslovni_prostor_oznaka: queryMap[ZakljucakKase.POS_ZAKLJUCAK_POSLOVNI_PROSTOR_OZNAKA],
      pos_zakljucak_naplatni_uredjaj: queryMap[ZakljucakKase.POS_ZAKLJUCAK_NAPLATNI_UREDJAJ],
      pos_zakljucak_datum_zakljucka: queryMap[ZakljucakKase.POS_ZAKLJUCAK_DATUM_ZAKLJUCKA],
      pos_zakljucak_racun_od_id: queryMap[ZakljucakKase.POS_ZAKLJUCAK_RACUN_OD_ID],
      pos_zakljucak_racun_od_broj: queryMap[ZakljucakKase.POS_ZAKLJUCAK_RACUN_OD_NUMBER],
      pos_zakljucak_racun_do_id: queryMap[ZakljucakKase.POS_ZAKLJUCAK_RACUN_DO_ID],
      pos_zakljucak_racun_do_broj: queryMap[ZakljucakKase.POS_ZAKLJUCAK_RACUN_DO_NUMBER],
      pos_zakljucak_ukupno: queryMap[ZakljucakKase.POS_ZAKLJUCAK_UKUPNO],
    );
  }

}