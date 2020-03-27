
class Printer{

  static const String TABLE_POS_PRINTER = "POS_PRINTER";
  static const String POS_PRINTER_ID = "_id";
  static const String POS_PRINTER_NAME = "pos_printer_name";
  static const String POS_PRINTER_ADDRESS = "pos_printer_address";
  static const String POS_PRINTER_PROFILE = "pos_printer_profile";
  static const String POS_PRINTER_COMMUNICATION_PROTOCOL = "pos_printer_comm_protocol";
  static const String POS_PRINTER_WIDTH_SIGNS = "pos_printer_width_signs";
  static const String POS_PRINTER_LANGUAGE = "pos_printer_language";
  static const String POS_PRINTER_USE_CRO_SIGNS = "pos_printer_use_cro_signs";
  static const String POS_PRINTER_TYPE = "pos_printer_type";
  static const String POS_PRINTER_IS_DEFAULT = "pos_printer_is_default";

  static get createTableString => 'CREATE TABLE $TABLE_POS_PRINTER'
      '($POS_PRINTER_ID INTEGER PRIMARY KEY AUTOINCREMENT,'
      '$POS_PRINTER_NAME TEXT,'
      '$POS_PRINTER_ADDRESS TEXT,'
      '$POS_PRINTER_PROFILE INTEGER,'
      '$POS_PRINTER_COMMUNICATION_PROTOCOL INTEGER,'
      '$POS_PRINTER_WIDTH_SIGNS INTEGER,'
      '$POS_PRINTER_LANGUAGE INTEGER,'
      '$POS_PRINTER_USE_CRO_SIGNS INTEGER,'
      '$POS_PRINTER_TYPE INTEGER,'
      '$POS_PRINTER_IS_DEFAULT INTEGER)';
}