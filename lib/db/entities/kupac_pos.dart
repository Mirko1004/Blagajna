import 'package:blagajna/db/tables/kupac.dart';

class KupacPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String kupac_name;
  String kupac_adresa;
  String kupac_posta;
  String kupac_mjesto;
  String kupac_oib;

  KupacPos({int id, this.kupac_name, this.kupac_adresa, this.kupac_posta, this.kupac_mjesto, this.kupac_oib }){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "kupac_name": kupac_name,
      "kupac_adresa": kupac_adresa,
      "kupac_posta": kupac_posta,
      "kupac_mjesto": kupac_mjesto,
      "kupac_oib": kupac_oib,
    };
  }

  factory KupacPos.fromMap(Map queryMap) {
    return KupacPos(
      id: queryMap[Kupac.POS_KUPAC_ID],
      kupac_name: queryMap[Kupac.POS_KUPAC_NAME],
      kupac_adresa: queryMap[Kupac.POS_KUPAC_ADRESA],
      kupac_posta: queryMap[Kupac.POS_KUPAC_POSTA],
      kupac_mjesto: queryMap[Kupac.POS_KUPAC_MJESTO],
      kupac_oib: queryMap[Kupac.POS_KUPAC_OIB],
    );
  }
}
