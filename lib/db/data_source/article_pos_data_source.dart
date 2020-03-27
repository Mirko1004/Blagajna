import 'package:blagajna/db/entities/article_pos.dart';
import 'package:blagajna/db/tables/artikli.dart';
import 'package:blagajna/db/tables/jmj.dart';
import 'package:blagajna/db/tables/porezne_stope.dart';
import 'package:sqflite/sqflite.dart';

class ArticlePosDataSource {

  static const allColumns = [
    Artikli.POS_ARTICLE_ID,
    Artikli.POS_ARTICLE_ITEM_ID,
    Artikli.POS_ARTICLE_ITEM_CODE,
    Artikli.POS_ARTICLE_ITEM_BARCODE,
    Artikli.POS_ARTICLE_ITEM_NAME,
    Artikli.POS_ARTICLE_ITEM_MP_PRICE,
    Artikli.POS_ARTICLE_ITEM_POPUST_POSTO,
    Artikli.POS_ARTICLE_ITEM_TAX_ID,
    Artikli.POS_ARTICLE_UNIT_ID,
    Artikli.POS_ARTICLE_KATEGORIJA_ID,
    Artikli.POS_ARTICLE_POVRATNA_NAKNADA,
    Artikli.POS_ARTICLE_ACTIVE
  ];

  static const String sqlSelectArticles = "SELECT "
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ID +","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ITEM_ID+","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ITEM_CODE+","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ITEM_BARCODE+","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ITEM_NAME+","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ITEM_MP_PRICE+","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ITEM_POPUST_POSTO+","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ITEM_TAX_ID+","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_UNIT_ID+","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_KATEGORIJA_ID+","
      + Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_POVRATNA_NAKNADA+","
      +PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_NAME+","
      +PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_PDV+","
      +PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_PPOT+","
      + Jmj.TABLE_POS_JMJ+"."+Jmj.POS_JMJ_NAME+
      " FROM "
      + Artikli.TABLE_POS_ARTICLE+" AS "+ Artikli.TABLE_POS_ARTICLE + ", "
      +PorezneStope.TABLE_POREZNE_STOPE+" AS "+PorezneStope.TABLE_POREZNE_STOPE+", "
      +Jmj.TABLE_POS_JMJ+" AS "+Jmj.TABLE_POS_JMJ+
      " WHERE "+PorezneStope.TABLE_POREZNE_STOPE+"."+PorezneStope.POS_TAX_ID+" = "+ Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ITEM_TAX_ID+
      " AND "+Jmj.TABLE_POS_JMJ+"."+Jmj.POS_JMJ_ID+" = "+ Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_UNIT_ID;

  static const String sqlOrder = " ORDER BY "+ Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ID;


  static Future<List<ArticlePosLarge>> getAllPosArticles(Database database) async {
    final List<Map> articleList = await database.rawQuery(sqlSelectArticles + sqlOrder, null);
    print(articleList);
    return articleList.map((articleFromMap) => ArticlePosLarge.fromMap(articleFromMap) ).toList();
  }


  static Future<List<ArticlePosLarge>>getPosArticlesByCategoryId(Database database, int kategorijaId, String filter) async {
    String select = sqlSelectArticles +" AND "+ Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_KATEGORIJA_ID + " = ?" + " AND "+ Artikli.TABLE_POS_ARTICLE+"."+Artikli.POS_ARTICLE_ACTIVE + " = 1";

    if (filter != null  &&  filter.length > 0)  {
      select = select +  " AND ("+ Artikli.TABLE_POS_ARTICLE + "." + Artikli.POS_ARTICLE_ITEM_NAME + " LIKE '%" + filter + "%'";
      select = select +  " OR "+ Artikli.TABLE_POS_ARTICLE + "." + Artikli.POS_ARTICLE_ITEM_CODE+ " LIKE '%" + filter + "%' )";
    }

    select = select + sqlOrder;

    final List<Map> articleCategory = await database.rawQuery(select,[(kategorijaId.toString())]);
  return articleCategory.map((articleFromMap) => ArticlePosLarge.fromMap(articleFromMap) ).toList();
}


static Future<ArticlePosLarge> getPosArticleByID(Database database, int articleId) async {
    final List<Map> articleById = await database.query(Artikli.TABLE_POS_ARTICLE,
       columns: allColumns ,where: Artikli.POS_ARTICLE_ID + " = " + (articleId.toString()) + " ", whereArgs: null, groupBy: null, having: null, orderBy: null);

    if (articleById.length > 0) {
      ArticlePosLarge.fromMap(articleById.first);
    }
    return null;
  }


  static Future<List<ArticlePosLarge>> getArticlesByName(Database database, String inputText) async {

    if (inputText == null  ||  inputText.length == 0)  {
    final List<Map> articleName = await database.rawQuery(sqlSelectArticles + sqlOrder, null );
    return articleName.map((articleFromMap) => ArticlePosLarge.fromMap(articleFromMap) ).toList();
  }

    else {
    String select = sqlSelectArticles +" AND "+ Artikli.TABLE_POS_ARTICLE + "."+Artikli.POS_ARTICLE_ITEM_NAME+" LIKE '%" + inputText + "%'" + sqlOrder;
    final List<Map> articleName = await database.rawQuery(select, null);
    return articleName.map((articleFromMap) => ArticlePosLarge.fromMap(articleFromMap)).toList();
  }
  }

  static Future insertArticle(Database database, ArticlePosLarge articlePosLarge) async{
    await database.insert(Artikli.TABLE_POS_ARTICLE, articlePosLarge.toMap(), nullColumnHack: null);
  }

  static Future updateArticle(Database database, ArticlePosLarge articlePosLarge) async{
    await database.update(Artikli.TABLE_POS_ARTICLE, articlePosLarge.toMap(),  where: Artikli.POS_ARTICLE_ID + "=?",  whereArgs: [articlePosLarge.id().toString()]);
  }

  static Future deleteArticle(Database database, int _id) {
    database.delete(Artikli.TABLE_POS_ARTICLE, where: Artikli.POS_ARTICLE_ID
        + " = " + _id.toString(), whereArgs: null);
  }

  static Future<int> countCategoriesInArticles(Database database, int kategorijaId) async {
    final List<Map<String, dynamic>> kategorijaInArtikliCount = await database.rawQuery(
        "SELECT COUNT(*) FROM " + Artikli.TABLE_POS_ARTICLE + " WHERE " + Artikli.POS_ARTICLE_KATEGORIJA_ID + " = " + (kategorijaId).toString());
    int result = Sqflite.firstIntValue(kategorijaInArtikliCount);
    return result;
  }

}





