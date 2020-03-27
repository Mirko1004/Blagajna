import 'package:blagajna/db/tables/artikli.dart';
import 'package:blagajna/db/tables/jmj.dart';
import 'package:blagajna/db/tables/porezne_stope.dart';

class ArticlePos {
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  int item_id;
  String item_code;
  String item_barcode;
  String item_name;
  double item_mp_price;
  double item_popust_posto;
  int item_tax_id;
  int item_unit_id;
  int item_kategorija_id;
  double item_povratna_naknada;
  int item_active;

  ArticlePos({int id, this.item_id, this.item_code, this.item_barcode,
    this.item_name, this.item_mp_price, this.item_popust_posto,
    this.item_tax_id, this.item_unit_id, this.item_kategorija_id,
    this.item_povratna_naknada, this.item_active}){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "item_id": item_id,
      "item_code": item_code,
      "item_barcode": item_barcode,
      "item_name": item_name,
      "item_mp_price": item_mp_price,
      "item_popust_posto": item_popust_posto,
      "item_tax_id": item_tax_id,
      "item_unit_id": item_unit_id,
      "item_kategorija_id": item_kategorija_id,
      "item_povratna_naknada": item_povratna_naknada,
      "item_active": item_active,
    };
  }

}

class ArticlePosLarge {
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  int item_id;
  String item_code;
  String item_barcode;
  String item_name;
  double item_mp_price;
  double item_popust_posto;
  int item_tax_id;
  int item_unit_id;
  int item_kategorija_id;
  double item_povratna_naknada;
  int item_active;
  String tax_display_name;
  double tax_pdv;
  double tax_ppot;
  String jmj_name;

  ArticlePosLarge({int id, this.item_id, this.item_code, this.item_barcode,
    this.item_name, this.item_mp_price, this.item_popust_posto,
    this.item_tax_id, this.item_unit_id, this.item_kategorija_id,
    this.item_povratna_naknada, this.item_active, this.tax_display_name,
    this.tax_pdv, this.tax_ppot, this.jmj_name}){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "item_id": item_id,
      "item_code": item_code,
      "item_barcode": item_barcode,
      "item_name": item_name,
      "item_mp_price": item_mp_price,
      "item_popust_posto": item_popust_posto,
      "item_tax_id": item_tax_id,
      "item_unit_id": item_unit_id,
      "item_kategorija_id": item_kategorija_id,
      "item_povratna_naknada": item_povratna_naknada,
      "item_active": item_active,

    };
  }

  factory ArticlePosLarge.fromMap(Map queryMap) {
    return ArticlePosLarge(
      id: queryMap[Artikli.POS_ARTICLE_ID],
      item_id: queryMap[Artikli.POS_ARTICLE_ITEM_ID],
      item_code: queryMap[Artikli.POS_ARTICLE_ITEM_CODE],
      item_barcode: queryMap[Artikli.POS_ARTICLE_ITEM_BARCODE],
      item_name: queryMap[Artikli.POS_ARTICLE_ITEM_NAME],
      item_mp_price: queryMap[Artikli.POS_ARTICLE_ITEM_MP_PRICE],
      item_popust_posto: queryMap[Artikli.POS_ARTICLE_ITEM_POPUST_POSTO],
      item_tax_id: queryMap[Artikli.POS_ARTICLE_ITEM_TAX_ID],
      item_unit_id: queryMap[Artikli.POS_ARTICLE_UNIT_ID],
      item_kategorija_id: queryMap[Artikli.POS_ARTICLE_KATEGORIJA_ID],
      item_povratna_naknada: queryMap[Artikli.POS_ARTICLE_POVRATNA_NAKNADA],
      tax_display_name: queryMap[PorezneStope.POS_TAX_NAME],
      tax_pdv: queryMap[PorezneStope.POS_TAX_PDV],
      tax_ppot: queryMap[PorezneStope.POS_TAX_PPOT],
      jmj_name: queryMap[Jmj.POS_JMJ_NAME],
    );
  }
}
