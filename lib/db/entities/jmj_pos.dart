import 'package:blagajna/db/tables/jmj.dart';

class JmjPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String jmj_name;

  JmjPos({int id, this.jmj_name }){
    _id = id;
  }

  factory JmjPos.fromMap(Map queryMap) {
    return JmjPos(
      id: queryMap[Jmj.POS_JMJ_ID],
      jmj_name: queryMap[Jmj.POS_JMJ_NAME],
    );
  }
}
