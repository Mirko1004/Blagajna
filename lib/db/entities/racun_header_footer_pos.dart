import 'package:blagajna/db/tables/racun_header_footer.dart';

class RacunHeaderFooterPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String racun_header_footer_header;
  String racun_header_footer_footer;

  RacunHeaderFooterPos({int id, this.racun_header_footer_header, this.racun_header_footer_footer }) {
    _id = id;
  }

    toMap(){
      return {
        "_id" : id,
        "racun_header_footer_header" : racun_header_footer_header,
        "racun_header_footer_footer" : racun_header_footer_footer,
      };
    }

    factory RacunHeaderFooterPos.fromMap(Map queryMap) {
    return RacunHeaderFooterPos(
      id: queryMap[RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_ID],
      racun_header_footer_header: queryMap[RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_HEADER],
      racun_header_footer_footer: queryMap[RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_FOOTER],
    );
  }

}
