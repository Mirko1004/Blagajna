import 'package:blagajna/db/tables/vrsta_obveznika_pdv.dart';

class VrstaObveznikaPos{
  int id;
  String vrsta_obveznika_naziv;

  VrstaObveznikaPos({this.id, this.vrsta_obveznika_naziv });

  factory VrstaObveznikaPos.fromMap(Map queryMap) {
    return VrstaObveznikaPos(
      id: queryMap[VrstaObveznikaPdv.POS_VRSTA_OBVEZNIKA_PDV_ID],
      vrsta_obveznika_naziv: queryMap[VrstaObveznikaPdv.POS_VRSTA_OBVEZNIKA_PDV_NAZIV],
    );
  }
}
