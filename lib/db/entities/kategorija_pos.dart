import 'package:blagajna/db/tables/kategorija_artikla.dart';

class KategorijaPos {
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String kategorija_name;

  KategorijaPos.withName(this.kategorija_name);

  KategorijaPos({int id, this.kategorija_name }){
    _id = id;
  }

  toMap(){
    return {
      "_id" : id,
      "kategorija_name" : kategorija_name,
    };
  }

  factory KategorijaPos.fromMap(Map queryMap) {
    return KategorijaPos(
      id: queryMap[KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_ID],
      kategorija_name: queryMap[KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_NAZIV],
    );
  }
}
