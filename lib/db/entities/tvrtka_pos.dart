import 'package:blagajna/db/tables/tvrtka.dart';

class TvrtkaPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String tvrtka_naziv;
  String tvrtka_adresa;
  String tvrtka_posta;
  String tvrtka_mjesto;
  String tvrtka_oib;
  int tvrtka_vrsta_obveznika_pdv_id;
  String tvrtka_oznaka_uredaja;
  int tvrtka_oznaka_slijednosti_id;

  TvrtkaPos({int id, this.tvrtka_naziv, this.tvrtka_adresa, this.tvrtka_posta,
    this.tvrtka_mjesto, this.tvrtka_oib, this.tvrtka_vrsta_obveznika_pdv_id, this.tvrtka_oznaka_uredaja, this.tvrtka_oznaka_slijednosti_id}){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "tvrtka_naziv": tvrtka_naziv,
      "tvrtka_adresa": tvrtka_adresa,
      "tvrtka_posta": tvrtka_posta,
      "tvrtka_mjesto": tvrtka_mjesto,
      "tvrtka_oib": tvrtka_oib,
      "tvrtka_vrsta_obveznika_pdv_id": tvrtka_vrsta_obveznika_pdv_id,
      "tvrtka_oznaka_uredaja": tvrtka_oznaka_uredaja,
      "tvrtka_oznaka_slijednosti_id": tvrtka_oznaka_slijednosti_id,
    };
  }

  factory TvrtkaPos.fromMap(Map queryMap) {
    return TvrtkaPos(
      id: queryMap[Tvrtka.POS_TVRTKA_ID],
      tvrtka_naziv: queryMap[Tvrtka.POS_TVRTKA_NAZIV],
      tvrtka_adresa: queryMap[Tvrtka.POS_TVRTKA_ADRESA],
      tvrtka_posta: queryMap[Tvrtka.POS_TVRTKA_POSTA],
      tvrtka_mjesto: queryMap[Tvrtka.POS_TVRTKA_MJESTO],
      tvrtka_oib: queryMap[Tvrtka.POS_TVRTKA_OIB],
      tvrtka_vrsta_obveznika_pdv_id: queryMap[Tvrtka.POS_TVRTKA_VRSTA_OBVEZNIKA_PDV_ID],
      tvrtka_oznaka_uredaja: queryMap[Tvrtka.POS_TVRTKA_OZNAKA_NAPLATNOG_UREDAJA],
      tvrtka_oznaka_slijednosti_id: queryMap[Tvrtka.POS_TVRTKA_OZNAKA_SLIJEDNOSTI_ID],
    );
  }
}
