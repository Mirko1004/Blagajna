import 'package:flutter/material.dart';

class Localization {
  Localization(this.locale);

  final Locale locale;

  static Localization of(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  static Map<String, Map<String, String>> localizedValues = {
    'en': {

  "app_name": "GoPos",
  "title_activity_scanner": "Terminal",
  "title_activity_articles": "Popis artikala",
  "title_activity_inventory_list": "Inventurna Lista",
  "dialog_ok": "OK",
  "dialog_cancel": "Poništi",
  "title_activity_article_list": "Scan Terminal",
  "articles": "Artikli",
  "article": "Artikl",
  "all_articles":" Svi",
  "choose": "Izaberi",
  "working_units": "Radne Jedinice",
  "partners": "Partneri",
  "partner": "Partner",
  "lager": "Skladište",
  "load_lager_list": "Učitaj Lager Listu",
  "all_lagers": "Sva",
  "lager_list": "Lager Lista",
  "articles_can_not_load": "Nije moguće učitati listu artikala!",
  "working_units_can_not_load": "Nije moguće učitati radne jedinice!",
  "partner_card_can_not_load": "Nije moguće učitati karticu partnera!",
  "partners_can_not_load": "Nije moguće učitati partnere!",
  "lager_list_can_not_load": "Nije moguće učitati lager listu!",
  "articles_load": "Učitavanje artikala",
  "working_units_load": "Učitavanje radnih jedinica",
  "partner_card_load": "Učitavanje Kartice Partnera",
  "partners_load": "Učitavanje Partnera",
  "partners_card_load": "Učitaj Karticu Partnera",
  "partners_card_start_list": "Lista",
  "lager_list_load": "Učitavanje Lager Liste",
  "sending_articles_list": "Slanje liste artikala",
  "delete_article_from_list": "Obriši artikl s liste?",
  "delete_all_articles_from_list": "Obriši sve artikle s liste?",
  "rbr": "RBr",
  "code_barcode": "Šifra/Barcode",
  "code": "Šifra",
  "supplier_code": "Šifra Dobavljača",
  "barcode": "Bar Kod",
  "item_name": "Naziv",
  "name": "Naziv Artikla",
  "item_quantity": "Količina",
  "insert_item_check": "Unesite artikal i količinu!",
  "insert_item_success": "Artikal i količina uspješno dodana u listu!",
  "insert_item_error": "Greška prilikom dodavanja artikla i količine u listu!",
  "no_barcode": "Nije pronađen artikl za ovaj barcode!",
  "no_code": "Nije pronađen artikl za ovu šifru!",
  "list_empty": "Inventurna lista je prazna",
  "title_activity_inventory_article_list": "Lista Popisanih Artikala",
  "back": "Nazad",
  "send_list": "Pošalji listu",
  "clear_list": "Pobriši listu",
  "search": "Pretraži…",
  "scan": "Skeniraj",
  "add_to_list": "Dodaj u listu",
  "clear": "Pobriši",
  "show_list": "Prikaži listu",
  "error": "Greška",
  "database_error_title": "Baza",
  "comment": "Napomena",
  "comment_msg": "Dodajte napomenu",
  "title_activity_settings_win": "Scan Terminal Postavke",
  "title_activity_settings": "Postavke",
  "initial_settings": "Početne postavke",
  "title_activity_settings_osnovno": "Osnovne postavke",
  "title_activity_settings_artikli_kategorije": "Artikli i kategorije",
  "title_activity_settings_database": "Baza podataka",
  "title_activity_logout": "Odjava",
  "login_data":"Zaporka",
 // "login_user": "%1$s / %2$s",
  "data": "Podaci",
  "data_success": "Podaci uspješno učitani",
  "login_title":"Prijava",
  "requear_license_title": "Zatraži licencu",
  "pos": "POS",
  "jmj": "Jedinična mjera",
  "username": "Korisničko ime",
  "password": "Zaporka",
  "password_retipe": "Zaporka - provjera, unesite još jednom",
  "load_articles": "Učitaj Artikle",
  "load_partners": "Učitaj Partnere",
  "load_working_units": "Učitaj radne jedinice",
  "delete_articles": "Pobriši Artikle",
  "username_password_check": "Polje zaporke mora biti popunjeno",
  "username_password_error": "Pogrešan unos zaporke!",
  "load_articles_check": "Učitavanje artikala pobrisati će postojeće liste artikala",
  "load_articles_success": "Artikli uspješno učitani",
  "load_partners_success": "Partneri uspješno učitani",
  "load_working_units_success": "Radne jedinice uspješno učitane",
  "load_articles_delete_error": "Greška pri brisanju artikala",
  "load_lager_list_delete_error": "Greška pri brisanju lager liste",
  "unknown_article": "Nepoznat artikl",
  "action_settings": "Podešenja",
  "title_activity_partners_list": "Lista Partnera",
  "title_activity_working_units": "Radne Jedinice",
  "working_unit": "Radna Jedinica",
  "title_activity_scan_terminal": "Terminal",
  "article_tax_rate": "Tarifna stopa artikla",
  "article_qty": "Raspoloživo stanje artikla",
  "article_nc": "Nabavna cijena",
  "item_mp_price": "Maloprodajna cijena",
  "article_last_fc": "Zadnja fakturna cijena",
  "article_vpc": "Cijena bez PDV-a",
  "article_mpc": "Cijena sa PDV-om",
  "article_price_margin": "Marža (%)",
  "article_max_discount": "Maksimalni rabat",
  "article_unit": "Jedinca mjere artikla",
  "article_group": "Grupa artikla",
  "article_subgroup": "Podgrupa artikla",
  "article_description": "Opis artikla",
  "title_activity_partner_card": "Kartica Partnera",
  "load_partner_card_input": "Obvezan unos polja partnera!",
  "opis_list_header": "Opis",
  "datum_pp_list_header": "Datum p.p.",
  "datum_doc_list_header": "Datum doc",
  "datum_dos_list_header": "Datum dos",
  "broj_doc": "Broj dokumenta",
  "duguje_list_header": "Duguje",
  "potrazuje_list_header": "Potražuje",
  "nevezano_list_header": "Nevezano",
  "rekapitulacija": "Rekapitulacija",
  "donos": "Donos",
  "saldo": "Saldo",
  "ukupno_tekuci_promet": "Ukupno tekući promet",
  "title_activity_login": "Prijava",
  "database_delete_error": "Prijava",
  "title_activity_partner_card_document_list": "Kartica Partnera - Lista",
  "title_activity_partner_card_detail": "Kartica Partnera - Dokument",
  "title_activity_ugo_pos":"POS Ugostiteljstvo",
  "ugo_pos_data_load": "Učitavanje podataka za POS Ugostiteljstvo",
  "ugo_pos_data_load_error": "Greška prilikom učitavanja podataka za POS Ugostiteljstvo",
  "turn_on_flashlight": "Uključi Bljeskalicu",
  "turn_off_flashlight": "Isključi Bljeskalicu",
  "scanner_message": "Postavite barkod unutar kvadrata",
  "show_lager_list": "Prikaži Lager Listu",
  "show_partner_card": "Prikaži Karticu Partnera",
  "show_terminal": "Prikaži Terimnal",
  "show_ugo_pos": "Prikaži Pos Ugostiteljstvo",
  "title_activity_pos": "POS",
  "title_activity_jmj": "Jedinične mjere",
  "article_mp_price": "MP cijena: ",
  "article_mpcij": "MPC:",
  "jm": "JM: ",
  "porezna_stopa": "Porezna stopa: ",
  "pdv": "PDV",
  "pdv_percent": "PDV %",
  "ppot": "PPOT",
  "ppot_percent": "PPOT %",
  "kom": "KOM",
  "kg": "KG",
  "litra": "L",
  "metar": "M",
  "metar_kvadratni": "M2",
  "metar_kubni": "M3",
  "minuta": "Min",
  "sat": "Sat",
  "kilometar": "Km",
  "porezna_stopa_db": "Porezna stopa",
  "porezne_stope": "Porezne stope",
  "vrsta_poreza": "Vrsta poreza",
  "vrste_poreza": "Vrste poreza",
  "ne_podlijeze_oporezivanju": "Ne podliježe oporezivanju",
  "oslobodeno_poreza": "Oslobođeno poreza",
  "nije_obveznik": "Nije obveznik",
  "r1_nije_u_sustavu": "R1 - nije u sustavu pdv-a",
  "r2_nije_u_sustavu": "R2 - nije u sustavu pdv-a",
  "add": "Dodaj",
  "skip": "Preskoči",
  "save": "Spremi",
  "cancel": "Poništi",
  "delete": "Obriši",
  "delete_poreznu_stopu": "Obriši Poreznu stopu",
  "povratna_naknada": "Povratna naknada:",
  "pov_naknada": "Pov.naknada",
  "povratna_naknada_db": "Povratna naknada",
  "artikl_aktivan": "Artikl aktivan",
  "naziv_poreza_obvezan": "Obvezan unos polja naziva",
  "pdv_poreza_obvezan": "Obvezan unos polja iznosa Pdv-a",
  "ppot_poreza_obvezan": "Obvezan unos polja iznosa Ppot-a",
  "naziv_artikla_obvezan": "Obvezan unos polja naziva artikla",
  "unos_mp_cijene_obvezan": "Obvezan unos polja MP cijene",
  "unos_kolicine_obvezan": "Obvezan unos polja količine",
  "delete_article_pos": "Obriši artikl",
  "delete_stavku_pos": "Obriši artikl",
  "title_activity_prodavac": "Prodavač",
  "prodavac":"Prodavač:",
  "oib": "OIB:",
  "ime_prezime": "Ime i prezime",
  "ime_prezime_obvezno": "Obvezan unos polja imena prodavača",
  "oib_obvezno": "Obvezan unos polja OIB-a prodavača",
  "oib_pogresan": "Neispravan OIB-a!",
  "username_obvezno": "Obvezan unos polja korisničkog imena",
  "password_obvezno": "Obvezan unos polja zaporke",
  "password_retipe_obvezno": "Obvezan unos polja ponovljene zaporke",
  "passwords_dont_match": "Unešene zaporke se ne podudaraju!",
  "oib_obvezno_kupac": "Obvezan unos polja OIB-a kupca",
  "delete_prodavac": "Obriši prodavača",
  "prodavac_exists": "Prodavač s unešenom zaporkom već postoji! Promijenite zaporku.",
  "prodavac_must_be_admin": "Prodavač mora biti administrator!",
  "prodavac_must_be_active": "Prodavač mora biti aktivan!",
  "delete_prodavac_logged_in": "Nije moguće pobrisati prodavača kojim ste prijavljeni!",
  "only_admin_delete_error": "Nije moguće pobrisati prodavača koji je jedini administrator!",
  "only_active_delete_error": "Nije moguće pobrisati jedinog aktivnog prodavača!",
  "title_activity_kupac": "Kupac",
  "kupac": "Kupac:",
  "adresa": "Adresa:",
  "adresa_db": "Adresa",
  "posta": "Pošta",
  "mjesto": "Mjesto",
  "naziv_obvezan_kupac": "Obvezan unos polja naziva kupca",
  "naziv_obvezan_kategorija": "Obvezan unos polja naziva kategorije",
  "delete_kupac": "Obriši kupca",
  "delete_kategorija": "Obriši kategoriju",
  "title_activity_racun": "Račun",
  "racun": "Račun:",
  "novcanice": "Novčanice",
  "kartica": "Kartica",
  "cek": "Ček",
  "transakcijski_racun": "Transakcijski Račun",
  "ostalo": "Ostalo",
  "kasa": "Kasa",
  "next": "Dalje",
  "vrsta_placanja": "Vrsta plaćanja",
  "vrsta_placanja_": "Vrsta plaćanja",
  "stopa": "Stopa:",
  "pov_nak": "Pov.nak:",
  "rabat": "Rabat:",
  "ukupno": "Ukupno:",
  "valuta": "Kn",
  "title_activity_FileExplorer": "File Explorer",
  "datum": "Datum:",
  "broj_racuna": "Broj računa:",
  "ukupni_iznos": "Ukupni iznos:",
  "dodaj_stavku": "Dodaj stavku",
  "title_activity_add_edit_stavku": "Stavka računa",
  "popust": "Popust %",
  //"popust_stavka": "Popust %1$s%2$s",
  "popust_po_racunu": "Popust na račun %",
  "usluga": "Usluga",
  "hrana": "Hrana",
  "pice": "Piće",
  "roba": "Roba",
  "kategorija_artikla": "Kategorija Artikla",
  "r1": "R1",
  "r2": "R2",
  "title_activity_poslovni_prostor": "Poslovni prostor",
  "poslovni_prostor_naziv": "Naziv poslovnog prostora",
  "poslovni_prostor_oznaka": "Oznaka poslovnog prostora",
  "poslovni_prostor_oznaka_hint": "Unose se samo brojke i slova! (npr. PP.)",
  "poslovni_prostor_ulica": "Ulica",
  "poslovni_prostor_kucni_broj": "Kućni broj",
  "poslovni_prostor_kucni_broj_dodatak": "Kućni broj dodatak",
  "poslovni_prostor_kucni_broj_dodatak_hint": "npr. BB",
  "poslovni_prostor_postanski_broj": "Poštanski broj",
  "poslovni_prostor_naselje": "Naselje",
  "poslovni_prostor_opcina": "Općina",
  "poslovni_prostor_ostali_tip": "Poslovni prostor ostali tip",
  "poslovni_prostor_ostali_tip_hint": "u slućaju da nema adrese",
  "poslovni_prostor_radno_vrijeme": "Radno vrijeme",
  "poslovni_prostor_radno_vrijeme_hint": "npr. pon–pet 08–18, sub 09–13",
  "poslovni_prostor_pocetak_primjene": "Početak primjene",
  "poslovni_prostor_pocetak_primjene_button": "Postavi početak primjene",
  "poslovni_prostor_zatvoren": "Zatvoren",
  "poslovni_prostor_bez_adrese": "Poslovni prostor bez adrese (npr. Internet trgovina, …)",
  "title_activity_add_edit_poslovni_prostor": "Poslovni prostor",
  "poslovni_prostor_naziv_obvezno": "Obvezan unos polja naziva",
  "poslovni_prostor_oznaka_obvezno": "Obvezan unos polja oznake poslovnog prostora",
  "poslovni_prostor_adresa_obvezno": "Obvezan unos adrese",
  "poslovni_prostor_kucni_broj_obvezno": "Obvezan unos polja kućnog broja",
  "poslovni_prostor_postanski_broj_obvezno": "Obvezan unos polja poštanskog broja",
  "poslovni_prostor_naselje_obvezno": "Obvezan unos polja naselja",
  "poslovni_prostor_naselje_opcina": "Obvezan unos polja općina ili grada",
  "poslovni_prostor_ostali_tip_obvezno": "Obvezan unos polja ostali tip",
  "poslovni_prostor_pocetak_primjene_obvezan": "Obvezan unos polja početka primjene",
  "poslovni_prostor_radno_vrijeme_obvezno": "Obvezan unos polja radnog vremena",
  "delete_poslovni_prostor": "Obriši poslovni prostor",
  "title_activity_tvrtka": "Tvrtka",
  "tvrtka_naziv": "Naziv tvrtke",
  "tvrtka_adresa": "Adresa",
  "tvrtka_posta": "Poštanski broj",
  "tvrtka_mjesto": "Mjesto",
  "tvrtka_oib": "OIB",
  "tvrtka_vrsta_obveznika_pdv": "Vrsta obveznika PDV-a",
  "tvrtka_oznaka_naplatnog_uredjaja": "Oznaka naplatnog uređaja",
  "tvrtka_oznaka_naplatnog_uredjaja_hint": "npr. 1, 2, …",
  "tvrtka_obvezan_unos": "Unos svih polja obvezan",
  "title_activity_print": "Ispis",
  "printer_print_error": "Greška u ispisu",
  "printer_profile_generic": "Generički printer",
  "printer_communication_serial": "Serial port",
  "printer_communication_obex": "Object exchange (OBEX)",
  "printer_width_32": "32 znaka",
  "printer_width_40": "40 znakova",
  "printer_width_48": "48 znakova",
  "printer_width_52": "52 znakova",
  "printer_language_pcl": "PCL",
  "printer_language_cpcl": "CPCL",
  "printer_language_epson": "EPSON",
  "title_activity_printer_list": "Pisači",
  "print_artikla_u_jednom_redu": "Print artikla na računu u jednom redu",
  "ugradjeni_pisac": "Ugrađeni pisač",
  "title_activity_add_edit_printer":"Pisač",
  "printer_profil":"Profil pisača",
  "printer_protocol": "Protokol pisača",
  "printer_width": "Širina ispisa",
  "printer_language": "Jezik pisača",
  "printer_cro_signs": "Koristi kvačice",
  "printer_default": "Defaultni pisač",
  "printer_delete": "Pobriši pisač",
  "title_activity_btdevices": "Bluetooth pisači",
  "print_racun": "Ispiši račun",
  "print_racun_printer": "Ispiši račun na pisač",
  "print_racun_screen": "Ispiši račun na ekran",
  "preview": "Pregled",
  "print": "Ispis",
  "printer_nije_izabran": "Pisač nije definiran. Definirajte pisač u postavkama",
  "bluetooth_adapter_nije_dostupan": "Bluetooth adapter nije dostupan",
  "bluetooth_adapter_nije_ukljucen": "Bluetooth prijenos nije ukljucen",
  "bluetooth_adapter_nema_uparenih": '"Pronalaženje pisača - nema uparenih uređaja."',
  "bluetooth_printer_open_error": '"Greška pri otvaranju pisača"',
  "bluetooth_printer_close_error": '"Greška pri zatvaranju pisača"',
  "built_in_printer_open_error": '"Greška pri otvaranju ugrađenog pisača"',
  "vrijeme": "Vrijeme:",
  "naziv_robe_usluge": "Naziv robe/usluge",
  "jmj_racun": "JM",
  "kol": "KOL",
  "cijena": "&#160;Cijena",
  "popust_racun": "Popust",
  "iznos": "Iznos",
  "osnovica": "Osnovica",
  "porez": "Porez",
  "iznos_poreza": "Iznos poreza",
  "pregledaj_racun": "Pregledaj račun na zaslonu",
  "zavrsi_racun": "Završi račun, fiskaliziraj i pošalji na ispis?",
  "odustani_od_racuna": "Trenutni račun ima zadane stavke. Izlazak iz računa će pobrisati račun i stavke!",
  "izbrisi_racun": "Trenutni račun ima zadane stavke. Brisanje računa će pobrisati račun i stavke!",
  "da": "Da",
  "ne": "Ne",
  "nije_dostupan": "Nije dostupan",
  "broj_stavki_error": "Nije unesena nijedna stavka računa!",
  "prijavi_poslovni_prostor": "Prijavite poslovni prostor",
  "poslovni_prostor_prijavljen": "Poslovni prostor je prijavljen",
  "poslovni_prostor_nije_prijavljen": "Poslovni prostor nije prijavljen",
  "prijava_poslovnog_prostora": "Prijava poslovnog prostora",
  "defaultni_poslovni_prostor": "Defaultni poslovni prostor",
  "odbabir_defaultnog_poslovni_prostor_na_loginu": "Odabir poslovnog prostora na prijavi",
  "defaultni_printer_exists_message": "%s je defaultni pisač. Može postojati samo jedan defaultni pisač.",
  "defaultni_poslovni_prostor_exists_message": "%s je defaultni poslovni prostor. Može postojati samo jedan defaultni poslovni prostor.",
  "defaultni_poslovni_prostor_exists_message_delete": "%s je defaultni poslovni prostor. Defaultni poslovni prostor se ne može obrisati.",
  "defaultni_poslovni_prostor_not_exists": "Ne postoji defaultni poslovni prostor.",
  "cert_manager_error_title": "Učitavanje certifikata",
  "cert_manager_error_message": "Greška pri učitavanju certifikata",
  "title_activity_fiskalizacija": "Podešenja za fiskalizaciju",
  "putanja_do_test_certifikata": "Putanja do certifikata",
  "putanja_do_test_certifikata_hint": "Izaberite certifikat",
  "download_cert": "Downloadaj certifikat",
  "izaberi_cert": "Izaberi certifikat",
  "sync_errors": "Sinkroniziraj bazu",
  "sync_errors_text": "Greške u sinkronizaciji:",
  "echo": "Echo poziv",
  "pobrisi_certifikate": "Pobrišite certifikate",
  "title_activity_choose_test_cert": "Certifikat",
  "bitova": "Byte",
  "datoteka_oznacena_title": "Datoteka označena",
  "datoteka_oznacena_message": "Želite li odabrati datoteku",
  "title_activity_choose_prod_cert": "Produkcijski certifikat",
  "natrag": "Natrag",
  "test_password": "Lozinka za certifikat",
  "production_password": "Lozinka za produkcijski certifikat",
  "ukljuci_fiskalizaciju": "Uključi fiskalizaciju",
  "produkcijska_fiskalizacija_omogucena": "Uključi produkcijsku okolinu",
  "save_request_response": "Snimite zahtjev i odgovor poziva fiskalizacije",
  "skip_fiskal_download": "Preskoči download certifikata prije ulaska u blagajnu",
  "unesite_certifikat_i_password": "Unesite certifikat i zaporku!",
  "neuspjesna_inicijalizacija_fiskalizacije": "Neuspješna inicijalizacija fiskalizacije!",
  "download_cert_error": "Neuspješan download certifikata!",
  "test_echo_success": "Uspješan echo poziv",
  "test_echo_success_title": "Test echo",
  "zki": "ZKI:",
  "jir": "JIR:",
  "fiskalizacija_error_title": "Greška pri fiskalizaciji",
  "fiskalizacija_error_message_not_enabled": "Fiskalizacija nije uključena, provjerite postavke fiskalizacije!",
  "fiskalizacija_error_message_connection": "Provjerite internet vezu i postavke fiskalizacije!",
  "slijednost_naplatni_uredjaj": "Naplatni uređaj",
  "slijednost_poslovni_prostor": "Poslovni prostor",
  "oznaka_slijednosti": "Vrsta slijednosti broja računa",
  "blagajna": "Blagajna",
  "racuni": "Računi",
  "unos_racuna": "Unos računa",
  "unos_racuna_prodavac_error": "Nije definiran prodavač!",
  "unos_racuna_vrsta_placanja_error": "Nije definirana vrsta plaćanja!",
  "unos_racuna_poslovni_prostor_error": "Nije definiran poslovni prostor!",
  "default_poslovni_prostor_error": "Nije definiran defaultni poslovni prostor!\nPostavite defaultni poslovni prostor ili kontaktirajte BIOS ICT podršku.",
  "unos_racuna_tvrtka_error": "Nije definirana tvrtka!",
  "arhiva_racuna": "Arhiva računa",
  "izvjestaji": "Izvještaji",
  "postavke": "Postavke",
  "test_print": "Test Print",
  "title_activity_blagajna": "Blagajna",
  "stavke": "Stavke",
  "naplata": "Naplata",
  "title_activity_blagajna_stavke": "Stavke računa",
  "obrazac_r1": "Obrazac R-1",
  "obrazac_r2": "Obrazac R-2",
  "oib_kupca": "OIB Kupca:",
  "print_error": "Greška prilikom ispisa. Provjerite pisač i ispišite račun naknadno.\nUzrok:",
  "title_activity_blagajna_settings": "Postavke Računa",
  "paragon_blok_oznaka": "Oznaka paragon bloka",
  "paragon_obrazac": "Paragon obrazac:",
  "title_activity_racuni": "Računi",
  "racuni_dnevna_lista_alert_message_text": "Za zadane parametre ne postoje računi.",
  "racun_ispisan": "Račun ispisan:",
  "title_activity_nezakljuceni_racuni": "Nezaključeni računi",
  "title_activity_pregled_racuna": "Pregled računa",
  "title_activity_nefiskalizirani_racuni": "Nefiskalizirani računi",
  "racun_kopija_br": "Kopija računa br:",
  "priprema_certifikata_title": "Priprema certifikata",
  "priprema_certifikata_message": "Učitavanje FINA certifikata",
  "title_activity_kategorije": "Kategorije",
  "title_activity_add_edit_kategorija": "Kategorija",
  "title_activity_racun_header_footer": "Zaglavlje i podnožje računa",
  "period_od": "Period od",
  "period_do": "Period do",
  "racuni_storno": "Stornirani računi",
  "promet_po_vrsti_placanja": "Ispiši promet po vrsti plaćanja",
  "racun_storno": "Račun storno:",
  "racun_storno_textfield": "Račun storniran:",
  "racun_storniraj": "Storniraj račun",
  "racun_storno_datum": "Vrijeme storniranja:",
  "title_activity_polog": "Polog",
  "polog": "Polog:",
  "fiskaliziraj_racune": "Fiskaliziraj",
  "fiskaliziraj_racune_dialog_title": "Fiskalizacija",
  "fiskaliziraj_racune_dialog_message": "Pošalji nefiskalizirane račune na fiskalizaciju.",
  "fiskaliziraj_racun_dialog_message": "Pošalji račun na fiskalizaciju.",
  "ispisi_racun_message": "Ispiši račun?",
  "storniraj_racun": "Storniraj račun",
  "ispisi_racune_message": "Ispiši račune?",
  "ukupno_kasa": "Ukupno u kasi:",
  "zaglavlje_racuna": "Zaglavlje računa",
  "podnozje_racuna": "Podnožje računa",
  "podnozje_racuna_nije_u_pdv": "Podnožje računa za korisnike van sustava PDV-a",
  "podnozje_racuna_nije_u_pdv_text": "Po čl. 90. st.2. Zakona o PDV-u poduzetnik nije u sustavu PDV-a",
  "title_activity_print_to_screen": "Ispis na ekran",
  "nefiskalizirani_error_text": "Postoji %n nefisaliziranih računa!",
  "default_kategorija_delete": "Ovu predefiniranu kategoriju nije moguće pobrisati.",
  "zapis_u_racunima_delete": "Nije moguće pobrisati. Postoji zapis u računima.",
  "zapis_u_artiklima_delete": "Nije moguće pobrisati. Postoji zapis u artiklima.",
  "administrator": "Administrator",
  "prodavac_aktivan": "Prodavač aktivan",
  "ukupni_promet_po_danu": "Ukupni promet za:",
  "pregled_prometa_po_vrsti_placnja": "Promet po vrsti plaćanja",
  "pregled_prometa_po_vrsti_placanja_ispis": "Ispiši promet po vrsti plaćanja?",
  "pregled_prometa_po_artiklima": "Pregled prometa po artiklima",
  "pregled_prometa_po_artiklima_ispis": "Ispiši promet po artiklima?",
  //"vrsta_placanja_print": "Vrsta plaćanja: %1$s",
  //"od_do": "Od %1$s \nDo %2$s",
  //"ukupno_od_do": "Ukupno od %1$s \nDo %2$s",
  "ispis_dnevnog_prometa": "Ispis dnevnog prometa",
  "dnevni_promet": "Dnevni promet",
  "datum_prometa": "Datum prometa",
  "export_database": "Exportiraj bazu",
  "export_database_title": "Export",
  "export_database_message": "Exportiraj bazu na karticu",
  "import_database": "Importiraj bazu",
  "import_database_title": "Import",
  "import_database_message": "Importiraj bazu?",
  "odjava_title": "Odjava",
  "odjava_message": "Odjavite se iz kase?",
  "super_user_settings": "Super User Settings",
  "cert_service_url": "Url servisa",
  "save_license_credentials": "Spremi podatke servisa",
  "get_license": "Dohvati licencu",
  "create_license": "Kreiraj licencu",
  "update_license": "Ažuriraj licencu",
  "update_client": "Ažuriraj Informacije Klijenta",
  "client_cert_error": "Svi podaci za pristup servisu moraju biti popunjeni!",
  "ritam_settings_activity": "Ritam Postavke",
  "ritam_settings_service_credentials_message": "Podaci pristupa servisa spremljeni",
  "ritam_settings_working_unit_save_message": "Radna jedinica spremljena",
  "ritam_service_url": "Url servisa",
  "ritam_load_working_units": "Učitaj radne jedinice",
  "ritam_save_working_unit": "Snimi radnu jedinicu",
  "ritam_dnevna_lista_prometa": "Ritam dnevna lista prometa",
  "ritam_dnevna_lista_prometa_slanje": "Slanje dnevne liste prometa",
  "ritam_dnevna_lista_prometa_slanje_success": "Dnevna lista prometa uspješno poslana",
  "ritam_dnevna_lista_prometa_slanje_error": "Greška u slanju dnevne liste prometa",
  "ritam_send_dnevna_lista": "Pošalji dnevnu listu",
  "slobodni_tekst_unos": "Unos slobodnog teksta",
  "napomena_unos": "Napomena",

  "device_id": "Identifikator uređaja:",
  "versionCode": "Verzija koda:",
  "versionName": "Verzija aplikacije:",
  "dbVersion": "Verzija baze:",

  "license_title": "Licenciranje",
  "license_message": "Dohvat licence",
  "license_unavailable_message": "Nije moguć dohvat licence.\nGreška:\n",
  "license_success_message": "Licenca ažurirana!",
  "license_deactivated": "Licenca deaktivirana!",

  "device_key_title": "Privatni ključ",
  "device_key_message": "Dohvat privatnog ključa",

  "token_title": "Token",
  "token_message": "Dohvat REST ključa",

  "upload_database_title": "Upload",
  //"upload_database_message": "Upload baze: %1$d od %2$d",
  "upload_database_button_title": "Uploadaj bazu",
  "upload_database_error_message": "Nije moguć upload baze.\nGreška:\n",
  "upload_database_success_message": "Upload baze uspješno završio",

  "download_database_title": "Download",
  //"download_database_message": "Download baze: %1$d od %2$d",
  "download_database_button_title": "Downloadaj bazu",
  "download_database_error_message": "Nije moguć download baze.\nGreška:\n",
  "download_database_success_message": "Download baze uspješno završio",
  "download_database_import_message": "Podaci koji su trenutno na uređaju biti će trajno zamijenjeni podacima iz downloadane baze. Ukoliko se zamijene, podaci koji su trenutno na uređaju, ne mogu se više vratiti. \nImportiraj downloadanu bazu?",
  "download_database_import_message_initial": "Importiraj downloadanu bazu?",

  "license_display_message_title": "Poruka korisniku",

  "block_after_invoice_num_message": "Izdavanje računa će biti onemogućeno nakon %d računa! Molim kontaktirajte BIOS ICT d.o.o.",
  "block_after_invoice_num_expired_message": "Izdavanje računa je onemogućeno! Molim kontaktirajte BIOS ICT d.o.o.",

  "external_storage_request_title": "Pristup vanjskom mediju za pohranu",
  "external_storage_request_message": "Ova aplikacija zahtjeva pristup vanjskom mediju da bi mogla učitati certifikate i napraviti sigurnosnu pohranu baze.",
  "external_storage_error": "Nije moguće pristupiti mediju za pohranu. Provjerite u postavkama aplikacije da je omogućen pristup mediju za pohranu.",

  "export_to_pdf": "Exportiraj u PDF",
  "send_mail_error": "Nije moguće pokrenuti aplikaciju za slanje emaila!",
  "send_pdf_by_mail": "Pošalji email",
  "save_pdf": "Snimi na uređaj",
  //"pdf_saved": "PDF %1$s uspješno snimljen!",
  "pdf_save_error": "Greška pri snimanju pdf-a!",
  "pdf_send_error": "Greška pri slanju pdf-a!",
  "internet_connection": "Provjerite internet vezu.",
  "article_stopa_poreza_error": "Izabrali ste stopu poreza koja ima vrijednost pdv-a a obveznik nije u sustavu pdv-a!",
  "unknown_vrsta_obveznika": "Nepoznata vrtsa obveznika! Kontaktirajte podršku!",

  "fiskaliziraj_trans_racune": "Fiskaliziraj transakcijske račune",

  "privacy_policy": "Privacy policy",

  "zakljucak_blagajne": "Zaključak blagajne",
  "nezakljuceni_racuni": "Nezaključeni računi",
  "pregled_zakljucaka": "Pregled zaključaka",
  "zakljuci_racune": "Zaključi račune",
  "zakljuci_racune_message": "Kreiraj zaključak s prikazanim računima?",
  "zakljuci_racune_message_nema_racuna": "Ne postoje odabrani računi!",
  //"zakljuci_racune_message_success": "Zaključak %1$s uspješno kreiran.",
  "zakljucak": "Zaključak:",
  "zakljucak_datum": "Datum:",
  "zakljucak_posl_prostor": "Poslovni prostor:",
  "zakljucak_naplatni_uredjaj": "Naplatni uređaj:",
  "zakljucak_racun_od": "Račun od:",
  "zakljucak_racun_do": "Račun do:",

},
  };

  String get app_name => localizedValues[locale.languageCode]['app_name'];
  String get title_activity_scanner => localizedValues[locale.languageCode]['title_activity_scanner'];
  String get title_activity_articles => localizedValues[locale.languageCode]['title_activity_articles'];
  String get title_activity_inventory_list => localizedValues[locale.languageCode]['title_activity_inventory_list'];
  String get dialog_ok => localizedValues[locale.languageCode]['dialog_ok'];
  String get dialog_cancel => localizedValues[locale.languageCode]['dialog_cancel'];
  String get title_activity_article_list => localizedValues[locale.languageCode]['title_activity_article_list'];
  String get articles => localizedValues[locale.languageCode]['articles'] ;
  String get article => localizedValues[locale.languageCode]['article'];
  String get all_articles => localizedValues[locale.languageCode]['all_articles'];
  String get choose => localizedValues[locale.languageCode]['choose'];
  String get working_units => localizedValues[locale.languageCode]['working_units'];
  String get partners => localizedValues[locale.languageCode]['partners'];
  String get partner => localizedValues[locale.languageCode]['partner'];
  String get lager => localizedValues[locale.languageCode]['lager'];
  String get load_lager_list => localizedValues[locale.languageCode]['load_lager_list'];
  String get all_lagers => localizedValues[locale.languageCode]['all_lagers'];
  String get lager_list => localizedValues[locale.languageCode]['lager_list'];
  String get articles_can_not_load => localizedValues[locale.languageCode]['articles_can_not_load'];
  String get working_units_can_not_load => localizedValues[locale.languageCode]['working_units_can_not_load'];
  String get partner_card_can_not_load => localizedValues[locale.languageCode]['partner_card_can_not_load'];
  String get partners_can_not_load => localizedValues[locale.languageCode]['partners_can_not_load'];
  String get lager_list_can_not_load => localizedValues[locale.languageCode]['lager_list_can_not_load'];
  String get articles_load => localizedValues[locale.languageCode]['articles_load'];
  String get working_units_load => localizedValues[locale.languageCode]['working_units_load'];
  String get partner_card_load => localizedValues[locale.languageCode]['partner_card_load'];
  String get partners_load => localizedValues[locale.languageCode]['partners_load'];
  String get partners_card_load => localizedValues[locale.languageCode]['partners_card_load'];
  String get partners_card_start_list => localizedValues[locale.languageCode]['partners_card_start_list'];
  String get lager_list_load => localizedValues[locale.languageCode]['lager_list_load'];
  String get sending_articles_list => localizedValues[locale.languageCode]['sending_articles_list'];
  String get delete_article_from_list => localizedValues[locale.languageCode]['delete_article_from_list'];
  String get delete_all_articles_from_list => localizedValues[locale.languageCode]['delete_all_articles_from_list'];
  String get rbr => localizedValues[locale.languageCode]['rbr'];
  String get code_barcode => localizedValues[locale.languageCode]['code_barcode'];
  String get code => localizedValues[locale.languageCode]['code'];
  String get supplier_code => localizedValues[locale.languageCode]['supplier_code'];
  String get barcode => localizedValues[locale.languageCode]['barcode'];
  String get item_name => localizedValues[locale.languageCode]['item_name'];
  String get name => localizedValues[locale.languageCode]['name'];
  String get item_quantity => localizedValues[locale.languageCode]['item_quantity'];
  String get insert_item_check => localizedValues[locale.languageCode]['insert_item_check'];
  String get insert_item_success => localizedValues[locale.languageCode]['insert_item_success'];
  String get insert_item_error => localizedValues[locale.languageCode]['insert_item_error'];
  String get no_barcode => localizedValues[locale.languageCode]['no_barcode'];
  String get no_code => localizedValues[locale.languageCode]['no_code'];
  String get list_empty => localizedValues[locale.languageCode]['list_empty'];
  String get title_activity_inventory_article_list => localizedValues[locale.languageCode]['title_activity_inventory_article_list'];
  String get back => localizedValues[locale.languageCode]['back'];
  String get send_list => localizedValues[locale.languageCode]['send_list'];
  String get clear_list => localizedValues[locale.languageCode]['clear_list'];
  String get search => localizedValues[locale.languageCode]['search'];
  String get scan => localizedValues[locale.languageCode]['scan'];
  String get add_to_list => localizedValues[locale.languageCode]['add_to_list'];
  String get clear => localizedValues[locale.languageCode]['clear'];
  String get show_list => localizedValues[locale.languageCode]['show_list'];
  String get error => localizedValues[locale.languageCode]['error'];
  String get database_error_title => localizedValues[locale.languageCode]['database_error_title'];
  String get comment => localizedValues[locale.languageCode]['comment'];
  String get comment_msg => localizedValues[locale.languageCode]['comment_msg'];
  String get title_activity_settings_win => localizedValues[locale.languageCode]['title_activity_settings_win'];
  String get title_activity_settings => localizedValues[locale.languageCode]['title_activity_settings'];
  String get initial_settings => localizedValues[locale.languageCode]['initial_settings'];
  String get title_activity_settings_osnovno => localizedValues[locale.languageCode]['title_activity_settings_osnovno'];
  String get title_activity_settings_artikli_kategorije => localizedValues[locale.languageCode]['title_activity_settings_artikli_kategorije'];
  String get title_activity_settings_database => localizedValues[locale.languageCode]['title_activity_settings_database'];
  String get title_activity_logout => localizedValues[locale.languageCode]['title_activity_logout'];
  String get login_data => localizedValues[locale.languageCode]['login_data'];
  String get login_user => localizedValues[locale.languageCode]['login_user'];
  String get data => localizedValues[locale.languageCode]['data'];
  String get data_success => localizedValues[locale.languageCode]['data_success'];
  String get login_title => localizedValues[locale.languageCode]['login_title'];
  String get requear_license_title => localizedValues[locale.languageCode]['requear_license_title'];
  String get pos => localizedValues[locale.languageCode]['pos'];
  String get jmj => localizedValues[locale.languageCode]['jmj'];
  String get username => localizedValues[locale.languageCode]['username'];
  String get password => localizedValues[locale.languageCode]['password'];
  String get password_retipe => localizedValues[locale.languageCode]['password_retipe'];
  String get load_articles => localizedValues[locale.languageCode]['load_articles'];
  String get load_partners => localizedValues[locale.languageCode]['load_partners'];
  String get load_working_units => localizedValues[locale.languageCode]['load_working_units'];
  String get delete_articles => localizedValues[locale.languageCode]['delete_articles'];
  String get username_password_check => localizedValues[locale.languageCode]['username_password_check'];
  String get username_password_error => localizedValues[locale.languageCode]['username_password_error'];
  String get load_articles_check => localizedValues[locale.languageCode]['load_articles_check'];
  String get load_articles_success => localizedValues[locale.languageCode]['load_articles_success'];
  String get load_partners_success => localizedValues[locale.languageCode]['load_partners_success'];
  String get load_working_units_success => localizedValues[locale.languageCode]['load_working_units_success'];
  String get load_articles_delete_error => localizedValues[locale.languageCode]['load_articles_delete_error'];
  String get load_lager_list_delete_error => localizedValues[locale.languageCode]['load_lager_list_delete_error'];
  String get unknown_article => localizedValues[locale.languageCode]['unknown_article'];
  String get action_settings => localizedValues[locale.languageCode]['action_settings'];
  String get title_activity_partners_list => localizedValues[locale.languageCode]['title_activity_partners_list'];
  String get title_activity_working_units => localizedValues[locale.languageCode]['title_activity_working_units'];
  String get working_unit => localizedValues[locale.languageCode]['working_unit'];
  String get title_activity_scan_terminal => localizedValues[locale.languageCode]['title_activity_scan_terminal'];
  String get article_tax_rate => localizedValues[locale.languageCode]['article_tax_rate'];
  String get article_qty => localizedValues[locale.languageCode]['article_qty'];
  String get article_nc => localizedValues[locale.languageCode]['article_nc'];
  String get item_mp_price => localizedValues[locale.languageCode]['item_mp_price'];
  String get article_last_fc => localizedValues[locale.languageCode]['article_last_fc'];
  String get article_vpc => localizedValues[locale.languageCode]['article_vpc'];
  String get article_mpc => localizedValues[locale.languageCode]['article_mpc'];
  String get article_price_margin => localizedValues[locale.languageCode]['article_price_margin'];
  String get article_max_discount => localizedValues[locale.languageCode]['article_max_discount'];
  String get article_unit => localizedValues[locale.languageCode]['article_unit'];
  String get article_group => localizedValues[locale.languageCode]['article_group'];
  String get article_subgroup => localizedValues[locale.languageCode]['article_subgroup'];
  String get article_description => localizedValues[locale.languageCode]['article_description'];
  String get title_activity_partner_card => localizedValues[locale.languageCode]['title_activity_partner_card'];
  String get load_partner_card_input => localizedValues[locale.languageCode]['load_partner_card_input'];
  String get opis_list_header => localizedValues[locale.languageCode]['opis_list_header'];
  String get datum_pp_list_header => localizedValues[locale.languageCode]['datum_pp_list_header'];
  String get datum_doc_list_header => localizedValues[locale.languageCode]['datum_doc_list_header'];
  String get datum_dos_list_header => localizedValues[locale.languageCode]['datum_dos_list_header'];
  String get broj_doc => localizedValues[locale.languageCode]['broj_doc'];
  String get duguje_list_header => localizedValues[locale.languageCode]['duguje_list_header'];
  String get potrazuje_list_header => localizedValues[locale.languageCode]['potrazuje_list_header'];
  String get nevezano_list_header => localizedValues[locale.languageCode]['nevezano_list_header'];
  String get rekapitulacija => localizedValues[locale.languageCode]['rekapitulacija'];
  String get donos => localizedValues[locale.languageCode]['donos'];
  String get saldo => localizedValues[locale.languageCode]['saldo'];
  String get ukupno_tekuci_promet => localizedValues[locale.languageCode]['ukupno_tekuci_promet'];
  String get title_activity_login => localizedValues[locale.languageCode]['title_activity_login'];
  String get database_delete_error => localizedValues[locale.languageCode]['database_delete_error'];
  String get title_activity_partner_card_document_list => localizedValues[locale.languageCode]['title_activity_partner_card_document_list'];
  String get title_activity_partner_card_detail => localizedValues[locale.languageCode]['title_activity_partner_card_detail'];
  String get title_activity_ugo_pos => localizedValues[locale.languageCode]['title_activity_ugo_pos'];
  String get ugo_pos_data_load => localizedValues[locale.languageCode]['ugo_pos_data_load'];
  String get ugo_pos_data_load_error => localizedValues[locale.languageCode]['ugo_pos_data_load_error'];
  String get turn_on_flashlight => localizedValues[locale.languageCode]['turn_on_flashlight'];
  String get turn_off_flashlight => localizedValues[locale.languageCode]['turn_off_flashlight'];
  String get scanner_message => localizedValues[locale.languageCode]['scanner_message'];
  String get show_lager_list => localizedValues[locale.languageCode]['show_lager_list'];
  String get show_partner_card => localizedValues[locale.languageCode]['show_partner_card'];
  String get show_terminal => localizedValues[locale.languageCode]['show_terminal'];
  String get show_ugo_pos => localizedValues[locale.languageCode]['show_ugo_pos'];
  String get title_activity_pos => localizedValues[locale.languageCode]['title_activity_pos'];
  String get title_activity_jmj => localizedValues[locale.languageCode]['title_activity_jmj'];
  String get article_mp_price => localizedValues[locale.languageCode]['article_mp_price'];
  String get article_mpcij => localizedValues[locale.languageCode]['article_mpcij'];
  String get jm => localizedValues[locale.languageCode]['jm'];
  String get porezna_stopa => localizedValues[locale.languageCode]['porezna_stopa'];
  String get pdv => localizedValues[locale.languageCode]['pdv'];
  String get pdv_percent => localizedValues[locale.languageCode]['pdv_percent'];
  String get ppot => localizedValues[locale.languageCode]['ppot'];
  String get ppot_percent => localizedValues[locale.languageCode]['ppot_percent'];
  String get kom => localizedValues[locale.languageCode]['kom'];
  String get kg => localizedValues[locale.languageCode]['kg'];
  String get litra => localizedValues[locale.languageCode]['litra'];
  String get metar => localizedValues[locale.languageCode]['metar'];
  String get metar_kvadratni => localizedValues[locale.languageCode]['metar_kvadratni'];
  String get metar_kubni => localizedValues[locale.languageCode]['metar_kubni'];
  String get minuta => localizedValues[locale.languageCode]['minuta'];
  String get sat => localizedValues[locale.languageCode]['sat'];
  String get kilometar => localizedValues[locale.languageCode]['kilometar'];
  String get porezna_stopa_db => localizedValues[locale.languageCode]['porezna_stopa_db'];
  String get porezne_stope => localizedValues[locale.languageCode]['porezne_stope'];
  String get vrsta_poreza => localizedValues[locale.languageCode]['vrsta_poreza'];
  String get vrste_poreza => localizedValues[locale.languageCode]['vrste_poreza'];
  String get ne_podlijeze_oporezivanju => localizedValues[locale.languageCode]['ne_podlijeze_oporezivanju'];
  String get oslobodeno_poreza => localizedValues[locale.languageCode]['oslobodeno_poreza'];
  String get nije_obveznik => localizedValues[locale.languageCode]['nije_obveznik'];
  String get r1_nije_u_sustavu => localizedValues[locale.languageCode]['r1_nije_u_sustavu'];
  String get r2_nije_u_sustavu => localizedValues[locale.languageCode]['r2_nije_u_sustavu'];
  String get add => localizedValues[locale.languageCode]['add'];
  String get skip => localizedValues[locale.languageCode]['skip'];
  String get save => localizedValues[locale.languageCode]['save'];
  String get cancel => localizedValues[locale.languageCode]['cancel'];
  String get delete => localizedValues[locale.languageCode]['delete'];
  String get delete_poreznu_stopu => localizedValues[locale.languageCode]['delete_poreznu_stopu'];
  String get povratna_naknada => localizedValues[locale.languageCode]['povratna_naknada'];
  String get pov_naknada => localizedValues[locale.languageCode]['pov_naknada'];
  String get povratna_naknada_db => localizedValues[locale.languageCode]['povratna_naknada_db'];
  String get artikl_aktivan => localizedValues[locale.languageCode]['artikl_aktivan'];
  String get naziv_poreza_obvezan => localizedValues[locale.languageCode]['naziv_poreza_obvezan'];
  String get pdv_poreza_obvezan => localizedValues[locale.languageCode]['pdv_poreza_obvezan'];
  String get ppot_poreza_obvezan => localizedValues[locale.languageCode]['ppot_poreza_obvezan'];
  String get naziv_artikla_obvezan => localizedValues[locale.languageCode]['naziv_artikla_obvezan'];
  String get unos_mp_cijene_obvezan => localizedValues[locale.languageCode]['unos_mp_cijene_obvezan'];
  String get unos_kolicine_obvezan => localizedValues[locale.languageCode]['unos_kolicine_obvezan'];
  String get delete_article_pos => localizedValues[locale.languageCode]['delete_article_pos'];
  String get delete_stavku_pos => localizedValues[locale.languageCode]['delete_stavku_pos'];
  String get title_activity_prodavac => localizedValues[locale.languageCode]['title_activity_prodavac'];
  String get prodavac => localizedValues[locale.languageCode]['prodavac'];
  String get oib => localizedValues[locale.languageCode]['oib'];
  String get ime_prezime => localizedValues[locale.languageCode]['ime_prezime'];
  String get ime_prezime_obvezno => localizedValues[locale.languageCode]['ime_prezime_obvezno'];
  String get oib_obvezno => localizedValues[locale.languageCode]['oib_obvezno'];
  String get oib_pogresan => localizedValues[locale.languageCode]['oib_pogresan'];
  String get username_obvezno => localizedValues[locale.languageCode]['username_obvezno'];
  String get password_obvezno => localizedValues[locale.languageCode]['password_obvezno'];
  String get password_retipe_obvezno => localizedValues[locale.languageCode]['password_retipe_obvezno'];
  String get passwords_dont_match => localizedValues[locale.languageCode]['passwords_dont_match'];
  String get oib_obvezno_kupac => localizedValues[locale.languageCode]['oib_obvezno_kupac'];
  String get delete_prodavac => localizedValues[locale.languageCode]['delete_prodavac'];
  String get prodavac_exists => localizedValues[locale.languageCode]['prodavac_exists'];
  String get prodavac_must_be_admin => localizedValues[locale.languageCode]['prodavac_must_be_admin'];
  String get prodavac_must_be_active => localizedValues[locale.languageCode]['prodavac_must_be_active'];
  String get delete_prodavac_logged_in => localizedValues[locale.languageCode]['delete_prodavac_logged_in'];
  String get only_admin_delete_error => localizedValues[locale.languageCode]['only_admin_delete_error'];
  String get only_active_delete_error => localizedValues[locale.languageCode]['only_active_delete_error'];
  String get title_activity_kupac => localizedValues[locale.languageCode]['title_activity_kupac'];
  String get kupac => localizedValues[locale.languageCode]['kupac'];
  String get adresa => localizedValues[locale.languageCode]['adresa'];
  String get adresa_db => localizedValues[locale.languageCode]['adresa_db'];
  String get posta => localizedValues[locale.languageCode]['posta'];
  String get mjesto => localizedValues[locale.languageCode]['mjesto'];
  String get naziv_obvezan_kupac => localizedValues[locale.languageCode]['naziv_obvezan_kupac'];
  String get naziv_obvezan_kategorija => localizedValues[locale.languageCode]['naziv_obvezan_kategorija'];
  String get delete_kupac => localizedValues[locale.languageCode]['delete_kupac'];
  String get delete_kategorija => localizedValues[locale.languageCode]['delete_kategorija'];
  String get title_activity_racun => localizedValues[locale.languageCode]['title_activity_racun'];
  String get racun => localizedValues[locale.languageCode]['racun'];
  String get novcanice => localizedValues[locale.languageCode]['novcanice'];
  String get kartica => localizedValues[locale.languageCode]['kartica'];
  String get cek => localizedValues[locale.languageCode]['cek'];
  String get transakcijski_racun => localizedValues[locale.languageCode]['transakcijski_racun'];
  String get ostalo => localizedValues[locale.languageCode]['ostalo'];
  String get kasa => localizedValues[locale.languageCode]['kasa'];
  String get next => localizedValues[locale.languageCode]['next'];
  String get vrsta_placanja => localizedValues[locale.languageCode]['vrsta_placanja'];
  String get vrsta_placanja_ => localizedValues[locale.languageCode]['vrsta_placanja_'];
  String get stopa => localizedValues[locale.languageCode]['stopa'];
  String get pov_nak => localizedValues[locale.languageCode]['pov_nak'];
  String get rabat => localizedValues[locale.languageCode]['rabat'];
  String get ukupno => localizedValues[locale.languageCode]['ukupno'];
  String get valuta => localizedValues[locale.languageCode]['valuta'];
  String get title_activity_FileExplorer => localizedValues[locale.languageCode]['title_activity_FileExplorer'];
  String get datum => localizedValues[locale.languageCode]['datum'];
  String get broj_racuna => localizedValues[locale.languageCode]['broj_racuna'];
  String get ukupni_iznos => localizedValues[locale.languageCode]['ukupni_iznos'];
  String get dodaj_stavku => localizedValues[locale.languageCode]['dodaj_stavku'];
  String get title_activity_add_edit_stavku => localizedValues[locale.languageCode]['title_activity_add_edit_stavku'];
  String get popust => localizedValues[locale.languageCode]['popust'];
  String get popust_stavka => localizedValues[locale.languageCode]['popust_stavka'];
  String get popust_po_racunu => localizedValues[locale.languageCode]['popust_po_racunu'];
  String get usluga => localizedValues[locale.languageCode]['usluga'];
  String get hrana => localizedValues[locale.languageCode]['hrana'];
  String get pice => localizedValues[locale.languageCode]['pice'];
  String get roba => localizedValues[locale.languageCode]['roba'];
  String get kategorija_artikla => localizedValues[locale.languageCode]['kategorija_artikla'];
  String get r1 => localizedValues[locale.languageCode]['r1'];
  String get r2 => localizedValues[locale.languageCode]['r2'];
  String get title_activity_poslovni_prostor => localizedValues[locale.languageCode]['title_activity_poslovni_prostor'];
  String get poslovni_prostor_naziv => localizedValues[locale.languageCode]['poslovni_prostor_naziv'];
  String get poslovni_prostor_oznaka => localizedValues[locale.languageCode]['poslovni_prostor_oznaka'];
  String get poslovni_prostor_oznaka_hint => localizedValues[locale.languageCode]['poslovni_prostor_oznaka_hint'];
  String get poslovni_prostor_ulica => localizedValues[locale.languageCode]['poslovni_prostor_ulica'];
  String get poslovni_prostor_kucni_broj => localizedValues[locale.languageCode]['poslovni_prostor_kucni_broj'];
  String get poslovni_prostor_kucni_broj_dodatak => localizedValues[locale.languageCode]['poslovni_prostor_kucni_broj_dodatak'];
  String get poslovni_prostor_kucni_broj_dodatak_hint => localizedValues[locale.languageCode]['poslovni_prostor_kucni_broj_dodatak_hint'];
  String get poslovni_prostor_postanski_broj => localizedValues[locale.languageCode]['poslovni_prostor_postanski_broj'];
  String get poslovni_prostor_naselje => localizedValues[locale.languageCode]['poslovni_prostor_naselje'];
  String get poslovni_prostor_opcina => localizedValues[locale.languageCode]['poslovni_prostor_opcina'];
  String get poslovni_prostor_ostali_tip => localizedValues[locale.languageCode]['poslovni_prostor_ostali_tip'];
  String get poslovni_prostor_ostali_tip_hint => localizedValues[locale.languageCode]['poslovni_prostor_ostali_tip_hint'];
  String get poslovni_prostor_radno_vrijeme => localizedValues[locale.languageCode]['poslovni_prostor_radno_vrijeme'];
  String get poslovni_prostor_radno_vrijeme_hint => localizedValues[locale.languageCode]['poslovni_prostor_radno_vrijeme_hint'];
  String get poslovni_prostor_pocetak_primjene => localizedValues[locale.languageCode]['poslovni_prostor_pocetak_primjene'];
  String get poslovni_prostor_pocetak_primjene_button => localizedValues[locale.languageCode]['poslovni_prostor_pocetak_primjene_button'];
  String get poslovni_prostor_zatvoren => localizedValues[locale.languageCode]['poslovni_prostor_zatvoren'];
  String get poslovni_prostor_bez_adrese => localizedValues[locale.languageCode]['poslovni_prostor_bez_adrese'];
  String get title_activity_add_edit_poslovni_prostor => localizedValues[locale.languageCode]['title_activity_add_edit_poslovni_prostor'];
  String get poslovni_prostor_naziv_obvezno => localizedValues[locale.languageCode]['poslovni_prostor_naziv_obvezno'];
  String get poslovni_prostor_oznaka_obvezno => localizedValues[locale.languageCode]['poslovni_prostor_oznaka_obvezno'];
  String get poslovni_prostor_adresa_obvezno => localizedValues[locale.languageCode]['poslovni_prostor_adresa_obvezno'];
  String get poslovni_prostor_kucni_broj_obvezno => localizedValues[locale.languageCode]['poslovni_prostor_kucni_broj_obvezno'];
  String get poslovni_prostor_postanski_broj_obvezno => localizedValues[locale.languageCode]['poslovni_prostor_postanski_broj_obvezno'];
  String get poslovni_prostor_naselje_obvezno => localizedValues[locale.languageCode]['poslovni_prostor_naselje_obvezno'];
  String get poslovni_prostor_naselje_opcina => localizedValues[locale.languageCode]['poslovni_prostor_naselje_opcina'];
  String get poslovni_prostor_ostali_tip_obvezno => localizedValues[locale.languageCode]['poslovni_prostor_ostali_tip_obvezno'];
  String get poslovni_prostor_pocetak_primjene_obvezan => localizedValues[locale.languageCode]['poslovni_prostor_pocetak_primjene_obvezan'];
  String get poslovni_prostor_radno_vrijeme_obvezno => localizedValues[locale.languageCode]['poslovni_prostor_radno_vrijeme_obvezno'];
  String get delete_poslovni_prostor => localizedValues[locale.languageCode]['delete_poslovni_prostor'];
  String get title_activity_tvrtka => localizedValues[locale.languageCode]['title_activity_tvrtka'];
  String get tvrtka_naziv => localizedValues[locale.languageCode]['tvrtka_naziv'];
  String get tvrtka_adresa => localizedValues[locale.languageCode]['tvrtka_adresa'];
  String get tvrtka_posta => localizedValues[locale.languageCode]['tvrtka_posta'];
  String get tvrtka_mjesto => localizedValues[locale.languageCode]['tvrtka_mjesto'];
  String get tvrtka_oib => localizedValues[locale.languageCode]['tvrtka_oib'];
  String get tvrtka_vrsta_obveznika_pdv => localizedValues[locale.languageCode]['tvrtka_vrsta_obveznika_pdv'];
  String get tvrtka_oznaka_naplatnog_uredjaja => localizedValues[locale.languageCode]['tvrtka_oznaka_naplatnog_uredjaja'];
  String get tvrtka_oznaka_naplatnog_uredjaja_hint => localizedValues[locale.languageCode]['tvrtka_oznaka_naplatnog_uredjaja_hint'];
  String get tvrtka_obvezan_unos => localizedValues[locale.languageCode]['tvrtka_obvezan_unos'];
  String get title_activity_print => localizedValues[locale.languageCode]['title_activity_print'];
  String get printer_print_error => localizedValues[locale.languageCode]['printer_print_error'];
  String get printer_profile_generic => localizedValues[locale.languageCode]['printer_profile_generic'];
  String get printer_communication_serial => localizedValues[locale.languageCode]['printer_communication_serial'];
  String get printer_communication_obex => localizedValues[locale.languageCode]['printer_communication_obex'];
  String get printer_width_32 => localizedValues[locale.languageCode]['printer_width_32'];
  String get printer_width_40 => localizedValues[locale.languageCode]['printer_width_40'];
  String get printer_width_48 => localizedValues[locale.languageCode]['printer_width_48'];
  String get printer_width_52 => localizedValues[locale.languageCode]['printer_width_52'];
  String get printer_language_pcl => localizedValues[locale.languageCode]['printer_language_pcl'];
  String get printer_language_cpcl => localizedValues[locale.languageCode]['printer_language_cpcl'];
  String get printer_language_epson => localizedValues[locale.languageCode]['printer_language_epson'];
  String get title_activity_printer_list => localizedValues[locale.languageCode]['title_activity_printer_list'];
  String get print_artikla_u_jednom_redu => localizedValues[locale.languageCode]['print_artikla_u_jednom_redu'];
  String get ugradjeni_pisac => localizedValues[locale.languageCode]['ugradjeni_pisac'];
  String get title_activity_add_edit_printer => localizedValues[locale.languageCode]['title_activity_add_edit_printer'];
  String get printer_profil => localizedValues[locale.languageCode]['printer_profil'];
  String get printer_protocol => localizedValues[locale.languageCode]['printer_protocol'];
  String get printer_width => localizedValues[locale.languageCode]['printer_width'];
  String get printer_language => localizedValues[locale.languageCode]['printer_language'];
  String get printer_cro_signs => localizedValues[locale.languageCode]['printer_cro_signs'];
  String get printer_default => localizedValues[locale.languageCode]['printer_default'];
  String get printer_delete => localizedValues[locale.languageCode]['printer_delete'];
  String get title_activity_btdevices => localizedValues[locale.languageCode]['title_activity_btdevices'];
  String get print_racun => localizedValues[locale.languageCode]['print_racun'];
  String get print_racun_printer => localizedValues[locale.languageCode]['print_racun_printer'];
  String get print_racun_screen => localizedValues[locale.languageCode]['print_racun_screen'];
  String get preview => localizedValues[locale.languageCode]['preview'];
  String get print => localizedValues[locale.languageCode]['print'];
  String get printer_nije_izabran => localizedValues[locale.languageCode]['printer_nije_izabran'];
  String get bluetooth_adapter_nije_dostupan => localizedValues[locale.languageCode]['bluetooth_adapter_nije_dostupan'];
  String get bluetooth_adapter_nije_ukljucen => localizedValues[locale.languageCode]['bluetooth_adapter_nije_ukljucen'];
  String get bluetooth_adapter_nema_uparenih => localizedValues[locale.languageCode]['bluetooth_adapter_nema_uparenih'];
  String get bluetooth_printer_open_error => localizedValues[locale.languageCode]['bluetooth_printer_open_error'];
  String get bluetooth_printer_close_error => localizedValues[locale.languageCode]['bluetooth_printer_close_error'];
  String get built_in_printer_open_error => localizedValues[locale.languageCode]['built_in_printer_open_error'];
  String get vrijeme => localizedValues[locale.languageCode]['vrijeme'];
  String get naziv_robe_usluge => localizedValues[locale.languageCode]['naziv_robe_usluge'];
  String get jmj_racun => localizedValues[locale.languageCode]['jmj_racun'];
  String get kol => localizedValues[locale.languageCode]['kol'];
  String get cijena => localizedValues[locale.languageCode]['cijena'];
  String get popust_racun => localizedValues[locale.languageCode]['popust_racun'];
  String get iznos => localizedValues[locale.languageCode]['iznos'];
  String get osnovica => localizedValues[locale.languageCode]['osnovica'];
  String get porez => localizedValues[locale.languageCode]['porez'];
  String get iznos_poreza => localizedValues[locale.languageCode]['iznos_poreza'];
  String get pregledaj_racun => localizedValues[locale.languageCode]['pregledaj_racun'];
  String get zavrsi_racun => localizedValues[locale.languageCode]['zavrsi_racun'];
  String get odustani_od_racuna => localizedValues[locale.languageCode]['odustani_od_racuna'];
  String get izbrisi_racun => localizedValues[locale.languageCode]['izbrisi_racun'];
  String get da => localizedValues[locale.languageCode]['da'];
  String get ne => localizedValues[locale.languageCode]['ne'];
  String get nije_dostupan => localizedValues[locale.languageCode]['nije_dostupan'];
  String get broj_stavki_error => localizedValues[locale.languageCode]['broj_stavki_error'];
  String get prijavi_poslovni_prostor => localizedValues[locale.languageCode]['prijavi_poslovni_prostor'];
  String get poslovni_prostor_prijavljen => localizedValues[locale.languageCode]['poslovni_prostor_prijavljen'];
  String get poslovni_prostor_nije_prijavljen => localizedValues[locale.languageCode]['poslovni_prostor_nije_prijavljen'];
  String get prijava_poslovnog_prostora => localizedValues[locale.languageCode]['prijava_poslovnog_prostora'];
  String get defaultni_poslovni_prostor => localizedValues[locale.languageCode]['defaultni_poslovni_prostor'];
  String get odbabir_defaultnog_poslovni_prostor_na_loginu => localizedValues[locale.languageCode]['odbabir_defaultnog_poslovni_prostor_na_loginu'];
  String get defaultni_printer_exists_message => localizedValues[locale.languageCode]['defaultni_printer_exists_message'];
  String get defaultni_poslovni_prostor_exists_message => localizedValues[locale.languageCode]['defaultni_poslovni_prostor_exists_message'];
  String get defaultni_poslovni_prostor_exists_message_delete => localizedValues[locale.languageCode]['defaultni_poslovni_prostor_exists_message_delete'];
  String get defaultni_poslovni_prostor_not_exists => localizedValues[locale.languageCode]['defaultni_poslovni_prostor_not_exists'];
  String get cert_manager_error_title => localizedValues[locale.languageCode]['cert_manager_error_title'];
  String get cert_manager_error_message => localizedValues[locale.languageCode]['cert_manager_error_message'];
  String get title_activity_fiskalizacija => localizedValues[locale.languageCode]['title_activity_fiskalizacija'];
  String get putanja_do_test_certifikata => localizedValues[locale.languageCode]['putanja_do_test_certifikata'];
  String get putanja_do_test_certifikata_hint => localizedValues[locale.languageCode]['putanja_do_test_certifikata_hint'];
  String get download_cert => localizedValues[locale.languageCode]['download_cert'];
  String get izaberi_cert => localizedValues[locale.languageCode]['izaberi_cert'];
  String get sync_errors => localizedValues[locale.languageCode]['sync_errors'];
  String get sync_errors_text => localizedValues[locale.languageCode]['sync_errors_text'];
  String get echo => localizedValues[locale.languageCode]['echo'];
  String get pobrisi_certifikate => localizedValues[locale.languageCode]['pobrisi_certifikate'];
  String get title_activity_choose_test_cert => localizedValues[locale.languageCode]['title_activity_choose_test_cert'];
  String get bitova => localizedValues[locale.languageCode]['bitova'];
  String get datoteka_oznacena_title => localizedValues[locale.languageCode]['datoteka_oznacena_title'];
  String get datoteka_oznacena_message => localizedValues[locale.languageCode]['datoteka_oznacena_message'];
  String get title_activity_choose_prod_cert => localizedValues[locale.languageCode]['title_activity_choose_prod_cert'];
  String get natrag => localizedValues[locale.languageCode]['natrag'];
  String get test_password => localizedValues[locale.languageCode]['test_password'];
  String get production_password => localizedValues[locale.languageCode]['production_password'];
  String get ukljuci_fiskalizaciju => localizedValues[locale.languageCode]['ukljuci_fiskalizaciju'];
  String get produkcijska_fiskalizacija_omogucena => localizedValues[locale.languageCode]['produkcijska_fiskalizacija_omogucena'];
  String get save_request_response => localizedValues[locale.languageCode]['save_request_response'];
  String get skip_fiskal_download => localizedValues[locale.languageCode]['skip_fiskal_download'];
  String get unesite_certifikat_i_password => localizedValues[locale.languageCode]['unesite_certifikat_i_password'];
  String get neuspjesna_inicijalizacija_fiskalizacije => localizedValues[locale.languageCode]['neuspjesna_inicijalizacija_fiskalizacije'];
  String get download_cert_error => localizedValues[locale.languageCode]['download_cert_error'];
  String get test_echo_success => localizedValues[locale.languageCode]['test_echo_success'];
  String get test_echo_success_title => localizedValues[locale.languageCode]['test_echo_success_title'];
  String get zki => localizedValues[locale.languageCode]['zki'];
  String get jir => localizedValues[locale.languageCode]['jir'];
  String get fiskalizacija_error_title => localizedValues[locale.languageCode]['fiskalizacija_error_title'];
  String get fiskalizacija_error_message_not_enabled => localizedValues[locale.languageCode]['fiskalizacija_error_message_not_enabled'];
  String get fiskalizacija_error_message_connection => localizedValues[locale.languageCode]['fiskalizacija_error_message_connection'];
  String get slijednost_naplatni_uredjaj => localizedValues[locale.languageCode]['slijednost_naplatni_uredjaj'];
  String get slijednost_poslovni_prostor => localizedValues[locale.languageCode]['slijednost_poslovni_prostor'];
  String get oznaka_slijednosti => localizedValues[locale.languageCode]['oznaka_slijednosti'];
  String get blagajna => localizedValues[locale.languageCode]['blagajna'];
  String get racuni => localizedValues[locale.languageCode]['racuni'];
  String get unos_racuna => localizedValues[locale.languageCode]['unos_racuna'];
  String get unos_racuna_prodavac_error => localizedValues[locale.languageCode]['unos_racuna_prodavac_error'];
  String get unos_racuna_vrsta_placanja_error => localizedValues[locale.languageCode]['unos_racuna_vrsta_placanja_error'];
  String get unos_racuna_poslovni_prostor_error => localizedValues[locale.languageCode]['unos_racuna_poslovni_prostor_error'];
  String get default_poslovni_prostor_error => localizedValues[locale.languageCode]['default_poslovni_prostor_error'];
  String get unos_racuna_tvrtka_error => localizedValues[locale.languageCode]['unos_racuna_tvrtka_error'];
  String get arhiva_racuna => localizedValues[locale.languageCode]['arhiva_racuna'];
  String get izvjestaji => localizedValues[locale.languageCode]['izvjestaji'];
  String get postavke => localizedValues[locale.languageCode]['postavke'];
  String get test_print => localizedValues[locale.languageCode]['test_print'];
  String get title_activity_blagajna => localizedValues[locale.languageCode]['title_activity_blagajna'];
  String get stavke => localizedValues[locale.languageCode]['stavke'];
  String get naplata => localizedValues[locale.languageCode]['naplata'];
  String get title_activity_blagajna_stavke => localizedValues[locale.languageCode]['title_activity_blagajna_stavke'];
  String get obrazac_r1 => localizedValues[locale.languageCode]['obrazac_r1'];
  String get obrazac_r2 => localizedValues[locale.languageCode]['obrazac_r2'];
  String get oib_kupca => localizedValues[locale.languageCode]['oib_kupca'];
  String get print_error => localizedValues[locale.languageCode]['print_error'];
  String get title_activity_blagajna_settings => localizedValues[locale.languageCode]['title_activity_blagajna_settings'];
  String get paragon_blok_oznaka => localizedValues[locale.languageCode]['paragon_blok_oznaka'];
  String get paragon_obrazac => localizedValues[locale.languageCode]['paragon_obrazac'];
  String get title_activity_racuni => localizedValues[locale.languageCode]['title_activity_racuni'];
  String get racuni_dnevna_lista_alert_message_text => localizedValues[locale.languageCode]['racuni_dnevna_lista_alert_message_text'];
  String get racun_ispisan => localizedValues[locale.languageCode]['racun_ispisan'];
  String get title_activity_nezakljuceni_racuni => localizedValues[locale.languageCode]['title_activity_nezakljuceni_racuni'];
  String get title_activity_pregled_racuna => localizedValues[locale.languageCode]['title_activity_pregled_racuna'];
  String get title_activity_nefiskalizirani_racuni => localizedValues[locale.languageCode]['title_activity_nefiskalizirani_racuni'];
  String get racun_kopija_br => localizedValues[locale.languageCode]['racun_kopija_br'];
  String get priprema_certifikata_title => localizedValues[locale.languageCode]['priprema_certifikata_title'];
  String get priprema_certifikata_message => localizedValues[locale.languageCode]['priprema_certifikata_message'];
  String get title_activity_kategorije => localizedValues[locale.languageCode]['title_activity_kategorije'];
  String get title_activity_add_edit_kategorija => localizedValues[locale.languageCode]['title_activity_add_edit_kategorija'];
  String get title_activity_racun_header_footer => localizedValues[locale.languageCode]['title_activity_racun_header_footer'];
  String get period_od => localizedValues[locale.languageCode]['period_od'];
  String get period_do => localizedValues[locale.languageCode]['period_do'];
  String get racuni_storno => localizedValues[locale.languageCode]['racuni_storno'];
  String get promet_po_vrsti_placanja => localizedValues[locale.languageCode]['promet_po_vrsti_placanja'];
  String get racun_storno => localizedValues[locale.languageCode]['racun_storno'];
  String get racun_storno_textfield => localizedValues[locale.languageCode]['racun_storno_textfield'];
  String get racun_storniraj => localizedValues[locale.languageCode]['racun_storniraj'];
  String get racun_storno_datum => localizedValues[locale.languageCode]['racun_storno_datum'];
  String get title_activity_polog => localizedValues[locale.languageCode]['title_activity_polog'];
  String get polog => localizedValues[locale.languageCode]['polog'];
  String get fiskaliziraj_racune => localizedValues[locale.languageCode]['fiskaliziraj_racune'];
  String get fiskaliziraj_racune_dialog_title => localizedValues[locale.languageCode]['fiskaliziraj_racune_dialog_title'];
  String get fiskaliziraj_racune_dialog_message => localizedValues[locale.languageCode]['fiskaliziraj_racune_dialog_message'];
  String get fiskaliziraj_racun_dialog_message => localizedValues[locale.languageCode]['fiskaliziraj_racun_dialog_message'];
  String get ispisi_racun_message => localizedValues[locale.languageCode]['ispisi_racun_message'];
  String get storniraj_racun => localizedValues[locale.languageCode]['storniraj_racun'];
  String get ispisi_racune_message => localizedValues[locale.languageCode]['ispisi_racune_message'];
  String get ukupno_kasa => localizedValues[locale.languageCode]['ukupno_kasa'];
  String get zaglavlje_racuna => localizedValues[locale.languageCode]['zaglavlje_racuna'];
  String get podnozje_racuna => localizedValues[locale.languageCode]['podnozje_racuna'];
  String get podnozje_racuna_nije_u_pdv => localizedValues[locale.languageCode]['podnozje_racuna_nije_u_pdv'];
  String get podnozje_racuna_nije_u_pdv_text => localizedValues[locale.languageCode]['podnozje_racuna_nije_u_pdv_text'];
  String get title_activity_print_to_screen => localizedValues[locale.languageCode]['title_activity_print_to_screen'];
  String get nefiskalizirani_error_text => localizedValues[locale.languageCode]['nefiskalizirani_error_text'];
  String get default_kategorija_delete => localizedValues[locale.languageCode]['default_kategorija_delete'];
  String get zapis_u_racunima_delete => localizedValues[locale.languageCode]['zapis_u_racunima_delete'];
  String get zapis_u_artiklima_delete => localizedValues[locale.languageCode]['zapis_u_artiklima_delete'];
  String get administrator => localizedValues[locale.languageCode]['administrator'];
  String get prodavac_aktivan => localizedValues[locale.languageCode]['prodavac_aktivan'];
  String get ukupni_promet_po_danu => localizedValues[locale.languageCode]['ukupni_promet_po_danu'];
  String get pregled_prometa_po_vrsti_placnja => localizedValues[locale.languageCode]['pregled_prometa_po_vrsti_placnja'];
  String get pregled_prometa_po_vrsti_placanja_ispis => localizedValues[locale.languageCode]['pregled_prometa_po_vrsti_placanja_ispis'];
  String get pregled_prometa_po_artiklima => localizedValues[locale.languageCode]['pregled_prometa_po_artiklima'];
  String get pregled_prometa_po_artiklima_ispis => localizedValues[locale.languageCode]['pregled_prometa_po_artiklima_ispis'];
  String get vrsta_placanja_print => localizedValues[locale.languageCode]['vrsta_placanja_print'];
  String get od_do => localizedValues[locale.languageCode]['od_do'];
  String get ukupno_od_do => localizedValues[locale.languageCode]['ukupno_od_do'];
  String get ispis_dnevnog_prometa => localizedValues[locale.languageCode]['ispis_dnevnog_prometa'];
  String get dnevni_promet => localizedValues[locale.languageCode]['dnevni_promet'];
  String get datum_prometa => localizedValues[locale.languageCode]['datum_prometa'];
  String get export_database => localizedValues[locale.languageCode]['export_database'];
  String get export_database_title => localizedValues[locale.languageCode]['export_database_title'];
  String get export_database_message => localizedValues[locale.languageCode]['export_database_message'];
  String get import_database => localizedValues[locale.languageCode]['import_database'];
  String get import_database_title => localizedValues[locale.languageCode]['import_database_title'];
  String get import_database_message => localizedValues[locale.languageCode]['import_database_message'];
  String get odjava_title => localizedValues[locale.languageCode]['odjava_title'];
  String get odjava_message => localizedValues[locale.languageCode]['odjava_message'];
  String get super_user_settings => localizedValues[locale.languageCode]['super_user_settings'];
  String get cert_service_url => localizedValues[locale.languageCode]['cert_service_url'];
  String get save_license_credentials => localizedValues[locale.languageCode]['save_license_credentials'];
  String get get_license => localizedValues[locale.languageCode]['get_license'];
  String get create_license => localizedValues[locale.languageCode]['create_license'];
  String get update_license => localizedValues[locale.languageCode]['update_license'];
  String get update_client => localizedValues[locale.languageCode]['update_client'];
  String get client_cert_error => localizedValues[locale.languageCode]['client_cert_error'];
  String get ritam_settings_activity => localizedValues[locale.languageCode]['ritam_settings_activity'];
  String get ritam_settings_service_credentials_message => localizedValues[locale.languageCode]['ritam_settings_service_credentials_message'];
  String get ritam_settings_working_unit_save_message => localizedValues[locale.languageCode]['ritam_settings_working_unit_save_message'];
  String get ritam_service_url => localizedValues[locale.languageCode]['ritam_service_url'];
  String get ritam_load_working_units => localizedValues[locale.languageCode]['ritam_load_working_units'];
  String get ritam_save_working_unit => localizedValues[locale.languageCode]['ritam_save_working_unit'];
  String get ritam_dnevna_lista_prometa => localizedValues[locale.languageCode]['ritam_dnevna_lista_prometa'];
  String get ritam_dnevna_lista_prometa_slanje => localizedValues[locale.languageCode]['ritam_dnevna_lista_prometa_slanje'];
  String get ritam_dnevna_lista_prometa_slanje_success => localizedValues[locale.languageCode]['ritam_dnevna_lista_prometa_slanje_success'];
  String get ritam_dnevna_lista_prometa_slanje_error => localizedValues[locale.languageCode]['ritam_dnevna_lista_prometa_slanje_error'];
  String get ritam_send_dnevna_lista => localizedValues[locale.languageCode]['ritam_send_dnevna_lista'];
  String get slobodni_tekst_unos => localizedValues[locale.languageCode]['slobodni_tekst_unos'];
  String get napomena_unos => localizedValues[locale.languageCode]['napomena_unos'];

  String get device_id => localizedValues[locale.languageCode]['device_id'];
  String get versionCode => localizedValues[locale.languageCode]['versionCode'];
  String get versionName => localizedValues[locale.languageCode]['versionName'];
  String get dbVersion => localizedValues[locale.languageCode]['dbVersion'];

  String get license_title => localizedValues[locale.languageCode]['license_title'];
  String get license_message => localizedValues[locale.languageCode]['license_message'];
  String get license_unavailable_message => localizedValues[locale.languageCode]['license_unavailable_message'];
  String get license_success_message => localizedValues[locale.languageCode]['license_success_message'];
  String get license_deactivated => localizedValues[locale.languageCode]['license_deactivated'];

  String get device_key_title => localizedValues[locale.languageCode]['license_deactivated'];
  String get device_key_message => localizedValues[locale.languageCode]['device_key_message'];

  String get token_title => localizedValues[locale.languageCode]['token_title'];
  String get token_message => localizedValues[locale.languageCode]['token_message'];

  String get upload_database_title => localizedValues[locale.languageCode]['upload_database_title'];
  String get upload_database_message => localizedValues[locale.languageCode]['upload_database_message'];
  String get upload_database_button_title => localizedValues[locale.languageCode]['upload_database_button_title'];
  String get upload_database_error_message => localizedValues[locale.languageCode]['upload_database_error_message'];
  String get upload_database_success_message => localizedValues[locale.languageCode]['upload_database_success_message'];

  String get download_database_title => localizedValues[locale.languageCode]['download_database_title'];
  String get download_database_message => localizedValues[locale.languageCode]['download_database_message'];
  String get download_database_button_title => localizedValues[locale.languageCode]['download_database_button_title'];
  String get download_database_error_message => localizedValues[locale.languageCode]['download_database_error_message'];
  String get download_database_success_message => localizedValues[locale.languageCode]['download_database_success_message'];
  String get download_database_import_message => localizedValues[locale.languageCode]['download_database_import_message'];
  String get download_database_import_message_initial => localizedValues[locale.languageCode]['download_database_import_message_initial'];

  String get license_display_message_title => localizedValues[locale.languageCode]['license_display_message_title'];

  String get block_after_invoice_num_message  => localizedValues[locale.languageCode]['block_after_invoice_num_message'];
  String get block_after_invoice_num_expired_message => localizedValues[locale.languageCode]['block_after_invoice_num_expired_message'];

  String get external_storage_request_title => localizedValues[locale.languageCode]['external_storage_request_title'];
  String get external_storage_request_message => localizedValues[locale.languageCode]['external_storage_request_message'];
  String get external_storage_error => localizedValues[locale.languageCode]['external_storage_error'];

  String get export_to_pdf => localizedValues[locale.languageCode]['export_to_pdf'];
  String get send_mail_error => localizedValues[locale.languageCode]['send_mail_error'];
  String get send_pdf_by_mail => localizedValues[locale.languageCode]['send_pdf_by_mail'];
  String get save_pdf => localizedValues[locale.languageCode]['save_pdf'];
  String get pdf_saved => localizedValues[locale.languageCode]['pdf_saved'];
  String get pdf_save_error => localizedValues[locale.languageCode]['pdf_save_error'];
  String get pdf_send_error => localizedValues[locale.languageCode]['pdf_send_error'];
  String get internet_connection => localizedValues[locale.languageCode]['internet_connection'];
  String get article_stopa_poreza_error => localizedValues[locale.languageCode]['article_stopa_poreza_error'];
  String get unknown_vrsta_obveznika => localizedValues[locale.languageCode]['unknown_vrsta_obveznika'];

  String get fiskaliziraj_trans_racune => localizedValues[locale.languageCode]['fiskaliziraj_trans_racune'];

  String get privacy_policy => localizedValues[locale.languageCode]['privacy_policy'];

  String get zakljucak_blagajne => localizedValues[locale.languageCode]['zakljucak_blagajne'];
  String get nezakljuceni_racuni => localizedValues[locale.languageCode]['nezakljuceni_racuni'];
  String get pregled_zakljucaka => localizedValues[locale.languageCode]['pregled_zakljucaka'];
  String get zakljuci_racune => localizedValues[locale.languageCode]['zakljuci_racune'];
  String get zakljuci_racune_message => localizedValues[locale.languageCode]['zakljuci_racune_message'];
  String get zakljuci_racune_message_nema_racuna => localizedValues[locale.languageCode]['zakljuci_racune_message_nema_racuna'];
  String get zakljuci_racune_message_success => localizedValues[locale.languageCode]['zakljuci_racune_message_success'];
  String get zakljucak => localizedValues[locale.languageCode]['zakljucak'];
  String get zakljucak_datum => localizedValues[locale.languageCode]['zakljucak_datum'];
  String get zakljucak_posl_prostor => localizedValues[locale.languageCode]['zakljucak_posl_prostor'];
  String get zakljucak_naplatni_uredjaj => localizedValues[locale.languageCode]['zakljucak_naplatni_uredjaj'];
  String get zakljucak_racun_od => localizedValues[locale.languageCode]['zakljucak_racun_od'];
  String get zakljucak_racun_do => localizedValues[locale.languageCode]['zakljucak_racun_do'];

}