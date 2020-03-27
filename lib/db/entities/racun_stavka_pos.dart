import 'package:blagajna/db/tables/racun_stavke.dart';

class RacunStavkaPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  int racun_stavke_racun_id;
  int racun_stavke_artikl_id;
  String racun_stavke_artikl_naziv;
  String racun_stavke_artikl_code;
  String racun_stavke_artikl_barcode;
  double racun_stavke_artikl_mp_cijena;
  double racun_stavke_artikl_povratna_naknada;
  int racun_stavke_artikl_kategorija_id;
  String racun_stavke_artikl_kategorija_naziv;
  int racun_stavke_artikl_jmj_id;
  String racun_stavke_artikl_jmj;
  int racun_stavke_artikl_porez_id;
  String racun_stavke_artikl_porez_naziv;
  int racun_stavke_artikl_vrsta_poreza_id;
  String racun_stavke_artikl_vrsta_poreza_naziv;
  double racun_stavke_artikl_pdv;
  double racun_stavke_artikl_ppot;
  double racun_stavke_kolicina;
  double racun_stavke_popust_posto;
  double racun_stavke_popust_iznos;
  double racun_stavke_iznos_bez_rabata;
  double racun_stavke_iznos;
  double racun_stavke_porez_iznos;
  double racun_stavke_osnovica_iznos;
  double racun_stavke_pdv_iznos;
  double racun_stavke_ppot_iznos;
  double racun_stavke_povratna_naknada_iznos;



  RacunStavkaPos({int id, this.racun_stavke_racun_id, this.racun_stavke_artikl_id, this.racun_stavke_artikl_naziv, this.racun_stavke_artikl_code, this.racun_stavke_artikl_barcode, this.racun_stavke_artikl_mp_cijena,
    this.racun_stavke_artikl_povratna_naknada, this.racun_stavke_artikl_kategorija_id, this.racun_stavke_artikl_kategorija_naziv, this.racun_stavke_artikl_jmj_id, this.racun_stavke_artikl_jmj,
    this.racun_stavke_artikl_porez_id, this.racun_stavke_artikl_porez_naziv, this.racun_stavke_artikl_vrsta_poreza_id, this.racun_stavke_artikl_vrsta_poreza_naziv, this.racun_stavke_artikl_pdv,
    this.racun_stavke_artikl_ppot, this.racun_stavke_kolicina, this.racun_stavke_popust_posto, this.racun_stavke_popust_iznos, this.racun_stavke_iznos_bez_rabata, this.racun_stavke_iznos,
    this.racun_stavke_porez_iznos, this.racun_stavke_osnovica_iznos, this.racun_stavke_pdv_iznos, this.racun_stavke_ppot_iznos, this.racun_stavke_povratna_naknada_iznos}){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "racun_stavke_racun_id": racun_stavke_racun_id,
      "racun_stavke_artikl_id": racun_stavke_artikl_id,
      "racun_stavke_artikl_naziv": racun_stavke_artikl_naziv,
      "racun_stavke_artikl_code": racun_stavke_artikl_code,
      "racun_stavke_artikl_barcode": racun_stavke_artikl_barcode,
      "racun_stavke_artikl_mp_cijena": racun_stavke_artikl_mp_cijena,
      "racun_stavke_artikl_povratna_naknada": racun_stavke_artikl_povratna_naknada,
      "racun_stavke_artikl_kategorija_id": racun_stavke_artikl_kategorija_id,
      "racun_stavke_artikl_kategorija_naziv": racun_stavke_artikl_kategorija_naziv,
      "racun_stavke_artikl_jmj_id": racun_stavke_artikl_jmj_id,
      "racun_stavke_artikl_jmj": racun_stavke_artikl_jmj,
      "racun_stavke_artikl_porez_id": racun_stavke_artikl_porez_id,
      "racun_stavke_artikl_porez_naziv": racun_stavke_artikl_porez_naziv,
      "racun_stavke_artikl_vrsta_poreza_id": racun_stavke_artikl_vrsta_poreza_id,
      "racun_stavke_artikl_vrsta_poreza_naziv": racun_stavke_artikl_vrsta_poreza_naziv,
      "racun_stavke_artikl_pdv": racun_stavke_artikl_pdv,
      "racun_stavke_artikl_ppot": racun_stavke_artikl_ppot,
      "racun_stavke_kolicina": racun_stavke_kolicina,
      "racun_stavke_popust_posto": racun_stavke_popust_posto,
      "racun_stavke_popust_iznos": racun_stavke_popust_iznos,
      "racun_stavke_iznos_bez_rabata": racun_stavke_iznos_bez_rabata,
      "racun_stavke_iznos": racun_stavke_iznos,
      "racun_stavke_porez_iznos": racun_stavke_porez_iznos,
      "racun_stavke_osnovica_iznos": racun_stavke_osnovica_iznos,
      "racun_stavke_pdv_iznos": racun_stavke_pdv_iznos,
      "racun_stavke_ppot_iznos": racun_stavke_ppot_iznos,
      "racun_stavke_povratna_naknada_iznos": racun_stavke_povratna_naknada_iznos,
    };
  }

  factory RacunStavkaPos.fromMap(Map queryMap){
    return RacunStavkaPos(
      id: queryMap [RacunStavke.POS_RACUN_STAVKE_ID],
      racun_stavke_racun_id: queryMap  [RacunStavke.POS_RACUN_STAVKE_RACUN_ID],
      racun_stavke_artikl_id: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_ID],
      racun_stavke_artikl_naziv: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_NAZIV],
      racun_stavke_artikl_code: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_CODE],
      racun_stavke_artikl_barcode: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_BARCODE],
      racun_stavke_artikl_mp_cijena: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_MP_CIJENA],
      racun_stavke_artikl_povratna_naknada: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_POVRATNA_NAKNADA],
      racun_stavke_artikl_kategorija_id: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_KATEGORIJA_ID],
      racun_stavke_artikl_kategorija_naziv: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_KATEGORIJA_NAZIV],
      racun_stavke_artikl_jmj_id: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_JMJ_ID],
      racun_stavke_artikl_jmj: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_JMJ],
      racun_stavke_artikl_porez_id: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_POREZ_ID],
      racun_stavke_artikl_porez_naziv: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_POREZ_NAZIV],
      racun_stavke_artikl_vrsta_poreza_id: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_VRSTA_POREZA_ID],
      racun_stavke_artikl_vrsta_poreza_naziv: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_VRSTA_POREZA_NAZIV],
      racun_stavke_artikl_pdv: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_PDV],
      racun_stavke_artikl_ppot: queryMap  [RacunStavke.POS_RACUN_STAVKE_ARTIKL_PPOT],
      racun_stavke_kolicina: queryMap  [RacunStavke.POS_RACUN_STAVKE_KOLICINA],
      racun_stavke_popust_posto: queryMap  [RacunStavke.POS_RACUN_STAVKE_POPUST_POSTO],
      racun_stavke_popust_iznos: queryMap  [RacunStavke.POS_RACUN_STAVKE_POPUST_IZNOS],
      racun_stavke_iznos_bez_rabata: queryMap  [RacunStavke.POS_RACUN_STAVKE_IZNOS_BEZ_RABATA],
      racun_stavke_iznos: queryMap  [RacunStavke.POS_RACUN_STAVKE_IZNOS],
      racun_stavke_porez_iznos: queryMap  [RacunStavke.POS_RACUN_STAVKE_POREZ_IZNOS],
      racun_stavke_osnovica_iznos: queryMap  [RacunStavke.POS_RACUN_STAVKE_OSNOVICA_IZNOS],
      racun_stavke_pdv_iznos: queryMap  [RacunStavke.POS_RACUN_STAVKE_PDV_IZNOS],
      racun_stavke_ppot_iznos: queryMap  [RacunStavke.POS_RACUN_STAVKE_PPOT_IZNOS],
      racun_stavke_povratna_naknada_iznos: queryMap  [RacunStavke.POS_RACUN_STAVKE_POVRATNA_NAKNADA_IZNOS],
    );

  }
}
