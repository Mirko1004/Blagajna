import 'package:blagajna/db/tables/godina.dart';

class GodinaPos {
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String godina_godina;

  GodinaPos({int id, this.godina_godina }){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "godina_godina": godina_godina,
    };
  }

  factory GodinaPos.fromMap(Map queryMap) {
    return GodinaPos(
      id: queryMap[ Godina.POS_GODINA_ID],
      godina_godina: queryMap[Godina.POS_GODINA_GODINA],
    );
  }

}









