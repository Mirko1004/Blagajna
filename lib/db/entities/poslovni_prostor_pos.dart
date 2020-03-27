import 'package:blagajna/db/tables/poslovni_prostor.dart';

class PoslovniProstorPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String poslovni_prostor_naziv;
  String poslovni_prostor_oznaka;
  int poslovni_prostor_ostali_tip_check;
  String poslovni_prostor_ulica;
  String poslovni_prostor_kucni_broj;
  String poslovni_prostor_kucni_broj_dodatak;
  String poslovni_prostor_postanski_broj;
  String poslovni_prostor_naselje;
  String poslovni_prostor_opcina;
  String poslovni_prostor_ostali_tip;
  String poslovni_prostor_radno_vrijeme;
  DateTime poslovni_prostor_pocetak_primjene;
  int poslovni_prostor_zatvoren;
  int poslovni_prostor_prijavljen;
  int poslovni_prostor_default;

  PoslovniProstorPos({int id, this.poslovni_prostor_naziv, this.poslovni_prostor_oznaka, this.poslovni_prostor_ostali_tip_check,
    this.poslovni_prostor_ulica, this.poslovni_prostor_kucni_broj, this.poslovni_prostor_kucni_broj_dodatak,
    this.poslovni_prostor_postanski_broj, this.poslovni_prostor_naselje, this.poslovni_prostor_opcina,
    this.poslovni_prostor_ostali_tip, this.poslovni_prostor_radno_vrijeme, this.poslovni_prostor_pocetak_primjene,
    this.poslovni_prostor_zatvoren, this.poslovni_prostor_prijavljen, this.poslovni_prostor_default}){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "poslovni_prostor_naziv": poslovni_prostor_naziv,
      "poslovni_prostor_oznaka": poslovni_prostor_oznaka,
      "poslovni_prostor_ostali_tip_check": poslovni_prostor_ostali_tip_check,
      "poslovni_prostor_ulica": poslovni_prostor_ulica,
      "poslovni_prostor_kucni_broj": poslovni_prostor_kucni_broj,
      "poslovni_prostor_kucni_broj_dodatak": poslovni_prostor_kucni_broj_dodatak,
      "poslovni_prostor_postanski_broj": poslovni_prostor_postanski_broj,
      "poslovni_prostor_naselje": poslovni_prostor_naselje,
      "poslovni_prostor_opcina": poslovni_prostor_opcina,
      "poslovni_prostor_ostali_tip": poslovni_prostor_ostali_tip,
      "poslovni_prostor_radno_vrijeme": poslovni_prostor_radno_vrijeme,
      "poslovni_prostor_pocetak_primjene": poslovni_prostor_pocetak_primjene.millisecond,
      "poslovni_prostor_zatvoren": poslovni_prostor_zatvoren,
      "poslovni_prostor_prijavljen": poslovni_prostor_prijavljen,
      "poslovni_prostor_default": poslovni_prostor_default,
    };
  }

  factory PoslovniProstorPos.fromMap(Map queryMap) {
    return PoslovniProstorPos(
      id: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_ID],
      poslovni_prostor_naziv: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_NAZIV],
      poslovni_prostor_oznaka: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_OZNAKA],
      poslovni_prostor_ostali_tip_check: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_OSTALI_TIP_CHECK],
      poslovni_prostor_ulica: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_ULICA],
      poslovni_prostor_kucni_broj: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_KUCNI_BROJ],
      poslovni_prostor_kucni_broj_dodatak: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_KUCNI_BROJ_DODATAK],
      poslovni_prostor_postanski_broj: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_POSTANSKI_BROJ],
      poslovni_prostor_naselje: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_NASELJE],
      poslovni_prostor_opcina: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_OPCINA],
      poslovni_prostor_ostali_tip: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_OSTALI_TIP],
      poslovni_prostor_radno_vrijeme: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_RADNO_VRIJEME],
      poslovni_prostor_pocetak_primjene: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_POCETAK_PRIMJENE],
      poslovni_prostor_zatvoren: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_ZATVOREN],
      poslovni_prostor_prijavljen: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_PRIJAVLJEN],
      poslovni_prostor_default: queryMap[PoslovniProstor.POS_POSLOVNI_PROSTOR_DEFAULT],
    );
  }
}
