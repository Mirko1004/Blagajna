import 'package:blagajna/db/tables/artikli.dart';
import 'package:blagajna/db/tables/godina.dart';
import 'package:blagajna/db/tables/jmj.dart';
import 'package:blagajna/db/tables/kategorija_artikla.dart';
import 'package:blagajna/db/tables/oznaka_slijednosti.dart';
import 'package:blagajna/db/tables/polog.dart';
import 'package:blagajna/db/tables/porezne_stope.dart';
import 'package:blagajna/db/tables/poslovni_prostor.dart';
import 'package:blagajna/db/tables/prodavac.dart';
import 'package:blagajna/db/tables/racun_header_footer.dart';
import 'package:blagajna/db/tables/tvrtka.dart';
import 'package:blagajna/db/tables/vrsta_obveznika_pdv.dart';
import 'package:blagajna/db/tables/vrsta_placanja.dart';
import 'package:blagajna/db/tables/vrsta_poreza.dart';
import 'package:blagajna/globals.dart';
import 'package:sqflite/sqflite.dart';

class InsertPosDefaultValues {

  final Database database;

  InsertPosDefaultValues(this.database);

  insertDefaultOznakaSlijednosti () async {
    final oznakaSlijednostiNaplatniUredjaj = { OznakaSlijednosti.POS_OZNAKA_SLIJEDNOSTI_NAZIV : "Naplatni uređaj" };
    final oznakaSlijednostiPoslovniProstor = { OznakaSlijednosti.POS_OZNAKA_SLIJEDNOSTI_NAZIV : "Poslovni prostor" };
    await database.delete(OznakaSlijednosti.TABLE_POS_OZNAKA_SLIJEDNOSTI);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [OznakaSlijednosti.TABLE_POS_OZNAKA_SLIJEDNOSTI] );
    await database.insert(OznakaSlijednosti.TABLE_POS_OZNAKA_SLIJEDNOSTI, oznakaSlijednostiNaplatniUredjaj);
    await database.insert(OznakaSlijednosti.TABLE_POS_OZNAKA_SLIJEDNOSTI, oznakaSlijednostiPoslovniProstor);
  }

  insertDefaultRacunHeaderFooter () async {
    final racunHeaderFooterValues = {
      RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_HEADER : "",
      RacunHeaderFooter.POS_RACUN_HEADER_FOOTER_FOOTER : "",
    };
    await database.delete(RacunHeaderFooter.TABLE_POS_RACUN_HEADER_FOOTER);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [RacunHeaderFooter.TABLE_POS_RACUN_HEADER_FOOTER] );
    await database.insert(RacunHeaderFooter.TABLE_POS_RACUN_HEADER_FOOTER, racunHeaderFooterValues);
  }

  insertDefaultPolog () async {
    final pologValue = {
      Polog.POS_POLOG_POLOG : 200.0,
    };
    await database.delete(Polog.TABLE_POS_POLOG);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [Polog.TABLE_POS_POLOG] );
    await database.insert(Polog.TABLE_POS_POLOG, pologValue);
  }

  insertDefaultGodina () async {
    final godina = {
      Godina.POS_GODINA_GODINA : Globals.dateYear(DateTime.now()),
    };
    await database.delete(Godina.TABLE_POS_GODINA);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [Godina.TABLE_POS_GODINA] );
    await database.insert(Godina.TABLE_POS_GODINA, godina);
  }

  insertDefaultTvrtka () async {
    final tvrtka = {
      Tvrtka.POS_TVRTKA_NAZIV : "BIOS ICT doo",
      Tvrtka.POS_TVRTKA_ADRESA : "Mažuranićevo šetalište 14",
      Tvrtka.POS_TVRTKA_POSTA : "21000",
      Tvrtka.POS_TVRTKA_MJESTO : "Split",
      Tvrtka.POS_TVRTKA_OIB : "16101766338",
      Tvrtka.POS_TVRTKA_VRSTA_OBVEZNIKA_PDV_ID : 1,
      Tvrtka.POS_TVRTKA_OZNAKA_NAPLATNOG_UREDAJA : "1",
      Tvrtka.POS_TVRTKA_OZNAKA_SLIJEDNOSTI_ID : 1,

    };
    await database.delete(Tvrtka.TABLE_POS_TVRTKA);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [Tvrtka.TABLE_POS_TVRTKA] );
    await database.insert(Tvrtka.TABLE_POS_TVRTKA, tvrtka);
  }

  insertDefaultPoslovniProstor () async {
    final poslovniProstor = {
      PoslovniProstor.POS_POSLOVNI_PROSTOR_NAZIV : "Test poslovni prostor",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_OZNAKA : "PP",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_OSTALI_TIP_CHECK : 0,
      PoslovniProstor.POS_POSLOVNI_PROSTOR_ULICA: "Proleterska",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_KUCNI_BROJ: "33",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_KUCNI_BROJ_DODATAK: "",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_POSTANSKI_BROJ: "21000",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_NASELJE: "Split",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_OPCINA: "Split",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_OSTALI_TIP: "",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_RADNO_VRIJEME: "pon-pet: 08-20h, sub: 08-16h",
      PoslovniProstor.POS_POSLOVNI_PROSTOR_POCETAK_PRIMJENE: Globals.formatDateTimeFromDateForInsert(new DateTime.now()),
      PoslovniProstor.POS_POSLOVNI_PROSTOR_ZATVOREN: 0,
      PoslovniProstor.POS_POSLOVNI_PROSTOR_DEFAULT: 1,
    };
    await database.delete(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR] );
    await database.insert(PoslovniProstor.TABLE_POS_POSLOVNI_PROSTOR, poslovniProstor);
  }

  insertDefaultProdavac () async {
    final prodavac = {
      Prodavac.POS_PRODAVAC_NAME: "Administrator",
      Prodavac.POS_PRODAVAC_OIB: "32115998593",
      Prodavac.POS_PRODAVAC_USERNAME: "admin",
      Prodavac.POS_PRODAVAC_PASSWORD: "admin",
      Prodavac.POS_PRODAVAC_IS_ADMIN: 1,
      Prodavac.POS_PRODAVAC_IS_ACTIVE: 1,
    };
    await database.delete(Prodavac.TABLE_POS_PRODAVAC);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [Prodavac.TABLE_POS_PRODAVAC] );
    await database.insert(Prodavac.TABLE_POS_PRODAVAC, prodavac);
  }

  insertDefaultVrsteObveznikaPDV () async {
    final vrstaObveznikaPdvR1 = { VrstaObveznikaPdv.POS_VRSTA_OBVEZNIKA_PDV_NAZIV : "R1" };
    final vrstaObveznikaPdvR2 = { VrstaObveznikaPdv.POS_VRSTA_OBVEZNIKA_PDV_NAZIV : "R2" };
    final vrstaObveznikaPdvR1NijeUSustavu = { VrstaObveznikaPdv.POS_VRSTA_OBVEZNIKA_PDV_NAZIV : "R1 - nije u sustavu pdv-a" };
    final vrstaObveznikaPdvR2NijeUSustavu = { VrstaObveznikaPdv.POS_VRSTA_OBVEZNIKA_PDV_NAZIV : "R2 - nije u sustavu pdv-a" };

    await database.delete(VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV] );
    await database.insert(VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV, vrstaObveznikaPdvR1);
    await database.insert(VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV, vrstaObveznikaPdvR2);
    await database.insert(VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV, vrstaObveznikaPdvR1NijeUSustavu);
    await database.insert(VrstaObveznikaPdv.TABLE_POS_VRSTA_OBVEZNIKA_PDV, vrstaObveznikaPdvR2NijeUSustavu);
  }

  insertDefaultJedinicneMjere () async {
    final jedinicnaMjeraKom = { Jmj.POS_JMJ_NAME : "KOM" };
    final jedinicnaMjeraKg = { Jmj.POS_JMJ_NAME : "KG" };
    final jedinicnaMjeraLitra = { Jmj.POS_JMJ_NAME : "L" };
    final jedinicnaMjeraMetar = { Jmj.POS_JMJ_NAME : "M" };
    final jedinicnaMjeraMetarKvadratni = { Jmj.POS_JMJ_NAME : "M2" };
    final jedinicnaMjeraMetarKubni= { Jmj.POS_JMJ_NAME : "M3" };
    final jedinicnaMjeraMinuta = { Jmj.POS_JMJ_NAME : "Min" };
    final jedinicnaMjeraSat = { Jmj.POS_JMJ_NAME : "Sat" };
    final jedinicnaMjeraKilometar = { Jmj.POS_JMJ_NAME : "Km" };


    await database.delete(Jmj.TABLE_POS_JMJ);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [Jmj.TABLE_POS_JMJ] );
    await database.insert(Jmj.TABLE_POS_JMJ, jedinicnaMjeraKom);
    await database.insert(Jmj.TABLE_POS_JMJ, jedinicnaMjeraKg);
    await database.insert(Jmj.TABLE_POS_JMJ, jedinicnaMjeraLitra);
    await database.insert(Jmj.TABLE_POS_JMJ, jedinicnaMjeraMetar);
    await database.insert(Jmj.TABLE_POS_JMJ, jedinicnaMjeraMetarKvadratni);
    await database.insert(Jmj.TABLE_POS_JMJ, jedinicnaMjeraMetarKubni);
    await database.insert(Jmj.TABLE_POS_JMJ, jedinicnaMjeraMinuta);
    await database.insert(Jmj.TABLE_POS_JMJ, jedinicnaMjeraSat);
    await database.insert(Jmj.TABLE_POS_JMJ, jedinicnaMjeraKilometar);
  }

  insertDefaultKategorije () async {
    final vrstaKategorijeRoba = { KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_NAZIV : "Roba" };
    final vrstaKategorijeUsluga = { KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_NAZIV : "Usluga" };
    final vrstaKategorijeHrana = { KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_NAZIV : "Hrana" };
    final vrstaKategorijePice = { KategorijaArtikla.POS_KATEGORIJA_ARTIKLA_NAZIV : "Piće" };

    await database.delete(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA] );
    await database.insert(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA, vrstaKategorijeRoba);
    await database.insert(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA, vrstaKategorijeUsluga);
    await database.insert(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA, vrstaKategorijeHrana);
    await database.insert(KategorijaArtikla.TABLE_POS_KATEGORIJA_ARTIKLA, vrstaKategorijePice);
  }

  insertDefaultVrstePlacanja () async {
    final vrstaPlacanjaNovcanice = { VrstaPlacanja.POS_VRSTA_PLACANJA_NAME : "Novčanice" };
    final vrstaPlacanjaKartica = { VrstaPlacanja.POS_VRSTA_PLACANJA_NAME : "Kartica" };
    final vrstaPlacanjaCek = { VrstaPlacanja.POS_VRSTA_PLACANJA_NAME : "Ček" };
    final vrstaPlacanjaTransakcijskiRacun = { VrstaPlacanja.POS_VRSTA_PLACANJA_NAME : "Transakcijski Račun" };
    final vrstaPlacanjaOstalo = { VrstaPlacanja.POS_VRSTA_PLACANJA_NAME : "Ostalo" };

    await database.delete(VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA] );
    await database.insert(VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA, vrstaPlacanjaNovcanice);
    await database.insert(VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA, vrstaPlacanjaKartica);
    await database.insert(VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA, vrstaPlacanjaCek);
    await database.insert(VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA, vrstaPlacanjaTransakcijskiRacun);
    await database.insert(VrstaPlacanja.TABLE_POS_VRSTA_PLACANJA, vrstaPlacanjaOstalo);
  }

  insertDefaultVrstePoreza () async {
    final vrstaPorezaPoreznaStopa = { VrstaPoreza.POS_VRSTA_POREZA_NAME : "Porezna stopa"};
    final vrstaPorezaNePodlijezeOporezivanju = { VrstaPoreza.POS_VRSTA_POREZA_NAME : "Ne podliježe oporezivanju"};
    final vrstaPorezaOslobodenoPoreza = { VrstaPoreza.POS_VRSTA_POREZA_NAME : "Oslobođeno poreza"};
    final vrstaPorezaNijeObveznik = { VrstaPoreza.POS_VRSTA_POREZA_NAME : "Nije obveznik"};

    await database.delete(VrstaPoreza.TABLE_POS_VRSTA_POREZA);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [VrstaPoreza.TABLE_POS_VRSTA_POREZA] );
    await database.insert(VrstaPoreza.TABLE_POS_VRSTA_POREZA, vrstaPorezaPoreznaStopa);
    await database.insert(VrstaPoreza.TABLE_POS_VRSTA_POREZA, vrstaPorezaNePodlijezeOporezivanju);
    await database.insert(VrstaPoreza.TABLE_POS_VRSTA_POREZA, vrstaPorezaOslobodenoPoreza);
    await database.insert(VrstaPoreza.TABLE_POS_VRSTA_POREZA, vrstaPorezaNijeObveznik);
  }

  insertDefaultPorezneStope () async {
    final poreznaStopaPDV5 = {
      PorezneStope.POS_TAX_NAME : "PDV 5%",
      PorezneStope.POS_TAX_VRSTA_POREZA_ID : 1,
      PorezneStope.POS_TAX_PDV  : 5.00,
      PorezneStope.POS_TAX_PPOT : 0.00,
    };

    final poreznaStopaPDV13 = {
      PorezneStope.POS_TAX_NAME : "PDV 13%",
      PorezneStope.POS_TAX_VRSTA_POREZA_ID : 1,
      PorezneStope.POS_TAX_PDV  : 13.00,
      PorezneStope.POS_TAX_PPOT : 0.00,
    };

    final poreznaStopaPDV133 = {
      PorezneStope.POS_TAX_NAME : "PDV 13%, PPOT 3%",
      PorezneStope.POS_TAX_VRSTA_POREZA_ID : 1,
      PorezneStope.POS_TAX_PDV  : 13.00,
      PorezneStope.POS_TAX_PPOT : 3.00,
    };

    final poreznaStopaPDV25 = {
      PorezneStope.POS_TAX_NAME : "PDV 25%",
      PorezneStope.POS_TAX_VRSTA_POREZA_ID : 1,
      PorezneStope.POS_TAX_PDV  : 25.00,
      PorezneStope.POS_TAX_PPOT : 0.00,
    };

    final poreznaStopaPDV253 = {
      PorezneStope.POS_TAX_NAME : "PDV 25%, PPOT 3%",
      PorezneStope.POS_TAX_VRSTA_POREZA_ID : 1,
      PorezneStope.POS_TAX_PDV  : 25.00,
      PorezneStope.POS_TAX_PPOT : 3.00,
    };

    final poreznaStopaOslobodjeno = {
      PorezneStope.POS_TAX_NAME : "PDV 0%",
      PorezneStope.POS_TAX_VRSTA_POREZA_ID : 1,
      PorezneStope.POS_TAX_PDV  : 0.00,
      PorezneStope.POS_TAX_PPOT : 0.00,
    };

    await database.delete(PorezneStope.TABLE_POREZNE_STOPE);
    await database.delete("sqlite_sequence", where: "name=?", whereArgs: [PorezneStope.TABLE_POREZNE_STOPE] );
    await database.insert(PorezneStope.TABLE_POREZNE_STOPE, poreznaStopaPDV5);
    await database.insert(PorezneStope.TABLE_POREZNE_STOPE, poreznaStopaPDV13);
    await database.insert(PorezneStope.TABLE_POREZNE_STOPE, poreznaStopaPDV133);
    await database.insert(PorezneStope.TABLE_POREZNE_STOPE, poreznaStopaPDV25);
    await database.insert(PorezneStope.TABLE_POREZNE_STOPE, poreznaStopaPDV253);
    await database.insert(PorezneStope.TABLE_POREZNE_STOPE, poreznaStopaOslobodjeno);
  }

  insertDefaultArtikli () async {
    final test1 = {
      Artikli.POS_ARTICLE_ITEM_ID : 0,
      Artikli.POS_ARTICLE_ITEM_CODE : "",
      Artikli.POS_ARTICLE_ITEM_BARCODE : "",
      Artikli.POS_ARTICLE_ITEM_NAME : "Artikl PDV 25%",
      Artikli.POS_ARTICLE_ITEM_MP_PRICE : 100.00,
      Artikli.POS_ARTICLE_ITEM_TAX_ID : 4,
      Artikli.POS_ARTICLE_UNIT_ID: 1,
      Artikli.POS_ARTICLE_KATEGORIJA_ID: 1,
      Artikli.POS_ARTICLE_POVRATNA_NAKNADA: 0,
      Artikli.POS_ARTICLE_ACTIVE: 1,
    };

    await database.insert(Artikli.TABLE_POS_ARTICLE, test1);
  }

}