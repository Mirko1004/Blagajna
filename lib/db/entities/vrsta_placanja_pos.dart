import 'package:blagajna/db/tables/vrsta_placanja.dart';

class VrstaPlacanjaPos{
  int id;
  String vrsta_placanja_name;


  int getId()  { return id;}

void setId(int id) {this.id = id;}


String getVrsta_placanja_name() { return vrsta_placanja_name;}

void setVrsta_placanja_name(String vrsta_placanja_name) {this.vrsta_placanja_name = vrsta_placanja_name;}


  VrstaPlacanjaPos({this.id, this.vrsta_placanja_name});

  factory VrstaPlacanjaPos.fromMap(Map queryMap) {
    return VrstaPlacanjaPos(
      id: queryMap[VrstaPlacanja.POS_VRSTA_PLACANJA_ID],
      vrsta_placanja_name: queryMap[VrstaPlacanja.POS_VRSTA_PLACANJA_NAME],
    );
  }
}
