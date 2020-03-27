import 'package:blagajna/db/entities/godina_pos.dart';
import 'package:blagajna/db/tables/godina.dart';
import 'package:sqflite/sqflite.dart';

class GodinaDataSource{

  final Database database;
  GodinaDataSource(this.database);

   static const allColumns = [
     Godina.POS_GODINA_ID,
     Godina.POS_GODINA_GODINA
   ];


   static Future<List<GodinaPos>> getGodina(Database database) async {
     final List<Map> godina = await database.query(Godina.TABLE_POS_GODINA,
         columns: allColumns, where: Godina.POS_GODINA_ID + " = 1" ,whereArgs: null, groupBy: null, having: null, orderBy: null);

     if (godina.length > 0) {
       return godina.map((godinaFromMap) => GodinaPos.fromMap(godina.first)).toList();
     }
     return null;
   }

   static void insertGodina(Database database, GodinaPos godinaPos) async{
    await database.insert(Godina.TABLE_POS_GODINA, godinaPos.toMap(), nullColumnHack: null);
   }


   static void updateGodina(Database database, String godina) async{

     final godinaUpdate = {
       Godina.POS_GODINA_GODINA: godina,
     };
     await database.update(Godina.TABLE_POS_GODINA, godinaUpdate, where:Godina.POS_GODINA_ID + "=?", whereArgs: ["1"]);
   }


}
