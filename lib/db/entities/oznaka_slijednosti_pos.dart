import 'package:blagajna/db/tables/oznaka_slijednosti.dart';

class OznakaSlijednostiPos{
  int id;
  String pos_oznaka_slijednosti_naziv;


  OznakaSlijednostiPos({this.id, this.pos_oznaka_slijednosti_naziv, });

  factory OznakaSlijednostiPos.fromMap(Map queryMap) {
    return OznakaSlijednostiPos(
      id: queryMap[OznakaSlijednosti.POS_OZNAKA_SLIJEDNOSTI_ID],
      pos_oznaka_slijednosti_naziv: queryMap[OznakaSlijednosti.POS_OZNAKA_SLIJEDNOSTI_NAZIV],
    );
  }
}

