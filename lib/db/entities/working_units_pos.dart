import 'package:blagajna/db/tables/working_units.dart';

class WorkingUnitsPos {
  int _id;
  get id => _id;
  set id(int id ) => _id = id;
  int Skl_id;
  String Skl_code;
  String Skl_name;
  String Skl_adress;
  String Skl_place;
  String Skl_tax_index;
  String Skl_type_index;
  String Skl_type_description;

  WorkingUnitsPos({int id, this.Skl_id, this.Skl_code, this.Skl_name,
    this.Skl_adress, this.Skl_place, this.Skl_tax_index, this.Skl_type_index,
    this.Skl_type_description}) {
    _id = id;
  }

  toMap() {
    return {
      "_id": id,
      "tvrtka_naziv": Skl_id,
      "Skl_code": Skl_code,
      "Skl_name": Skl_name,
      "Skl_adress": Skl_adress,
      "Skl_place": Skl_place,
      "Skl_tax_index": Skl_tax_index,
      "Skl_type_index": Skl_type_index,
      "Skl_type_description": Skl_type_description,
    };
  }

  factory WorkingUnitsPos.fromMap(Map queryMap) {
    return WorkingUnitsPos(
      id: queryMap[WorkingUnits.WORKING_UNITS_TABLE_ID],
      Skl_id: queryMap[WorkingUnits.WORKING_UNITS_ID],
      Skl_code: queryMap[WorkingUnits.WORKING_UNITS_CODE],
      Skl_name: queryMap[WorkingUnits.WORKING_UNITS_NAME],
      Skl_adress: queryMap[WorkingUnits.WORKING_UNITS_ADDRESS],
      Skl_place: queryMap[WorkingUnits.WORKING_UNITS_PLACE],
      Skl_tax_index: queryMap[WorkingUnits.WORKING_UNITS_INDEX],
      Skl_type_index: queryMap[WorkingUnits.WORKING_UNITS_TYPE_INDEX],
      Skl_type_description: queryMap[WorkingUnits.WORKING_UNITS_DESCRIPTION],
    );
  }


}