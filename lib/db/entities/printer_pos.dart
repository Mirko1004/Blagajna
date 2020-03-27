import 'package:blagajna/db/tables/printer.dart';

class PrinterPos{
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  String pos_printer_name;
  String pos_printer_address;
  int pos_printer_profile;
  int pos_printer_comm_protocol;
  int pos_printer_width_signs;
  int pos_printer_language;
  int pos_printer_use_cro_signs;
  int pos_printer_type;
  int pos_printer_is_default;
  bool pos_printer_is_built_in = false;

  PrinterPos({int id, this.pos_printer_name, this.pos_printer_address, this.pos_printer_profile,
    this.pos_printer_comm_protocol, this.pos_printer_width_signs, this.pos_printer_language,
    this.pos_printer_use_cro_signs, this.pos_printer_type, this.pos_printer_is_default,
    this.pos_printer_is_built_in}){
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "pos_printer_name": pos_printer_name,
      "pos_printer_address": pos_printer_address,
      "pos_printer_profile": pos_printer_profile,
      "pos_printer_comm_protocol": pos_printer_comm_protocol,
      "pos_printer_width_signs": pos_printer_width_signs,
      "pos_printer_language": pos_printer_language,
      "pos_printer_use_cro_signs": pos_printer_use_cro_signs,
      "pos_printer_type": pos_printer_type,
      "pos_printer_is_default": pos_printer_is_default,
      "pos_printer_is_built_in": pos_printer_is_built_in,
    };
  }

  factory PrinterPos.fromMap(Map queryMap) {
    return PrinterPos(
      id: queryMap[Printer.POS_PRINTER_ID],
      pos_printer_name: queryMap[Printer.POS_PRINTER_NAME],
      pos_printer_address: queryMap[Printer.POS_PRINTER_ADDRESS],
      pos_printer_profile: queryMap[Printer.POS_PRINTER_PROFILE],
      pos_printer_comm_protocol: queryMap[Printer.POS_PRINTER_COMMUNICATION_PROTOCOL],
      pos_printer_width_signs: queryMap[Printer.POS_PRINTER_WIDTH_SIGNS],
      pos_printer_language: queryMap[Printer.POS_PRINTER_LANGUAGE],
      pos_printer_use_cro_signs: queryMap[Printer.POS_PRINTER_USE_CRO_SIGNS],
      pos_printer_type: queryMap[Printer.POS_PRINTER_TYPE],
      pos_printer_is_default: queryMap[Printer.POS_PRINTER_IS_DEFAULT],
    );
  }

}
