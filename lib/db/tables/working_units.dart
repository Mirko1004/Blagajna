
class WorkingUnits{

  static const String TABLE_WORKING_UNITS = "WORKING_UNITS";
  static const String WORKING_UNITS_TABLE_ID = "_id";
  static const String WORKING_UNITS_ID = "Skl_id";
  static const String WORKING_UNITS_CODE = "Skl_code";
  static const String WORKING_UNITS_NAME = "Skl_name";
  static const String WORKING_UNITS_ADDRESS = "Skl_adress";
  static const String WORKING_UNITS_PLACE = "Skl_place";
  static const String WORKING_UNITS_INDEX = "Skl_tax_index";
  static const String WORKING_UNITS_TYPE_INDEX = "Skl_type_index";
  static const String WORKING_UNITS_DESCRIPTION = "Skl_type_description";

static get createTableString => 'CREATE TABLE $TABLE_WORKING_UNITS'
    '($WORKING_UNITS_TABLE_ID INTEGER PRIMARY KEY AUTOINCREMENT,'
    '$WORKING_UNITS_ID INTEGER,'
    '$WORKING_UNITS_CODE TEXT,'
    '$WORKING_UNITS_NAME TEXT,'
    '$WORKING_UNITS_ADDRESS TEXT,'
    '$WORKING_UNITS_PLACE TEXT,'
    '$WORKING_UNITS_INDEX TEXT,'
    '$WORKING_UNITS_TYPE_INDEX TEXT,'
    '$WORKING_UNITS_DESCRIPTION TEXT)';
}