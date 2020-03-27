import 'package:blagajna/db/tables/polog.dart';

class PologPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  double polog_polog;

  PologPos({int id, this.polog_polog, }){
    _id =  id;
  }

  toMap(){
    return {
      "_id" : id,
      "polog_polog" : polog_polog,
    };
  }

  factory PologPos.fromMap(Map queryMap) {
    return PologPos(
      id: queryMap[Polog.POS_POLOG_ID],
      polog_polog: queryMap[Polog.POS_POLOG_POLOG],
    );
  }
}
