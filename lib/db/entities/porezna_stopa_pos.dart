import 'package:blagajna/db/tables/porezne_stope.dart';
import 'package:blagajna/db/tables/vrsta_poreza.dart';

class PoreznaStopaPos{
  //Porezna stopa
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String tax_display_name;
  int tax_vrsta_poreza_id;
  double tax_pdv;
  double tax_ppot;

  //vrsta poreza
  int vrsta_poreza_id;
  String vrsta_poreza_tax_name;


  PoreznaStopaPos({int id, this.tax_display_name, this.tax_vrsta_poreza_id, this.tax_pdv, this.tax_ppot, this.vrsta_poreza_id, this.vrsta_poreza_tax_name}){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "tax_display_name": tax_display_name,
      "item_code": tax_vrsta_poreza_id,
      "tax_pdv": tax_pdv,
      "tax_ppot": tax_ppot,
      "vrsta_poreza_id": vrsta_poreza_id,
      "vrsta_poreza_tax_name": vrsta_poreza_tax_name,
    };
  }

  factory PoreznaStopaPos.fromMap(Map queryMap) {
    return PoreznaStopaPos(
      id: queryMap[PorezneStope.POS_TAX_ID],
      tax_display_name: queryMap[PorezneStope.POS_TAX_NAME],
      tax_vrsta_poreza_id: queryMap[PorezneStope.POS_TAX_VRSTA_POREZA_ID],
      tax_pdv: queryMap[PorezneStope.POS_TAX_PDV],
      tax_ppot: queryMap[PorezneStope.POS_TAX_PPOT],
      vrsta_poreza_id: queryMap[VrstaPoreza.POS_VRSTA_POREZA_ID],
      vrsta_poreza_tax_name: queryMap[VrstaPoreza.POS_VRSTA_POREZA_NAME],
    );
  }
}
