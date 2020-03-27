import 'package:blagajna/db/tables/prodavac.dart';

class ProdavacPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String prodavac_name;
  String prodavac_oib;
  String prodavac_username;
  String prodavac_password;
  int prodavac_is_admin;
  int prodavac_is_active;

  ProdavacPos({int id, this.prodavac_name, this.prodavac_oib, this.prodavac_username,
    this.prodavac_password, this.prodavac_is_admin, this.prodavac_is_active}){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "prodavac_name": prodavac_name,
      "prodavac_oib": prodavac_oib,
      "prodavac_username": prodavac_username,
      "prodavac_password": prodavac_password,
      "prodavac_is_admin": prodavac_is_admin,
      "prodavac_is_active": prodavac_is_active,
    };
  }

  factory ProdavacPos.fromMap(Map queryMap) {
    return ProdavacPos(
      id: queryMap[Prodavac.POS_PRODAVAC_ID],
      prodavac_name: queryMap[Prodavac.POS_PRODAVAC_NAME],
      prodavac_oib: queryMap[Prodavac.POS_PRODAVAC_OIB],
      prodavac_username: queryMap[Prodavac.POS_PRODAVAC_USERNAME],
      prodavac_password: queryMap[Prodavac.POS_PRODAVAC_PASSWORD],
      prodavac_is_admin: queryMap[Prodavac.POS_PRODAVAC_IS_ADMIN],
      prodavac_is_active: queryMap[Prodavac.POS_PRODAVAC_IS_ACTIVE],
    );
  }
}
