import 'package:flutter/material.dart';
import 'package:kamus_indonesia_sahu/Database/Db_Helper.dart';
import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:kamus_indonesia_sahu/Screens/Splashpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Ensure Flutter is initialized
  final dbHelper = DatabaseHelper.instance;
  // await dbHelper.deleteDatabase('kamus_database.db');
  final kataList = [
    Kata(
      kataIndonesia: "abang",
      kataEjaan: 'abang',
      kataSahu: "ior",
      labelKata: "n",
      contohPenggunaan: "-- saya pergi ke Jailolo ari ior tagi Jaidolo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "abon",
      kataEjaan: 'abon',
      kataSahu: "nyaotutu`u",
      labelKata: "n",
      contohPenggunaan: "ibu memasak -- meme masiai nyaotutu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "adik",
      kataEjaan: 'adik',
      kataSahu: "nongodu",
      labelKata: "n",
      contohPenggunaan: "-- saya pergi ke kebun ari nongodu tagi guda",
      kataTurunan: ["bungsu", "ipar", "laki-laki", "perempuan"],
      terjemahanTurunan: [
        "nongodu magodisusu",
        "geri",
        "nongodu nanau",
        "bidang"
      ],
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "air",
      kataEjaan: 'air',
      kataSahu: "banyo",
      labelKata: "n",
      contohPenggunaan: "minum -- jahe ka`e banyo gala jahe",
      kataTurunan: ["hujan", "kencing", "ketuban", "liur", "mata", "terjun"],
      terjemahanTurunan: [
        "bajo bisi",
        "oosis",
        "munang ami babanyo",
        "gidit",
        "lao`o manongo",
        "banyo uis toma bawa"
      ],
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "akar",
      kataEjaan: 'akar',
      kataSahu: "akar",
      labelKata: "n",
      contohPenggunaan: "-- pohon mangga guwai mautu",
      kataImbuhanIndonesia: ["Seakar"],
      kataImbuhan: ["se.a.kar "],
      labelKataImbuhan: ["n"],
      kataSahuImbuhan: ["maotu"],
      contohPenggunaanImbuhan: ["~ durian maotu"],
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "akan",
      kataEjaan: 'akan',
      kataSahu: "aka",
      labelKata: "adv",
      contohPenggunaan:
          "hari ini ibu -- membelikan sepatu baru untuk saya wanger nange ne ari meme aka tibo capatu sungi",
      kataImbuhanIndonesia: ["akankah"],
      kataImbuhan: ["a.kan.kah"],
      labelKataImbuhan: ["adv"],
      kataSahuImbuhan: ["ngaka"],
      contohPenggunaanImbuhan: [
        "dia (L) percaya kepada kamu? ngini ngaka ngaku unang (L)?"
      ],
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "alam",
      kataEjaan: 'alam',
      kataSahu: "daeraha",
      labelKata: "n",
      contohPenggunaan:
          "-- Desa Taraudu sangat indah daeraha Gam Taraudu rous masala",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "alang",
      kataEjaan: 'alang',
      kataSahu: "sitiru ate",
      labelKata: "n",
      contohPenggunaan: "",
      kataImbuhanIndonesia: ["mengalangi"],
      kataImbuhan: ["meng.a.langi"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["dolaaku"],
      contohPenggunaanImbuhan: ["jangan ~ aku dolaaku ngiyawa"],
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "alang-alang",
      kataEjaan: 'alang-alang',
      kataSahu: "usum",
      labelKata: "n",
      contohPenggunaan: "kebun saya penuh dengan -- ari guda romang rei usum",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "alir, aliran",
      kataEjaan: 'alir, alir.an',
      kataSahu: "todowang",
      labelKata: "v",
      contohPenggunaan:
          "satu ~ listrik dengan tetangga ngoi todowang listrik toma wala sebang",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "alis",
        kataEjaan: "alis",
        kataSahu: "magonar",
        labelKata: "n",
        contohPenggunaan: "--nya sangat tebal lao magonar lai kapiring",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "alu",
        kataEjaan: "alu",
        kataSahu: "dudutu`u",
        labelKata: "n",
        contohPenggunaan: "ayah membuat -- baba a`a dudutu`u",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "ambil",
        kataEjaan: "am.bil",
        kataSahu: "oro",
        labelKata: "v",
        contohPenggunaan: "-- keputusan oro keputusan",
        isBookmarked: 0,
        kataTurunan: [
          "hati",
          "langkah"
        ],
        terjemahanTurunan: [
          "oroakal",
          "mahangoi"
        ],
        kataImbuhan: [
          "meng.am.bil",
          "meng.am.bil.kan",
          "ter.am.bil"
        ],
        kataImbuhanIndonesia: [
          "mengambil",
          "mengambilkan",
          "terambil"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "siaro",
          "tosiaro",
          "yaoro"
        ],
        contohPenggunaanImbuhan: [
          "saya yang ~ ibu makanan ngoi to sioro ngina mangongorom",
          "saya ~ anak (L) itu kue ngoi tosioro ngoolo ge ai (L) mamami",
          "dompet saya ~ ari dompet nga yaoro"
        ]),
    Kata(
        kataIndonesia: "amil",
        kataEjaan: "amil",
        kataSahu: "simaloarngoa",
        labelKata: "n",
        contohPenggunaan:
            "para -- menyiapkan ritual penikahan adi masu dudahe simaloangoa",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "anak",
        kataEjaan: "anak",
        kataSahu: "ngoa",
        labelKata: "n",
        contohPenggunaan: "saya pergi ke sekolah ari ngoa toma sekolah",
        isBookmarked: 0,
        kataTurunan: [
          "angkat",
          "buah",
          "cucu",
          "didik",
          "kecil",
          "kecil",
          "rantau",
          "sulung",
          "tangga",
          "tiri",
          "yatim"
        ],
        terjemahanTurunan: [
          "ngoa olo",
          "ngoa memete`e",
          "ngoa redanong",
          "ngoa dodoto`o",
          "ngoa olo",
          "ngoa tubaie",
          "ngoa pardidu",
          "ngoa majomol",
          "ngute",
          "ngoa bau"
        ],
        kataImbuhan: [
          "anak-anak",
          "ber.a.nak",
          "per.a.na.kan"
        ],
        kataImbuhanIndonesia: [
          "anak-anak",
          "beranak",
          "peranakan"
        ],
        labelKataImbuhan: [
          "a",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "ngoa-ngoa",
          "raingoa",
          "ngawatala"
        ],
        contohPenggunaanImbuhan: [
          "~ sedang bermain di halaman rumah ngoa-ngoa olo adibisa toma wala masoang",
          "dia sudah ~ satu nguna raingoa rimoi",
          "ngawatala: kami ~ sultan ngomi ngowatala sultan"
        ]),
    Kata(
        kataIndonesia: "anjing",
        kataEjaan: "an.jing",
        kataSahu: "nunu`u",
        labelKata: "n",
        contohPenggunaan: "-- menggonggong nunu i bou",
        isBookmarked: 0,
        kataTurunan: ["laut", "pelacak"],
        terjemahanTurunan: ["nunu`u ngolot", "suru`u"]),
    Kata(
        kataIndonesia: "angin",
        kataEjaan: "angin",
        kataSahu: "korawian",
        labelKata: "n",
        contohPenggunaan: "-- sangat kencang korawian laisidi",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "angkat, mengangkat",
        kataEjaan: "ang.kat, meng.ang.kat",
        kataSahu: "tede",
        labelKata: "v",
        contohPenggunaan: "-- batu dari sungai ede madi toma ngala",
        isBookmarked: 0,
        kataTurunan: [
          "berat",
          "bicara",
          "kaki",
          "tangan"
        ],
        terjemahanTurunan: [
          "tede dobuso",
          "tede iding",
          "tedo row",
          "tede giam"
        ],
        kataImbuhan: [
          "ter.ang.kat"
        ],
        kataImbuhanIndonesia: [
          "terangkat"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "ritede"
        ],
        contohPenggunaanImbuhan: [
          "sampah itu sudah ~ jurame de ritede ua"
        ]),
    Kata(
      kataIndonesia: "anting",
      kataEjaan: "an.ting",
      kataSahu: "giwang",
      labelKata: "n",
      contohPenggunaan:
          "ibu membeli -- emas di pasar meme tibo giwang mas toma butu",
      isBookmarked: 0,
      kataTurunan: ["jepit"],
      kataImbuhan: ["an.ting-an.ting"],
      kataImbuhanIndonesia: ["anting-anting"],
      terjemahanTurunan: ["giwang platu"],
      kataSahuImbuhan: ["giwang-giwang"],
      labelKataImbuhan: ["n"],
      contohPenggunaanImbuhan: [
        "saya mempunyai ~ emas ngoi ari giwang giwang mas"
      ],
    ),
    Kata(
        kataIndonesia: "apa",
        kataEjaan: "apa",
        kataSahu: "oro",
        labelKata: "pron",
        contohPenggunaan: "-- yang ibu maksud meme maksudu oru",
        isBookmarked: 0,
        kataTurunan: ["kabar", "saja"],
        terjemahanTurunan: ["habari oru", "oru bato"],
        kataImbuhan: ["meng.apa"],
        kataImbuhanIndonesia: ["mengapa"],
        labelKataImbuhan: ["pron"],
        kataSahuImbuhan: ["sa`ol"],
        contohPenggunaanImbuhan: ["~ kamu menangis a sa`ol noadi"]),
    Kata(
        kataIndonesia: "api",
        kataEjaan: "api",
        kataSahu: "u`u",
        labelKata: "n",
        contohPenggunaan:
            "-- adik menyalakan  di kamar nongudu silejang u`u toma",
        isBookmarked: 0,
        kataTurunan: ["unggun"],
        terjemahanTurunan: [" u`u malela"],
        kataImbuhan: ["per.a.pi.an"],
        kataImbuhanIndonesia: ["perapian"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["u`u"],
        contohPenggunaanImbuhan: ["~ saya rusak tomadian ricira"]),
    Kata(
      kataIndonesia: "apung, mengapung",
      kataEjaan: "a.pung, meng.a.pung",
      kataSahu: "raring",
      labelKata: "v",
      contohPenggunaan:
          " sampah ~ di permukaan laut jeremot raring toma ngolot",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "arak",
        kataEjaan: "arak",
        kataSahu: "ka`e",
        labelKata: "n",
        contohPenggunaan: " dia (L) menjual -- unang (L) owun kae",
        isBookmarked: 0,
        kataImbuhan: [
          "peng.a.rak.an"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "ka`e"
        ],
        contohPenggunaanImbuhan: [
          "kakak saya membuat ~ dengan menggunakan blek ari rio a`a kae mangi toma bleki"
        ]),
    Kata(
      kataIndonesia: "arang",
      kataEjaan: "arang",
      kataSahu: "konu`u",
      labelKata: "n",
      contohPenggunaan: "ayah membakar -- tempurung baba tau`u konu`u",
      isBookmarked: 0,
      kataImbuhan: ["meng.a.rang"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["sidadikonu`u"],
    ),
    Kata(
      kataIndonesia: "arisan",
      kataEjaan: "aris.an",
      kataSahu: "jojobo",
      labelKata: "n",
      contohPenggunaan:
          "hari ini -- keluarga wanger nagene jojobo tomangitu rengale",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "arus",
      kataEjaan: "arus",
      kataSahu: "momoku",
      labelKata: "n",
      contohPenggunaan: "-- sangat kencang momoku laisidi",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "asap",
        kataEjaan: "asap",
        kataSahu: "rowor",
        labelKata: "n",
        contohPenggunaan: "-- belerang belerang ma rowor",
        isBookmarked: 0,
        kataTurunan: ["air", "api"],
        terjemahanTurunan: ["panyo marowor", "u`u marowor"],
        kataImbuhan: ["ber.a.sap"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["lowor laisi"],
        contohPenggunaanImbuhan: ["sangat ~ lowor laisi"]),
    Kata(
      kataIndonesia: "asam",
      kataEjaan: "asam",
      kataSahu: "kowo`i",
      labelKata: "n",
      contohPenggunaan: "mangga ini sangat -- guwae kowi`i masala",
      isBookmarked: 0,
      kataTurunan: ["garam", "lambung"],
      terjemahanTurunan: ["kowi rasa-rasa", "kowi toma kater mamiding"],
      kataImbuhan: ["meng.a.sam"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["sikowo"],
      contohPenggunaanImbuhan: ["~ ikan sikowi`i nyao`o"],
    ),
    Kata(
      kataIndonesia: "asuh, mengasuh",
      kataEjaan: "asuh, meng.a.suh",
      kataSahu: "piara",
      labelKata: "v",
      contohPenggunaan: "-- anak piara ngoa",
      isBookmarked: 0,
      kataImbuhan: ["peng.a.suh"],
      labelKataImbuhan: ["n"],
      kataSahuImbuhan: ["ga`a piara"],
      contohPenggunaanImbuhan: ["~ anak yatim ngoa yatim ga`a piara"],
    ),
    Kata(
      kataIndonesia: "atap",
      kataEjaan: "atap",
      kataSahu: "wala",
      labelKata: "n",
      contohPenggunaan: "-- rumah kami bocor wala maatu rituso`o",
      isBookmarked: 0,
      kataTurunan: ["seng", "genting"],
      terjemahanTurunan: ["wala maseng", "wal genting"],
      kataImbuhan: ["ber.a.tap", "meng.a.tapi"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["minawala", "ngupawala"],
      contohPenggunaanImbuhan: [
        "rumah adik -- rumbia ngomi nongodu minawala atu",
        "tukang ~ rumahnya tukang ngupawala atu"
      ],
    ),
    Kata(
      kataIndonesia: "atas",
      kataEjaan: "atas",
      kataSahu: "da`u",
      labelKata: "n",
      contohPenggunaan: "-- rumah da`u` wala",
      isBookmarked: 0,
      kataImbuhan: ["meng.a.tasi", "ter.a.tasi", "a.tas.an"],
      labelKataImbuhan: ["v", "v", "n"],
      kataSahuImbuhan: ["sitobudiyai", "ritogum", "gigisen"],
      contohPenggunaanImbuhan: [
        "sitobudiyai: saya yang telah ~ masalanya ngoi sotosidiyai anang manga salah fidiritogum",
        "masalah saya  telah ~ ngori ari sala pidi ritogum  doa ",
        "dia (L) itu ~ sayaunang (L) ge ari gigisen"
      ],
    ),
    Kata(
      kataIndonesia: "atau",
      kataEjaan: "atau",
      kataSahu: "bolo",
      labelKata: "p",
      contohPenggunaan:
          "kamu -- saya yang pergi ke pasar? ngini bolo ngoi tagi toma butu?",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "awan",
        kataEjaan: "awan",
        kataSahu: "kakamo",
        labelKata: "n",
        contohPenggunaan: "-- sangat tebal nange ne kakamo lai ofi",
        isBookmarked: 0,
        kataTurunan: ["hitam", "tebal"],
        terjemahanTurunan: ["kakamo kotu`u", "kakamo kapirin"]),
    Kata(
      kataIndonesia: "ayah",
      kataEjaan: "ayah",
      kataSahu: "baba",
      labelKata: "n",
      contohPenggunaan: "-- membelikan saya baju ari baba otibo ngoi ari baju",
      isBookmarked: 0,
      kataTurunan: ["ibu", "kandung", "mertua", "tiri"],
      terjemahanTurunan: ["dunu", "baba madutu", "dedon", "baba bau"],
      kataImbuhan: ["ber.a.yah", "se.a.yah"],
      labelKataImbuhan: ["v", "n"],
      kataSahuImbuhan: ["babacua", "babamoi"],
      contohPenggunaanImbuhan: [
        "anak itu tidak ~ ngoa ge ma babacua",
        "saya dan dia ~ tapi beda ibu ngoi raunang baba  moi, matai ngina"
      ],
    ),
    Kata(
      kataIndonesia: "ayam",
      kataEjaan: "ayam",
      kataSahu: "namo",
      labelKata: "n",
      contohPenggunaan: "bertelur namo iwuor",
      isBookmarked: 0,
      kataTurunan: ["bakar", "betina", "goreng", "jantan", "kampung", "potong"],
      terjemahanTurunan: [
        "namo osum",
        "namo mawere`a",
        "namo goreng",
        "namo mana`u",
        "namao gam",
        "namo tola`a"
      ],
    ),
    Kata(
      kataIndonesia: "ayun, mengayun",
      kataEjaan: "ayun, me.nga.yun",
      kataSahu: "biba",
      labelKata: "v",
      contohPenggunaan: "ayah ~ adik baba biba nongodu",
      isBookmarked: 0,
      kataImbuhan: ["a.yun.an"],
      labelKataImbuhan: ["n"],
      kataSahuImbuhan: ["bue-bue"],
      contohPenggunaanImbuhan: ["ibu membeli ~ ngina tibo bue-bue"],
    ),
    //section abjab B
    Kata(
        kataIndonesia: "baca",
        kataEjaan: "ba.ca",
        kataSahu: "baca",
        labelKata: "v",
        contohPenggunaan: "-- baku baca boku",
        isBookmarked: 0,
        kataImbuhan: [
          "mem.bac.a",
          "membaca-baca",
          "membacakan",
          "terbaca",
          "bacaan",
          "pembacaan"
        ],
        kataImbuhanIndonesia: [
          "membaca",
          "membaca-baca",
          "membacakan",
          "terbaca",
          "bacaan",
          "pembacaan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "baca",
          "baca",
          "mahalahi",
          "ribaca",
          "bacage",
          "baca"
        ],
        contohPenggunaanImbuhan: [
          "adik ~ buku dongeng nongodu baca boku dongeng",
          "kakek pintar ~ mantra tete pahe baca mantra",
          "kakek ~ doa di gereja tete mahalahi doa toma gereja",
          "buku cerita itu  telah ~ boku cerita ge ribaca dua",
          "buku ~ anak-anak boku bacage lai hali",
          "~ firman di gereja telah selesai baca boku ofi-ofi toma gereja ge riduan"
        ]),
    Kata(
        kataIndonesia: "bagus",
        kataEjaan: "ba.gus",
        kataSahu: "rous",
        labelKata: "a",
        contohPenggunaan: "sepatu kamu sangat -- sapatu rous masala;",
        isBookmarked: 0,
        kataImbuhan: [
          "ter.ba.gus"
        ],
        kataImbuhanIndonesia: [
          "terbagus"
        ],
        labelKataImbuhan: [
          "a"
        ],
        kataSahuImbuhan: [
          "rousu"
        ],
        contohPenggunaanImbuhan: [
          "kamu lakukan yang ~ ngini balaso a`a oria`a ga`a rousu"
        ]),
    Kata(
        kataIndonesia: "baju",
        kataEjaan: "baju",
        kataSahu: "baju",
        labelKata: "n",
        contohPenggunaan: "ibu membeli -- di pasar meme tibo baju toma butu",
        isBookmarked: 0,
        kataTurunan: [
          "baru",
          "dalam",
          "jas",
          "tidur"
        ],
        terjemahanTurunan: [
          "baju sungi",
          "baju dara",
          "baju biskap",
          "baju ootu"
        ],
        kataImbuhan: [
          "ber.ba.ju",
          "mem.ba.jui"
        ],
        kataImbuhanIndonesia: [
          "berbaju",
          "membajui"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "mabaju",
          "bajutami"
        ],
        contohPenggunaanImbuhan: [
          "~ merah mabaju kolil",
          "nenek ~ ke cunenecunya  sitailako bajutami dano"
        ]),
    Kata(
      kataIndonesia: "bambu",
      kataEjaan: "bam.bu",
      kataSahu: "tonga",
      labelKata: "n",
      contohPenggunaan:
          "ibu membeli -- menjadi empat bagian meme suka tonga sidadi bela rata;",
      isBookmarked: 0,
      kataTurunan: ["cina", "gila", "kuning"],
      terjemahanTurunan: ["tonga am", "tatage", "rabanbau"],
    ),
    Kata(
        kataIndonesia: "bangun",
        kataEjaan: "ba.ngun",
        kataSahu: "momi`i",
        labelKata: "v",
        contohPenggunaan: "-- rumah kepala suku momi`i wala suku masae`e;",
        isBookmarked: 0,
        kataTurunan: [
          "rumah",
          "tidur"
        ],
        terjemahanTurunan: [
          "momo`i wala",
          "momi`i"
        ],
        kataImbuhan: [
          "mem.ba.ngun",
          "mem.ba.ngun.kan"
        ],
        kataImbuhanIndonesia: [
          "membangun",
          "membangunkan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "simomi",
          "simomi`i"
        ],
        contohPenggunaanImbuhan: [
          "pagi ini warga Taraudu ~ rumah adat Sahu  dainiane womi gam Taraudu simomi sasadu",
          "ayah ~ anak yang sedang tidur baba simomi`i woolo ga`a diotu"
        ]),
    Kata(
        kataIndonesia: "bangau",
        kataEjaan: "bangau",
        kataSahu: "bangau",
        labelKata: "n",
        contohPenggunaan:
            "dua ekor -- menyeberangi sungai bangau romdidi itobong tomangala da`a kacimoi",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "banjir",
        kataEjaan: "ban.jir",
        kataSahu: "ngaruuisi",
        labelKata: "v",
        contohPenggunaan:
            "-- melanda rumah warga di Desa Jailolo ngaruuisisirarin wala toma Gam Jaidolo",
        isBookmarked: 0,
        kataImbuhan: [
          "mem.ban.jiri",
          "ke.ban.jir.an"
        ],
        kataImbuhanIndonesia: [
          "membanjiri",
          "kebanjiran"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "lauisi",
          "banyouisi"
        ],
        contohPenggunaanImbuhan: [
          "~ sampah di sungai lauisi sigasa jeromot toma ngolot",
          "semalam rumah kami ~ autu toma ngawala banyouisi lagasa"
        ]),
    Kata(
        kataIndonesia: "bara",
        kataEjaan: "ba.ra",
        kataSahu: "mangabos",
        labelKata: "n",
        contohPenggunaan: "adik menginjak -- api motu u`u mangabos",
        isBookmarked: 0,
        kataImbuhan: [
          "mem.ba.ra",
          "pem.ba.ra.an"
        ],
        kataImbuhanIndonesia: [
          "membara",
          "pembaraan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "maroang",
          "didian"
        ],
        contohPenggunaanImbuhan: [
          "hati saya sangat ~ setelah ketemu guru kelas ngoi riaaka maroang masala mausanga ari guru klas",
          "~ di rumah nenek telah rusak didian mangi`i ricira"
        ]),
    Kata(
        kataIndonesia: "barat",
        kataEjaan: "ba.rat",
        kataSahu: "wangermala`o",
        labelKata: 'n',
        contohPenggunaan:
            "angin -- sangat kencang tarawian da`a wangermala`o laisidi",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "baring, terbaring",
        kataEjaan: "ba.ring, ter.ba.ring",
        kataSahu: "tomangidu",
        labelKata: "v",
        contohPenggunaan: "saya ~ di tempat tidur ngoi tomangidu toma dederu;",
        isBookmarked: 0,
        kataImbuhan: ["mem.ba.ring"],
        kataImbuhanIndonesia: ["membaring"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["mangidu"],
        contohPenggunaanImbuhan: ["~ badan sejenak mangidu cika ua"]),
    Kata(
        kataIndonesia: "batang",
        kataEjaan: "ba.tang",
        kataSahu: "malese",
        labelKata: "n",
        contohPenggunaan: "memotong -- pohon manggis oto bastang malese",
        isBookmarked: 0,
        kataTurunan: [
          "hidung",
          "kayu",
          "leher"
        ],
        terjemahanTurunan: [
          "ngunu",
          "ate malese",
          "camal"
        ],
        kataImbuhan: [
          "ber.ba.tang",
          "ba.tang.an",
          "se.ba.tang"
        ],
        kataImbuhanIndonesia: [
          "berbatang",
          "batangan",
          "sebatang"
        ],
        labelKataImbuhan: [
          "n",
          "a",
          "num"
        ],
        kataSahuImbuhan: [
          "remarese",
          "batangan",
          "malese"
        ],
        contohPenggunaanImbuhan: [
          "pala itu telah ~ gosorage remarese",
          "kakak menjual emas ~ iyor mogu`un mas  batangan",
          "~ pohon cengkih cengke malese dumoi "
        ]),
    Kata(
        kataIndonesia: "bakau",
        kataEjaan: "ba.kau",
        kataSahu: "bakau",
        labelKata: "n",
        contohPenggunaan:
            "ayah pergi menebang -- di hutan baba tagi tawel bakau toma guda",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "bahu",
        kataEjaan: "ba.hu",
        kataSahu: "anibeleas",
        labelKata: "n",
        contohPenggunaan:
            "mengapa -- kamu bengkak? i sa`ol anibeleas i robos?;",
        isBookmarked: 0,
        kataImbuhan: [
          "ba.hu-mem.ba.hu"
        ],
        kataImbuhanIndonesia: [
          "bahu-membahu"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "maurion"
        ],
        contohPenggunaanImbuhan: [
          "warga Taraudu saling ~ membangun rumah adat ngoa gam Tarudu maurion simomi sasadu"
        ]),
    Kata(
        kataIndonesia: "bagaimana",
        kataEjaan: "ba.gai.ma.na",
        kataSahu: "bagaimana",
        labelKata: "pron",
        contohPenggunaan:
            "-- kabar ibu di Jailolo kabari oru meme toma Jaidolo ",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "baik",
        kataEjaan: "ba.ik",
        kataSahu: "mala",
        labelKata: "a",
        contohPenggunaan: "-- hati akal mala;",
        isBookmarked: 0,
        kataImbuhan: [
          "ba.ik-ba.ik",
          "ber.ba.ik",
          "mem.ba.ik",
          "ke.ba.ik.an",
          "ter.ba.ik",
          "se.ba.ik.nya"
        ],
        kataImbuhanIndonesia: [
          "baik-baik",
          "berbaik",
          "membaik",
          "kebaikan",
          "terbaik",
          "sebaiknya"
        ],
        labelKataImbuhan: [
          "n",
          "v",
          "v",
          "n",
          "a",
          "adv"
        ],
        kataSahuImbuhan: [
          "aalala",
          "malala",
          "rolala",
          "malala",
          "malala",
          "maugasalala"
        ],
        contohPenggunaanImbuhan: [
          "~ di negeri orang aalala rengowa mangagam",
          "saya sudah ~ hati dengan dia (L) ngoe riaka  malala rei unang (L)",
          "kondisi dia (L) sudah ~ unang (L) rolala dua",
          "~ seseorang akan di balas oleh Tuhan ngana  niakal malala majou a balas",
          "kamu harus buat yang ~ kepada keluarga ngana  balasu noa`a oria`a malala",
          "~ kita berbaik hati dengan tetangga maharus ngene maugasalala toma wala seba"
        ]),
    Kata(
        kataIndonesia: "bajak",
        kataEjaan: "ba.jak",
        kataSahu: "pajeko",
        labelKata: "n",
        contohPenggunaan: "ayah membuat -- baba a`a pajeko susungi",
        isBookmarked: 0,
        kataImbuhan: ["mem.ba.jak"],
        kataImbuhanIndonesia: ["membajak"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["pajeko"],
        contohPenggunaanImbuhan: ["kakek ~ sawah tete pajeko guda"]),
    Kata(
        kataIndonesia: "¹bakar",
        kataEjaan: "¹ba.kar",
        kataSahu: "osum",
        labelKata: "v",
        contohPenggunaan: "ayah -- ikan baba osum nyawo;",
        isBookmarked: 0,
        kataImbuhan: ["mem.ba.kar"],
        kataImbuhanIndonesia: ["membakar"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["moosum"],
        contohPenggunaanImbuhan: ["ibu ~ kue meme moosum mamamu"]),
    Kata(
        kataIndonesia: "²bakar",
        kataEjaan: "²ba.kar",
        kataSahu: "tau`u",
        labelKata: "v",
        contohPenggunaan: "-- kayu tau`u ate;",
        isBookmarked: 0,
        kataImbuhan: [
          "mem.ba.kar",
          "pem.ba.kar.an",
          "pem.ba.kar",
          "di.ba.kar",
          "ter.ba.kar",
          "ke.ba.kar.an"
        ],
        kataImbuhanIndonesia: [
          "membakar",
          "pembakaran",
          "pembakar",
          "dibakar",
          "terbakar",
          "kebakaran"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n",
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "ota`u",
          "tau`u",
          "sitau`u",
          "yatau`u",
          " irou`u",
          " iro`u"
        ],
        contohPenggunaanImbuhan: [
          "kakek ~ sampah di pekarangan rumah teteota`u jeromot tomawala masoang",
          "acara ~ api unggun lolomu tau`u unggul",
          "kamu bertugas sebagai ~ api unggun ngana animunara sitau`u unggul",
          "kenapa buku saya dibakar? iaya sa`ol ari buku w wowa yatau`u?",
          "kebun tetangga saya ludes terbakar woi ari walaseban maguda irou`u",
          "pagi tadi ada  kebakaran di hutan Jailolo yange daimi`a iro`u tomabangan Jaidolo "
        ]),
    Kata(
        kataIndonesia: "balik",
        kataEjaan: "ba.lik",
        kataSahu: "ma`adi",
        labelKata: "n",
        contohPenggunaan:
            "hari Senin mereka -- ke Kantor Camat Sahu Senin mawanger anang ma`adi toma Kantor Kecamatan Sahu;",
        isBookmarked: 0,
        kataTurunan: [
          "belakang",
          "kiri",
          "kanan",
          "nama"
        ],
        terjemahanTurunan: [
          "wako dudu",
          "wako kobali",
          "wako koweda",
          "singali lomang"
        ],
        kataImbuhan: [
          "ber.ba.lik",
          "ter.ba.lik"
        ],
        kataImbuhanIndonesia: [
          "berbalik",
          "terbalik"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "madibo",
          "madibo"
        ],
        contohPenggunaanImbuhan: [
          "jangan kamu ~ hati ke orang lain ngana ni ani aka madibo awa rengowa manga",
          "mobil ~ oto madibo"
        ]),
    Kata(
      kataIndonesia: "balai",
      kataEjaan: "ba.lai",
      kataSahu: "balai",
      labelKata: "n",
      contohPenggunaan:
          "warga berkumpul di -- Desa Taraudu Gam Taraudu mamnusia malomu Balai Desa Taraudu",
      isBookmarked: 0,
      kataTurunan: ["desa"],
      terjemahanTurunan: ["balai desa"],
    ),
    Kata(
        kataIndonesia: "balai-balai",
        kataEjaan: "ba.lai-ba.lai",
        kataSahu: "bisa-bisa",
        labelKata: "n",
        contohPenggunaan:
            "anak-anak bermain di -- wolo-wolo bisa-bisa toma ngomas mangi`i",
        isBookmarked: 0),
    Kata(
      kataIndonesia: "bantal",
      kataEjaan: "ban.tal",
      kataSahu: "nora",
      labelKata: "n",
      contohPenggunaan: "kakak membuka sarung -- ior ngoi`i nora masarung",
      isBookmarked: 0,
      kataTurunan: ["guling", "kepala"],
      terjemahanTurunan: ["nora gololo", "a nora sa`e"],
    ),
    Kata(
        kataIndonesia: "banyak",
        kataEjaan: "ba.nyak",
        kataSahu: "lairepe",
        labelKata: "a",
        contohPenggunaan:
            "hari ini saya -- pekerjaan wanger nange ne ngoirimunara lairepe",
        isBookmarked: 0,
        kataImbuhan: [
          "ba.nyak-ba.nyak",
          "ter.ba.nyak",
          "ke.ba.nyak.an",
          "se.ba.nyak-ba.nyak.nya"
        ],
        kataImbuhanIndonesia: [
          "banyak-banyak",
          "terbanyak",
          "kebanyakan",
          "sebanyak-banyaknya"
        ],
        labelKataImbuhan: [
          "a",
          "a",
          "n",
          "num"
        ],
        kataSahuImbuhan: [
          "repe-repe",
          "marepe",
          "lairepe",
          "sirepe-repe"
        ],
        contohPenggunaanImbuhan: [
          "~ bersyukur kepada Tuhan pula`a muras mala repe-repe re Majo",
          "siapa yang mendapat suara ~, dia yang menang aguna ga`asanga idi marepe, unangge asanga",
          "~ uang pipis lairepe",
          "memberi sebanyak-banyaknya bububula ge sirepe-repe i`a"
        ]),
    Kata(
        kataIndonesia: "baru",
        kataEjaan: "ba.ru",
        kataSahu: "sungi",
        labelKata: "a",
        contohPenggunaan:
            "ibu membeli adik baju -- meme mo tibo ngongodu ai (L) baju sungi",
        isBookmarked: 0,
        kataImbuhan: [
          "ba.ru-ba.ru ini",
          "ter.baru"
        ],
        kataImbuhanIndonesia: [
          "baru-baru ini",
          "terbaru"
        ],
        labelKataImbuhan: [
          "adv",
          "a"
        ],
        kataSahuImbuhan: [
          "waro angene",
          "susungi"
        ],
        contohPenggunaanImbuhan: [
          "~ dia (L) pergi ke Jailolo waro angene unang (L) utagi toma Jaidolo",
          "kabar ~ Desa Taraudu ‘habari susungi Gam Taraudu"
        ]),
    Kata(
        kataIndonesia: "basah",
        kataEjaan: "ba.sah",
        kataSahu: "iyobos",
        labelKata: "a",
        contohPenggunaan:
            "baju dia (L) -- kuyub baju unang (L) iyobos tege-tege",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.ba.sah-ba.sah",
          "ke.ba.sah.an",
          "mem.ba.sahi, mem.ba.sah.kan"
        ],
        kataImbuhanIndonesia: [
          "berbasah-basah",
          "kebasahan",
          "membasahi, membasahkan"
        ],
        labelKataImbuhan: [
          "a",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "mimaobos-obos",
          "iyoboso",
          "siyobos"
        ],
        contohPenggunaanImbuhan: [
          "siang tadi kami ~ di pantai Loloda ‘wanger nange mimaobos-obos toma Loloda mangangolot maudu’",
          "rambut saya ~ air laut ari baju iyoboso banyo wolot",
          "~ wajah dengan air garam siyobos aribion ribanyo kae"
        ]),
    Kata(
        kataIndonesia: "batu",
        kataEjaan: "ba.tu",
        kataSahu: "ma`di",
        labelKata: "n",
        contohPenggunaan:
            "adik menumpuk batu di tepi sungai ngongodu lom situbu ma`ditoma ngalar ma`udu;",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.ba.tu",
          "ber.ba.tu.an",
          "ber.ba.tu-ba.tu"
        ],
        kataImbuhanIndonesia: [
          "berbatu",
          "berbatuan",
          "berbatu-batu"
        ],
        labelKataImbuhan: [
          "v",
          "a",
          "num"
        ],
        kataSahuImbuhan: [
          "ma`di",
          "ima`di",
          "remamadi-madi"
        ],
        contohPenggunaanImbuhan: [
          "halaman rumah kami sangat ~ ‘wala masoan ma`di  lairepe’ ",
          "jalan raya Dodinga ~ ngom toma Dodinga mangangolou ima`di mailerepe",
          "halaman Kantor Desa Loci ~  Loci lama kantor Masoan remamadi-madi"
        ]),
    Kata(
        kataIndonesia: "batuk",
        kataEjaan: "ba.tuk",
        kataSahu: "diit",
        labelKata: "n",
        contohPenggunaan: "kakek saya -- ari tete diit",
        isBookmarked: 0,
        kataTurunan: [
          "darah",
          "kecil",
          "kering"
        ],
        terjemahanTurunan: [
          "diit ngaun",
          "diit",
          "diit dudung"
        ],
        kataImbuhan: [
          "ba.tuk-ba.tuk",
          "ber.ba.tuk",
          "ter.ba.tuk-ba.tuk"
        ],
        kataImbuhanIndonesia: [
          "batuk-batuk",
          "berbatuk",
          "terbatuk-batuk"
        ],
        labelKataImbuhan: [
          "n",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "didi-iit",
          "odiit",
          "odidi-iit"
        ],
        contohPenggunaanImbuhan: [
          "dia itu ~ unang (L) ge o didi-iit",
          "anak itu ~ ngoa ge odiit",
          "sudah dua hari kakek ~ riwange idi tete odidi-iit"
        ]),
    Kata(
        kataIndonesia: "bawa, membawa",
        kataEjaan: "ba.wa, mem.ba.wa",
        kataSahu: "gasa",
        labelKata: "v",
        contohPenggunaan: "~ bekal di kebun gasa ngongorom tomaguda",
        isBookmarked: 0,
        kataImbuhan: [
          "pem.ba.wa.an"
        ],
        kataImbuhanIndonesia: [
          "pembawaan"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "bugasa"
        ],
        contohPenggunaanImbuhan: [
          "~ sangat bagus dengan tetangga seri`i bugasa rous masala re wala seban"
        ]),
    Kata(
        kataIndonesia: "bawah",
        kataEjaan: "ba.wah",
        kataSahu: "maa`du",
        labelKata: "n",
        contohPenggunaan:
            "ibu menyimpan rambutan di -- lemari meme mogogon rambutan toma lamari maa`du;",
        isBookmarked: 0,
        kataImbuhan: [
          "ba.wah.an",
          "di ba.wah",
          "ter.ba.wah"
        ],
        kataImbuhanIndonesia: [
          "bawahan",
          "di bawah",
          "terbawah"
        ],
        labelKataImbuhan: [
          "n",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "tomaadu",
          "maa`du",
          "tomaadu"
        ],
        contohPenggunaanImbuhan: [
          "kita sebagai bawahan harus mengikuti perintah atasan ngoi ngowa tomaadu maharus tomete arisae maparenta",
          "mereka duduk ~ pohon durian anang adi tegol toma durian maa`du",
          "rumah saya  paling ~ ngoi riwara tomaadu madutu"
        ]),
    Kata(
      kataIndonesia: "bawang",
      kataEjaan: "ba.wang",
      kataSahu: "bawang",
      labelKata: "n",
      contohPenggunaan: "kakak mengupas -- iyor mati`i bawang",
      isBookmarked: 0,
      kataTurunan: ["merah", "putih"],
      terjemahanTurunan: ["bawang kolil", "bawang bu`udo"],
    ),
    Kata(
        kataIndonesia: "bebas¹",
        kataEjaan: "be.bas¹ /bébas/",
        kataSahu: "singado",
        labelKata: "a",
        contohPenggunaan:
            "setiap orang -- memberi pendapat nyengarmomoi singado ninga maksudu",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "bebas²",
        kataEjaan: "be.bas² /bébas/",
        kataSahu: "bebas",
        labelKata: "a",
        contohPenggunaan: "bergerak bebas siasino",
        isBookmarked: 0,
        kataImbuhan: [
          "ter.be.bas /terbébas/",
          "ke.be.ba.san /kebébasan/",
          "mem.be.bas.kan /membébaskan/"
        ],
        kataImbuhanIndonesia: [
          "terbebas",
          "kebebasan",
          "membebaskan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "obebas",
          "sibebas",
          "sibebas"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ dari hukuman mati nguna (P) obebas toma hukuman seneng",
          "~ berpolitik sibebas toma politik",
          "~ diri dari ikatan sibebas diri toma bibinyi`u"
        ]),
    Kata(
        kataIndonesia: "belah",
        kataEjaan: "be.lah",
        kataSahu: "suka",
        labelKata: "v",
        contohPenggunaan: "kelapa muda suka wagel manganyi`i",
        isBookmarked: 0,
        kataImbuhan: [
          "be.la.han",
          "ber.be.lah",
          "mem.be.lah",
          "ter.be.lah"
        ],
        kataImbuhanIndonesia: [
          "belahan",
          "berbelah",
          "membelah",
          "terbelah"
        ],
        labelKataImbuhan: [
          "n",
          "n",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "mabela",
          "i isuka",
          "tosuka",
          "isuka"
        ],
        contohPenggunaanImbuhan: [
          "belahan bambu runcing tonga mabela",
          "berbelah dua isuka kaci didi",
          "ayah membelah durian baba tosuka durian",
          "dinding rumahnya ~ dua wala mageglo isuka"
        ]),
    Kata(
      kataIndonesia: "belek",
      kataEjaan: "be.lek",
      kataSahu: "bleki",
      labelKata: "n",
      contohPenggunaan: "ibu menyusun -- meme sidiyahi bleki",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "belibis",
      kataEjaan: "be.li.bis",
      kataSahu: "masewes",
      labelKata: "n",
      contohPenggunaan:
          "teman saya menjual -- ngori ari dagi lom wu`un masewes",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "belimbing",
      kataEjaan: "be.lim.bing",
      kataSahu: "galimbing",
      labelKata: "n",
      contohPenggunaan:
          "buah -- berhaburan di tanah galimbing di arare toma tana`a;",
      isBookmarked: 0,
      kataTurunan: ["wuluh"],
      terjemahanTurunan: ["galimbing maceka"],
    ),
    Kata(
      kataIndonesia: "beliung",
      kataEjaan: "be.li.ung",
      kataSahu: "tamaun",
      labelKata: "n",
      contohPenggunaan: "kakek membuat -- tete a`a tamaun",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "belum",
        kataEjaan: "be.lum",
        kataSahu: "nyang",
        labelKata: "adv",
        contohPenggunaan:
            "dia (L) -- mengabari saya ngunang sihabari nyang rangoi; kami -- tiba di Jaidolo ngomi misapol nyang toma te Jaidolo;",
        isBookmarked: 0,
        kataImbuhan: [
          "se.be.lum",
          "be.lum-be.lum"
        ],
        kataImbuhanIndonesia: [
          "sebelum",
          "belum-belum"
        ],
        labelKataImbuhan: [
          "adv",
          "adv"
        ],
        kataSahuImbuhan: [
          "nyang",
          "nyang"
        ],
        contohPenggunaanImbuhan: [
          "nya saya  telah menelepon mereka nyang muju ngoi to telpon anang mereka; sarapan dulu ~ ke kebun mawanyin si nyang muju tagi buda",
          "kenapa dia ~ tiba di Jailolo? iya sa`lo unang sapol nyang Jaidolo?"
        ]),
    Kata(
      kataIndonesia: "beluntas",
      kataEjaan: "be.lun.tas",
      kataSahu: "belontas",
      labelKata: "n",
      contohPenggunaan:
          "ibu menanam  -- di kebun meme mosoan belontas toma guda",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "belut",
      kataEjaan: "be.lut",
      kataSahu: "sogili",
      labelKata: "n",
      contohPenggunaan: "ayah menangkap -- di sungai aba cako sogili tumangala",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "benang",
      kataEjaan: "be.nang",
      kataSahu: "lawe",
      labelKata: "n",
      contohPenggunaan: " -- terputus lawe ri tola`a;",
      isBookmarked: 0,
      kataTurunan: ["jahit", "tenun"],
    ),
    Kata(
      kataIndonesia: "benar",
      kataEjaan: "be.nar",
      kataSahu: "tero",
      labelKata: "a",
      contohPenggunaan: "sangat -- ucapan kamu tero masala ga`a ngana nowaje",
      isBookmarked: 0,
      kataImbuhan: ["be.nar-be.nar", "ke.be.nar.an", "se.be.nar.nya"],
      labelKataImbuhan: ["a", "n", "adv"],
      kataSahuImbuhan: ["mode-mode", "gatero", "mode"],
      contohPenggunaanImbuhan: [
        "kamu ini mode-mode ngana ne",
        "akan terungkap oria gatero iwaiti",
        " saya yang salah mode ngoi torapu"
      ],
    ),
    Kata(
      kataIndonesia: "bengkak",
      kataEjaan: "beng.kak",
      kataSahu: "robos",
      labelKata: "a",
      contohPenggunaan: "kaki saya  -- ari rou i robos",
      isBookmarked: 0,
      kataImbuhan: ["mem.beng.kak", "pem.beng.kak.an"],
      labelKataImbuhan: ["v", "n"],
      kataSahuImbuhan: ["irobos", "irobos"],
      contohPenggunaanImbuhan: [
        "pipinya bobongol ge irobos",
        "terjadi di perut adi irobos toma pool"
      ],
    ),
    Kata(
      kataIndonesia: "bengek",
      kataEjaan: "be.ngek",
      kataSahu: "ngagarpui",
      labelKata: "a",
      contohPenggunaan: "teman saya -- ari dagi lom ai ngagarpui",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "benih",
      kataEjaan: "be.nih",
      kataSahu: "rokonyo",
      labelKata: "a",
      contohPenggunaan: "saya menjual -- bayam ngoi tobu`un baya rokonyo",
      isBookmarked: 0,
      kataImbuhan: ["ber.be.nih"],
      kataImbuhanIndonesia: ["berbenih"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["rikonyo"],
      contohPenggunaanImbuhan: ["bayam baya rikonyo"],
    ),
    Kata(
      kataIndonesia: "berak",
      kataEjaan: "be.rak",
      kataSahu: "nokio`o",
      labelKata: "v",
      contohPenggunaan:
          "mengapa kamu -- di celana? sa`ol ngana nokio`o toma calana?;",
      isBookmarked: 0,
      kataImbuhan: ["ter.be.rak-be.rak"],
      kataImbuhanIndonesia: ["terberak-berak"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["noki`o"],
      contohPenggunaanImbuhan: [
        " pagi tadi dia (L) ~ di tempat tidur nange dainia unang (L) nokio`o toma doderu"
      ],
    ),
    Kata(
      kataIndonesia: "berani",
      kataEjaan: "be.ra.ni",
      kataSahu: "ocapanau",
      labelKata: "a",
      contohPenggunaan:
          " dia (L) itu hanya  -- di kandangnya unang (L) ge ocapanau`u bai tae tarunga masireten;",
      isBookmarked: 0,
      kataImbuhan: [
        "be.ra.ni-be.ra.ni",
        "mem.be.ra.ni.kan",
        "ke.be.ra.ni.an",
        "pem.be.ra.ni"
      ],
      kataImbuhanIndonesia: [
        "berani-berani",
        "memberanikan",
        "keberanian",
        "pemberani"
      ],
      labelKataImbuhan: ["a", "v", "v", "n"],
      kataSahuImbuhan: ["ocapanau-ocapanau`u", "osinau", "manau`u", "lainau`u"],
      contohPenggunaanImbuhan: [
        "~ kamu memukul anak saya ocapanau-ocapanau`u masalah noca`o ngoi ringoa`a",
        "dia (L) ~ diri naik ke panggung unang (L) osinau ai akal tere toma panggung",
        "saya salut dengan ~ dia (P) ngoi tosuba nguna (P) aiaka manau`u",
        "dia (P) adalah anak ~ nguna (P) mage ngoa ai aka aka lainau`u"
      ],
    ),
    Kata(
      kataIndonesia: "berapa",
      kataEjaan: "be.ra.pa",
      kataSahu: "romduo",
      labelKata: "pron",
      contohPenggunaan: "-- usia bapak? aniumu musung nyagi romduo?",
      isBookmarked: 0,
      kataImbuhan: ["be.be.ra.pa", "se.be.ra.pa"],
      kataImbuhanIndonesia: ["beberapa", "seberapa"],
      labelKataImbuhan: ["num", "num"],
      kataSahuImbuhan: ["romdou", "merepe"],
      contohPenggunaanImbuhan: [
        "~ hari ini hujan di Desa Gamkonora toma wanger romdou nyiange besa toma Gamkonara’",
        "~ paham kamu tentang sejarah desa Taraudu nyinga mowaro merepe saol doa ooru"
      ],
    ),
    Kata(
      kataIndonesia: "beras",
      kataEjaan: "be.ras",
      kataSahu: " e`a",
      labelKata: "n",
      contohPenggunaan: "ibu mencuci -- meme soso`u e`a;",
      isBookmarked: 0,
      kataTurunan: ["merah", "tumbuk"],
      terjemahanTurunan: ["e`a kolil", "e`a tutu"],
    ),
    Kata(
      kataIndonesia: "berat",
      kataEjaan: "be.rat",
      kataSahu: "duboso",
      labelKata: "a",
      contohPenggunaan: "jangan kamu mengangkat -- nitede oria ma duboso awa",
      isBookmarked: 0,
      kataTurunan: ["hati akal", "mata"],
      terjemahanTurunan: ["madubuso", " la`o dubuso"],
      kataImbuhan: ["ber.be.rat"],
      kataImbuhanIndonesia: ["berberat"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["dobusu"],
      contohPenggunaanImbuhan: [
        "~ hati menerima tamu ari akal dobusu todawong ior dongodu"
      ],
    ),
    Kata(
      kataIndonesia: "berenang",
      kataEjaan: "be.re.nang",
      kataSahu: "motobong",
      labelKata: "v",
      contohPenggunaan:
          "mereka  -- di laut Susupu anang adi matobong toma ngolot dongi ma",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "beri",
      kataEjaan: "be.ri",
      kataSahu: "pula`a",
      labelKata: "v",
      contohPenggunaan: "-- dia uang seribu rupiah pula`a una pipis calamoi",
      isBookmarked: 0,
      kataImbuhan: ["mem.be.ri", "mem.be.ri.kan", "pem.be.ri", "pem.be.ri.an"],
      kataImbuhanIndonesia: ["memberi", "memberikan", "pemberi", "pemberian"],
      labelKataImbuhan: ["v", "v", "n", "n"],
      kataSahuImbuhan: ["tupula", "supula", "adipula", "mangabula`a"],
      contohPenggunaanImbuhan: [
        "ibu ~ baju pada adik meme tupula baju toma nongodu",
        "~ nasihat kepada jamaat supula burerong  toma jamaat",
        "~ sumbangan dari Ternate adipula bubula dai Ternate Isa",
        "~ orang harus dihargai ngoa mangabula`a balasu wajaga"
      ],
    ),
    Kata(
      kataIndonesia: "beringin",
      kataEjaan: "be.ri.ngin",
      kataSahu: "ngomin",
      labelKata: "n",
      contohPenggunaan: "ayah menebang pohon  -- baba tawel ngomin malese",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "bersih",
      kataEjaan: "ber.sih",
      kataSahu: "iofi",
      labelKata: "a",
      contohPenggunaan:
          "lantai rumah kamu sangat -- ani wala mamesele lai ofi;",
      isBookmarked: 0,
      kataImbuhan: ["mem.ber.sih.kan", "pem.ber.sih", "ke.ber.sih.an"],
      kataImbuhanIndonesia: ["membersihkan", "pembersih", "kebersihan"],
      labelKataImbuhan: ["v", "n", "n"],
      kataSahuImbuhan: ["sigofi", "siofi", "siofi"],
      contohPenggunaanImbuhan: [
        "ibu ~ halaman rumah meme siofi wala masoan; ~ lantai sigofi mesel",
        "obat ~ lantai toilet sou siofi mesele dudum",
        "warga Sahu harus menjaga ~ pada saat ibadah di Gereja ngoa Sahu balasu jagasiofi waktu molomu toma gareja; menjaga ~ lingkungan wojaga nangasoanne siofi"
      ],
    ),
    Kata(
      kataIndonesia: "besan",
      kataEjaan: "be.san",
      kataSahu: "diyawo",
      labelKata: "n",
      contohPenggunaan:
          "-- saya pergi ke Ternate ngoi ari diawo tagi toma Ternate;",
      isBookmarked: 0,
      kataImbuhan: ["ber.be.san"],
      kataImbuhanIndonesia: ["berbesan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["giadiya`o"],
      contohPenggunaanImbuhan: [
        "ibu tidak setuju saya ~ dengannya ‘ai meme setuju ua mau giadiya`o’"
      ],
    ),
    Kata(
      kataIndonesia: "besar",
      kataEjaan: "be.sar",
      kataSahu: "lamo`o",
      labelKata: "a",
      contohPenggunaan: "badannya -- lese lai lamo`o;",
      isBookmarked: 0,
      kataTurunan: ["hati", "lengan", "mulut", "kepala", "perut"],
      terjemahanTurunan: [
        "aka lamo`o",
        "giyam lamo`o",
        "madang lamo`o",
        "madang lamo`o",
        "pol lamo`o"
      ],
      kataImbuhan: [
        "ke.be.sar.an",
        "mem.be.sar ",
        "mem.be.sar-be.sar.kan",
        "se.be.sar",
        "ter.be.sar",
        "pem.be.sar"
      ],
      kataImbuhanIndonesia: [
        "kebesaran",
        "membesar ",
        "membesar-besarkan",
        "sebesar",
        "terbesar",
        "pembesar"
      ],
      labelKataImbuhan: ["n", "v", "v", "n", "a", "n"],
      kataSahuImbuhan: [
        "ilamo`o",
        "lamo`o",
        "sialamo`o",
        "malamo",
        "lailamo`o",
        " lailamo`o"
      ],
      contohPenggunaanImbuhan: [
        "celana saya ~ ari calana ilamo`o;",
        "badan semakin ~ ni lese idogo lamo`o",
        "jangan ~ masalah nyinga sala fidi sialamo`o awa",
        "~ apa masalah kamu malamo sa`lo nyinga salah pidi",
        "pohon cengkih ~ di Ternate cenge marese lailamo`o toma Ternate",
        "alat ~ kaca alat kaca lailamo`o"
      ],
    ),
    Kata(
      kataIndonesia: "besi",
      kataEjaan: "be.si",
      kataSahu: "besi",
      labelKata: "n",
      contohPenggunaan: "berapa harga jual besi? maijan sao adiwun besi?",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "besok",
      kataEjaan: "be.sok",
      kataSahu: "dadaeni",
      labelKata: "n",
      contohPenggunaan:
          "-- kerja bakti di lapangan bola dadaeni disi toma lapangan bola;",
      isBookmarked: 0,
      kataTurunan: ["lusa"],
      terjemahanTurunan: ["dain diding"],
    ),
    Kata(
      kataIndonesia: "betis",
      kataEjaan: "be.tis",
      kataSahu: "mararo",
      labelKata: "n",
      contohPenggunaan: "-- anak itu sakit ngolo ge mararo sidi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "biawak",
      kataEjaan: "bi.a.wak",
      kataSahu: "berang",
      labelKata: "n",
      contohPenggunaan:
          "kemarin sore saya menangkap  -- di pohon kenariaunyigo ngoi tocako berang tomanyial malese",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "bibit",
      kataEjaan: "bi.bit",
      kataSahu: "mangoa",
      labelKata: "n",
      contohPenggunaan: "-- durian nguri wala seba wu`ul durian mangoa;",
      isBookmarked: 0,
      kataTurunan: ["unggul"],
      terjemahanTurunan: ["mangoa marous i`a"],
    ),
    Kata(
      kataIndonesia: "bibir ",
      kataEjaan: "bi.bir ",
      kataSahu: "udumabetu`u",
      labelKata: "n",
      contohPenggunaan:
          "-- pecah-pecah karena panas dalam udumabetu`u palete sebabu sau tomadara",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "bijak",
      kataEjaan: "bi.jak",
      kataSahu: "banari",
      labelKata: "a",
      contohPenggunaan:
          "kamu harus menjadi orang -- ngini balaso idadi ngowa banari",
      isBookmarked: 0,
      kataImbuhan: ["bi.jak.sa.na"],
      kataImbuhanIndonesia: ["bijaksana"],
      labelKataImbuhan: ["n"],
      kataSahuImbuhan: ["ibnari"],
      contohPenggunaanImbuhan: [
        "harus ~ dalam mengambil keputusan ngini balasu a`uria ibnari"
      ],
    ),
    Kata(
      kataIndonesia: "binatang",
      kataEjaan: "bi.na.tang",
      kataSahu: "haiwan",
      labelKata: "n",
      contohPenggunaan: "banyak -- di hutan haiwan marepe toma bangan",
      isBookmarked: 0,
      kataImbuhan: ["ke.bi.na.tang.an"],
      kataImbuhanIndonesia: ["kebinatangan"],
      labelKataImbuhan: ["n"],
      kataSahuImbuhan: ["sa`ohaiwan"],
      contohPenggunaanImbuhan: [
        "dia itu mempunyai sifat ~ enang ge masininga matero sa`ohaiwan"
      ],
    ),
    Kata(
      kataIndonesia: "bintang",
      kataEjaan: "bin.tang",
      kataSahu: "mumudung",
      labelKata: "n",
      contohPenggunaan:
          "malam ini -- sangat bersinar utunangi ne mumudung macahaya;",
      isBookmarked: 0,
      kataTurunan: ["tujuh", "jatuh"],
      terjemahanTurunan: ["mudung tumding", "(meteor) mudung eta"],
    ),
    Kata(
      kataIndonesia: "biru",
      kataEjaan: "bi.ru",
      kataSahu: "biru",
      labelKata: "a",
      contohPenggunaan:
          "dia (L) memakai baju berwarna biru unang (L) pake baju biru;",
      isBookmarked: 0,
      kataImbuhan: ["mem.bi.ru"],
      kataImbuhanIndonesia: ["membiru"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["ma`dur"],
      contohPenggunaanImbuhan: ["badannya ~ lese ma`dur"],
    ),
    Kata(
      kataIndonesia: "bisik",
      kataEjaan: "bi.sik",
      kataSahu: "nojujudu",
      labelKata: "n",
      contohPenggunaan: "bisik apa? oru nojujudu;",
      isBookmarked: 0,
      kataImbuhan: ["ber.bi.sik", "ber.bi.sik-bi.sik", "bi.si.kan"],
      kataImbuhanIndonesia: ["berbisik", "berbisik-bisik", "bisikan"],
      labelKataImbuhan: ["v", "v", "n"],
      kataSahuImbuhan: ["jujudu", "nojujudu", "jujudu`u"],
      contohPenggunaanImbuhan: [
        "jangan ~ di telinga ibu jujudu awa rango meme mingau`u",
        "mengapa ~ ? iyasaol nojujudu?",
        "jangan pernah mendengar ~ orang lain ise nawa ngowa leledu manga jujudu`u"
      ],
    ),
    Kata(
        kataIndonesia: "bisu",
        kataEjaan: "bi.su",
        kataSahu: "mou",
        labelKata: 'a',
        contohPenggunaan: "anak itu -- ngoa ge mou",
        isBookmarked: 0),
    Kata(
      kataIndonesia: "bisul",
      kataEjaan: "bi.sul",
      kataSahu: "bu`u",
      labelKata: "n",
      contohPenggunaan: "-- saya pecah ngoi ri bu`u pici",
      isBookmarked: 0,
      kataImbuhan: ["ber.bi.sul", "mem.bi.sul"],
      kataImbuhanIndonesia: ["berbisul", "membisul"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["ibu`u", "ibu`u"],
      contohPenggunaanImbuhan: [
        "tangan saya ~ ngori ari giyam ibu`u",
        "kaki saya ~ ngoi ari ro`u ibu`u"
      ],
    ),
    Kata(
      kataIndonesia: "buah",
      kataEjaan: "bu.ah",
      kataSahu: "masowo`o",
      labelKata: "n",
      contohPenggunaan: " ayah mengumpul -- durian baba silom durian masowo`o;",
      isBookmarked: 0,
      kataTurunan: ["tangan", "bibir"],
      terjemahanTurunan: ["giyam manana`o", "idadi uduma betu`u"],
      kataImbuhan: ["ber.bu.ah"],
      kataImbuhanIndonesia: ["berbuah"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["risowo`o"],
      contohPenggunaanImbuhan: ["durian telah ~ durian risowo`o duaa"],
    ),
    Kata(
      kataIndonesia: "buai",
      kataEjaan: "bu.ai",
      kataSahu: "kolo",
      labelKata: "n",
      contohPenggunaan:
          "kepala saya ~ karena gelombang momoku singadol ari sa`e kolol",
      isBookmarked: 0,
      kataImbuhan: ["ter.bu.ai-bu.ai"],
      kataImbuhanIndonesia: ["terbuai-buai"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["kolo"],
      contohPenggunaanImbuhan: [
        "kepala saya ~ karena gelombang momoku singadol ari sa`e kolol"
      ],
    ),
    Kata(
      kataIndonesia: "buang",
      kataEjaan: "bu.ang",
      kataSahu: "uupa`a",
      labelKata: "v",
      contohPenggunaan:
          "--sampah pada tempatnya ‘uupaa jaremot toma eenang mangi`i;",
      isBookmarked: 0,
      kataTurunan: ["air besar", "air kecil", "sirih"],
      terjemahanTurunan: [
        "besar paal banyo lamo`o",
        "r kecil paal banyo mangoal",
        "siobi mo`u"
      ],
      kataImbuhan: [
        "mem.bu.ang",
        "ter.bu.ang",
        "ter.bu.ang-bu.ang",
        "bu.ang.an",
        "pem.bu.ang.an"
      ],
      kataImbuhanIndonesia: [
        "membuang",
        "terbuang",
        "terbuang-buang",
        "buangan",
        "pembuangan"
      ],
      labelKataImbuhan: ["v", "v", "v", "n", "n"],
      kataSahuImbuhan: ["uupa`a", " ipaal", " ipa-pa", "upaa", "sipaal"],
      contohPenggunaanImbuhan: [
        "ayah ~ jaring di laut baba uupa`a jala toma ngolot",
        "air ~ di lantai banyo ipaal toma mesel",
        "beras ~ di ladang e`a ipa-pal toma tanah",
        "anak ~ ngoa upaa",
        "~ limbah padi sipaal e`a maraos"
      ],
    ),
    Kata(
      kataIndonesia: "buaya",
      kataEjaan: "bu.a.ya",
      kataSahu: "saman",
      labelKata: "n",
      contohPenggunaan:
          "--terdampar di tepi laut Susupu ‘samam Isupu toma ngolot maudu dai donge mare`u;",
      isBookmarked: 0,
      kataTurunan: ["darat"],
      terjemahanTurunan: ["ngunang ge matero saol samong;"],
    ),
    Kata(
      kataIndonesia: "bubung",
      kataEjaan: "bu.bung",
      kataSahu: "walamawank",
      labelKata: "a",
      contohPenggunaan: "-- kami bocor ngomi minga walamawanak ritege",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "bubu",
      kataEjaan: "bu.bu",
      kataSahu: "igin",
      labelKata: "n",
      contohPenggunaan: "ayah membuat -- baba a`a anag",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "bubur",
      kataEjaan: "bu.bur",
      kataSahu: "gugul",
      labelKata: "n",
      contohPenggunaan: "ibu memasak -- meme masiai gugul",
      isBookmarked: 0,
      kataTurunan: ["kacang ijo"],
      terjemahanTurunan: ["bubur tomelo"],
    ),
    Kata(
      kataIndonesia: "bujuk",
      kataEjaan: "bu.juk",
      kataSahu: "baja",
      labelKata: "n",
      contohPenggunaan: "-- kakek pergi ke pasar baja tete tagi toma butu",
      isBookmarked: 0,
      kataImbuhan: ["mem.bu.juk", "bu.ju.kan"],
      kataImbuhanIndonesia: ["membujuk", "bujukan"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["abaja", "bubaja"],
      contohPenggunaanImbuhan: [
        "siapa yang membujuk dia (L)? aguna ga`  abaja unang (L)?",
        "~nya berhasil bubaja riduang"
      ],
    ),
    Kata(
      kataIndonesia: "buka",
      kataEjaan: "bu.ka",
      kataSahu: "welang",
      labelKata: "v",
      contohPenggunaan: "tolong -- pintu kamar pahala welang kamar mangalam",
      isBookmarked: 0,
      kataImbuhan: [
        "mem.bu.ka",
        "mem.bu.ka",
        "ter.bu.ka",
        "pem.bu.ka",
        "pem.bu.ka.an",
        "ke.ter.bu.ka.an"
      ],
      kataImbuhanIndonesia: [
        "membuka",
        "membuka",
        "terbuka",
        "pembuka",
        "pembukaan",
        "keterbukaan"
      ],
      labelKataImbuhan: ["v", "v", "v", "n", "n", "n"],
      kataSahuImbuhan: [
        "nawelang",
        "ngo`i",
        " iwewelang",
        "siwoi`i",
        "siwelang",
        "wawaleng"
      ],
      contohPenggunaanImbuhan: [
        "kenapa kamu ~ hati ke orang lain? iya saol nawelang ani akal rengoa lelegu",
        "kakak ~ baju adik ior ngoi`i nongodu ai baju",
        "pintu kamar dia (L) terbuka unang (L) a kamar mangalam iwewelang",
        "dia (L) ~  jalan Jailolo unang (L) siwoi`i ngoom toma Jaidolo",
        "acara ~ adat Sahu siwelang laya adat Sahu",
        "harus ada ~ antara kita ‘balasu wawaleng nanga akal matengor matengo’"
      ],
    ),
    Kata(
      kataIndonesia: "bukit",
      kataEjaan: "bu.kit",
      kataSahu: "saukie",
      labelKata: "n",
      contohPenggunaan: "-- Ibu saukie Ibu",
      isBookmarked: 0,
      kataImbuhan: ["berbu.kit-bu.k", "mem.bu.kit"],
      kataImbuhanIndonesia: ["berbukit-buk", "membukit"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["saukie-kie", "ritutubu"],
      contohPenggunaanImbuhan: [
        "mereka harus menupuh jalan yang ~ ana balasu metengoom toma saukie-kie",
        "tumpukan barang di rumah  ~ tanah`ah ritutubu"
      ],
    ),
    Kata(
      kataIndonesia: "bulan",
      kataEjaan: "bu.lan",
      kataSahu: "ngara",
      labelKata: "n",
      contohPenggunaan:
          "-- depan ibu berulang tahun ngara tomabion meme ngusu tero;",
      isBookmarked: 0,
      kataTurunan: ["depan", "purnama", "sabit", "timbul", "tua"],
      terjemahanTurunan: [
        "ngara tomabion",
        "ngara lobor",
        "ngara kacimoi",
        "ngara wait",
        "ngara olona"
      ],
      kataImbuhan: ["ber.bu.lan-bu.lan"],
      kataImbuhanIndonesia: ["berbulan-bulan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["ngara-ngara"],
      contohPenggunaanImbuhan: [
        "adik saya sudah ~ pergi merantaungoi ridongodu rema ngara-ngara tagi pardidu "
      ],
    ),
    Kata(
      kataIndonesia: "bulu",
      kataEjaan: "bu.lu",
      kataSahu: "magogo",
      labelKata: "n",
      contohPenggunaan:
          "-- matanya sangat lentik la`omagonar lai rous giya magogo laikapiring",
      isBookmarked: 0,
      kataTurunan: ["mata", "ketiak", "hidung", "halus"],
      terjemahanTurunan: [
        " lao`magonar",
        "gu`du magogo",
        "g n ngunung magogo",
        "n gogo malaus"
      ],
      kataImbuhan: ["ber.bu.lu"],
      kataImbuhanIndonesia: ["berbulu"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["regogo"],
      contohPenggunaanImbuhan: [
        "wajah anak itu ~ ngoologe aidion roman regogo"
      ],
    ),
    Kata(
      kataIndonesia: "buluh",
      kataEjaan: "bu.luh",
      kataSahu: "am",
      labelKata: "n",
      contohPenggunaan:
          "ayah pergi mengabil -- di hutan baba toro am toma bangan;",
      isBookmarked: 0,
      kataImbuhan: ["pem.bu.luh"],
      kataImbuhanIndonesia: ["pembuluh"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["macin"],
      contohPenggunaanImbuhan: [" ~ darah ngaun macin ipu`i"],
    ),
    Kata(
      kataIndonesia: "bunga",
      kataEjaan: "bu.nga",
      kataSahu: "bungana",
      labelKata: "n",
      contohPenggunaan:
          "setiap pagi kakak menyiram -- dai-dai ni`a iyoro ojang bungana;",
      isBookmarked: 0,
      kataTurunan: ["kertas"],
      terjemahanTurunan: ["bungana kartas"],
      kataImbuhan: ["ber.bu.nga", "ber.bu.nga-bu.nga"],
      kataImbuhanIndonesia: ["berbunga", "berbunga-bunga"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["ribunga", "maroang-roang"],
      contohPenggunaanImbuhan: [
        "rambutan saya sudah ~ ari rambutan ribunga dua",
        "hatinya ~ akal maroangroang"
      ],
    ),
    Kata(
      kataIndonesia: "bu.nuh",
      kataEjaan: "bu.nuh",
      kataSahu: "sene",
      labelKata: "v",
      contohPenggunaan: "-- rusa di hutan sene manjanga toma bangan",
      isBookmarked: 0,
      kataImbuhan: [
        "mem.bu.nuh",
        "bu.nuh-bu.nuh.an",
        "pem.bu.nuh.an",
        "bu.nuh-bu.nuh"
      ],
      kataImbuhanIndonesia: [
        "membunuh",
        "bunuh-bunuhan",
        "pembunuhan",
        "bunuh-bunuh"
      ],
      labelKataImbuhan: ["v", "v", "n", "n"],
      kataSahuImbuhan: ["sisineng", "sisineng", "seneng", "n gesene-seneng"],
      contohPenggunaanImbuhan: [
        "ayah ~sapi baba sisineng sapi",
        "~ hewan di hutan sisineng haiwan toma bangan",
        "korban ~ telah tertangkap seneng woa risanga cako`o"
      ],
    ),
    Kata(
      kataIndonesia: "buru",
      kataEjaan: "buru",
      kataSahu: "capati",
      labelKata: "v",
      contohPenggunaan: "",
      isBookmarked: 0,
      kataImbuhan: ["ke.bu.ru", "ber.bu.ru", "bu.ru-bu.ru"],
      labelKataImbuhan: ["n", "v", "a"],
      kataSahuImbuhan: ["capati", "maduo", "cepati-cepati"],
      contohPenggunaanImbuhan: [
        " ~ kapal maudedel capati",
        " ~ rusa di hutan maduo manjanga toma bangan",
        " ~ kerumah teman cepati-cepati toma wala daginomo"
      ],
    ),
    Kata(
      kataIndonesia: "buruh",
      kataEjaan: "bu.ruh",
      kataSahu: "ngoasewa",
      labelKata: "n",
      contohPenggunaan:
          "-- Pelabuhan Jailolo ngowasewa toma Pelabuhan Jaidolo;",
      isBookmarked: 0,
      kataTurunan: ["tani", "harian"],
      terjemahanTurunan: ["ngawasewa guda", "ngawasewa wangemoi"],
    ),
    Kata(
      kataIndonesia: "burung",
      kataEjaan: "bu.rung",
      kataSahu: "namo",
      labelKata: "n",
      contohPenggunaan:
          "kakek pergi -- menangkap di hutan ete ocako namo toma bangan",
      isBookmarked: 0,
      kataTurunan: ["hantu", "kakatau putih", "kakatua ijo"],
      terjemahanTurunan: ["goro`o", "katala", "kowotol"],
    ),
    Kata(
      kataIndonesia: "buruk",
      kataEjaan: "bu.ruk",
      kataSahu: "majira",
      labelKata: "a",
      contohPenggunaan: "sifatnya -- sangat akal majira;",
      isBookmarked: 0,
      kataImbuhan: ["ber.bu.ruk", "ke.bu.ru.kan"],
      labelKataImbuhan: ["v", "n"],
      kataSahuImbuhan: ["nitajira", "mangajira"],
      contohPenggunaanImbuhan: [
        "jangan ~ sangka kepada teman awa nitajiri ngowa",
        " jangan menceritakan ~ orang lain cerita awa ngowa mangajira"
      ],
    ),
    Kata(
      kataIndonesia: "burut",
      kataEjaan: "bu.rut",
      kataSahu: "aigagleuci",
      labelKata: "n",
      contohPenggunaan: "anak itu -- mangoa ge aigagleuci",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "busuk",
      kataEjaan: "bu.suk",
      kataSahu: "macira",
      labelKata: "a",
      contohPenggunaan: "mangga -- guwae macira;",
      isBookmarked: 0,
      kataTurunan: ["hati"],
      terjemahanTurunan: ["akal majira"],
      kataImbuhan: ["ke.bu.su.kan", "mem.bu.suk"],
      kataImbuhanIndonesia: ["kebusukan", "membusuk"],
      labelKataImbuhan: ["n", "v"],
      kataSahuImbuhan: ["macira", "ricira"],
      contohPenggunaanImbuhan: [
        "~ akan terbongkar akal macira somoi`a iwaiti",
        "manggis itu sudah ~ bastang ge ricira ua"
      ],
    ),
    Kata(
      kataIndonesia: "busung",
      kataEjaan: "bu.sung",
      kataSahu: "ramas",
      labelKata: "n",
      contohPenggunaan: "-- dada ramas katel",
      isBookmarked: 0,
      kataImbuhan: ["mem.bu.sung", "mem.bu.sung.kan"],
      kataImbuhanIndonesia: ["membusung", "membusungkan"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["ramas", "sida-sida"],
      contohPenggunaanImbuhan: [
        "perutnya ~pool ramas",
        "-- dada tagi katel sida-sida"
      ],
    ),
    Kata(
      kataIndonesia: "busur",
      kataEjaan: "bu.sur",
      kataSahu: "ngami",
      labelKata: "n",
      contohPenggunaan: "adik membuat -- mongodu ngami",
      isBookmarked: 0,
      kataImbuhan: ["mem.bu.sur", "di.bu.sur"],
      kataImbuhanIndonesia: ["membusur", "dibusur"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["mangami", "yangmi"],
      contohPenggunaanImbuhan: [
        "ayah ~ rusa di hutan baba adi mangami toma bangan",
        "sapi kami ~ orang ngomi minga sapi ngoa`a yangmi"
      ],
    ),
    Kata(
      kataIndonesia: "busut",
      kataEjaan: "busut",
      kataSahu: "bifimangi'i",
      labelKata: "n",
      contohPenggunaan:
          "ayah membersihkan -- semut di sudut rumah baba siofi bifimangi`i tomawala mabu`ku",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "buta",
      kataEjaan: "bu.ta",
      kataSahu: "hafu",
      labelKata: "a",
      contohPenggunaan: "mata ayah -- baba ai`lao hafu;",
      isBookmarked: 0,
      kataTurunan: ["hati", "huruf", "warna"],
      terjemahanTurunan: ["akal hafu", "hafu huruf", "hafu waran"],
      kataImbuhan: ["mem.bu.ta.kan", "ke.bu.ta.an"],
      kataImbuhanIndonesia: ["membutakan", "kebutaan"],
      labelKataImbuhan: ["v", "n"],
      kataSahuImbuhan: ["sihafu", "hafu-hafu"],
      contohPenggunaanImbuhan: [
        "jangan ~ hati sihafu akal lawa; adik yang ~ mata saya nongodu ga sihafu ngoi rila`u",
        "mereka hidup di ~ anang adiahu tuma hafu-hafu madara"
      ],
    ),
    Kata(
      kataIndonesia: "buyung",
      kataEjaan: "bu.yung",
      kataSahu: "tempayan",
      labelKata: "n",
      contohPenggunaan: "-- nenek pecah tempayan nene isuka",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "bodoh",
      kataEjaan: "bo.doh",
      kataSahu: "haga",
      labelKata: "a",
      contohPenggunaan:
          "tidak baik menyebut orang -- rous suha nyiterong ngoa haga",
      isBookmarked: 0,
      kataImbuhan: ["ke.bo.doh.an"],
      kataImbuhanIndonesia: ["kebodohan"],
      labelKataImbuhan: ["n"],
      kataSahuImbuhan: ["mangahaga"],
      contohPenggunaanImbuhan: [
        "~ seseorang tidak perlu di umbar ngoa mangahaga nasiwai tawa"
      ],
    ),
    Kata(
      kataIndonesia: "bopong",
      kataEjaan: "bo.pong",
      kataSahu: "toti",
      labelKata: "v",
      contohPenggunaan: "ayah -- ibu baba toti meme",
      isBookmarked: 0,
      kataImbuhan: ["mem.bo.pong"],
      kataImbuhanIndonesia: ["membopong"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["notiti"],
      contohPenggunaanImbuhan: ["hati-hati ~ anak itu notiti noa lala ino"],
    ),
    Kata(
      kataIndonesia: "borok",
      kataEjaan: "bo.rok",
      kataSahu: "irobos",
      labelKata: "n",
      contohPenggunaan: "jari tangannya -- ari giyam mararaka irobos",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "boros",
      kataEjaan: "bo.ros",
      kataSahu: "sibudiga",
      labelKata: "a",
      contohPenggunaan: "tidak boleh -- awa sibudiga;",
      isBookmarked: 0,
      kataImbuhan: ["mem.bo.ros.kan", "pem.bo.ros.an"],
      kataImbuhanIndonesia: ["memboroskan", "pemborosan"],
      labelKataImbuhan: ["v", "n"],
      kataSahuImbuhan: ["sibudiga", "sibudaga"],
      contohPenggunaanImbuhan: [
        "adik ~ gajinya kepada teman-teman nongodu ai gaji sibudiga tai dagi lom",
        " ~ air sibudaga banyo"
      ],
    ),
    Kata(
      kataIndonesia: "botak",
      kataEjaan: "bo.tak",
      kataSahu: "peal",
      labelKata: "a",
      contohPenggunaan: "bapak itu kepalanya -- bapak ge aisa`e peal",
      isBookmarked: 0,
      kataImbuhan: ["mem.bo.taki", "mem.bo.tak"],
      kataImbuhanIndonesia: ["membotaki", "membotak"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["gaasipeal", "ipeal"],
      contohPenggunaanImbuhan: [
        "siapa yang ~  kepalamu? aguna gaasipeal aisa`e?",
        "kepalanya ~ aisa`e ipeal"
      ],
    ),
    //section c
    Kata(
      kataIndonesia: "cabai",
      kataEjaan: "ca.bai",
      kataSahu: "rica",
      labelKata: "n",
      contohPenggunaan: "ibu memetik -- meme mutu rica",
      isBookmarked: 0,
      kataTurunan: ["merah", "rawit"],
      terjemahanTurunan: ["rica malomo", "rica idis"],
    ),
    Kata(
      kataIndonesia: "cabang",
      kataEjaan: "ca.bang",
      kataSahu: " uumang",
      labelKata: "n",
      contohPenggunaan: "-- pohon pala gosora uumang",
      isBookmarked: 0,
      kataImbuhan: ["ber.ca.bang"],
      kataImbuhanIndonesia: ["bercabang"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["maumang"],
      contohPenggunaanImbuhan: [
        "pohon pala ~ dua gosora malese maumang romdidi"
      ],
    ),
    Kata(
      kataIndonesia: "cacing",
      kataEjaan: "ca.cing",
      kataSahu: "kulbati",
      labelKata: "n",
      contohPenggunaan: "banyak -- di rumah kulbati rerepe tomabala",
      isBookmarked: 0,
      kataTurunan: ["tanah", "rambut kuda"],
      terjemahanTurunan: ["kulbati tanah", "nguwel utu"],
      kataImbuhan: ["ca.cing.an"],
      kataImbuhanIndonesia: ["cacingan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["okubanak"],
      contohPenggunaanImbuhan: ["itu ~ maologe okulbati"],
    ),
    Kata(
      kataIndonesia: "cangkir",
      kataEjaan: "cang.kir",
      kataSahu: "galasi",
      labelKata: "n",
      contohPenggunaan: "adik memecahkan -- nongodu osipici galasi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "cangkul",
      kataEjaan: "cang.kul",
      kataSahu: "patu",
      labelKata: "n",
      contohPenggunaan: "ibu membeli -- di toko meme tibo patu toma toko",
      isBookmarked: 0,
      kataImbuhan: ["men.cang.kul"],
      kataImbuhanIndonesia: ["mencangkul"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["papatu"],
      contohPenggunaanImbuhan: [
        "ayah ~ tanah di halaman baba patu tanah toma buda"
      ],
    ),
    Kata(
      kataIndonesia: "cat",
      kataEjaan: "cat",
      kataSahu: "cat",
      labelKata: "n",
      contohPenggunaan: "ayah membeli -- di pasar baba tibo cat toma butu",
      isBookmarked: 0,
      kataImbuhan: ["me.nge.cat", "ber.cat"],
      kataImbuhanIndonesia: ["mengecat", "bercat"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["ocat", "macat"],
      contohPenggunaanImbuhan: [
        "ayah ~ dinding kantor baba ocat kantor magegelong",
        "rumahnya ~ merah walage macat kolil"
      ],
    ),
    Kata(
      kataIndonesia: "catat",
      kataEjaan: "ca.tat",
      kataSahu: "lefo",
      labelKata: "n",
      contohPenggunaan: "-- hutang lefo banyator",
      isBookmarked: 0,
      kataImbuhan: ["men.ca.tat", "ca.tat.an", "pen.ca.tat"],
      kataImbuhanIndonesia: ["mencatat", "catatan", "pencatat"],
      labelKataImbuhan: ["v", "n", "n"],
      kataSahuImbuhan: ["silefu", "gailefo", "asilefo"],
      contohPenggunaanImbuhan: [
        "ayah ~ lagu rohani baba silefo lagu rohani",
        "~ kaki gailefo rou",
        "~ kitab Sahu asilefo kitab Sahu"
      ],
    ),
    Kata(
      kataIndonesia: "cawat",
      kataEjaan: "ca.wat",
      kataSahu: "calana dara",
      labelKata: "n",
      contohPenggunaan:
          "kakak memakaikan adik -- ior sipake mangodu ai calana dara",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "cecak",
      kataEjaan: "ce.cak",
      kataSahu: "dukut",
      labelKata: "n",
      contohPenggunaan: "adik menangkap -- ngongodu ocako dukut",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "celana",
      kataEjaan: "ce.la.na",
      kataSahu: "calana",
      labelKata: "n",
      contohPenggunaan: "ayah membeli -- di toko tibo calana toma toko",
      isBookmarked: 0,
      kataTurunan: ["pendek", "panjang"],
      terjemahanTurunan: ["boko`o", "kidang"],
    ),
    Kata(
      kataIndonesia: "cepat",
      kataEjaan: "ce.pat",
      kataSahu: "cepati",
      labelKata: "a",
      contohPenggunaan: "-- kamu ke rumah ngini cepati toma wala",
      isBookmarked: 0,
      kataTurunan: ["mulut", "tangan"],
      terjemahanTurunan: ["dowang udu", "giyam tori-tiri"],
      kataImbuhan: [
        "ce.pat-ce.pat a",
        "ber.ce.pat-ce.pat",
        "mem.per.ce.pat",
        "se.ce.pat.nya"
      ],
      kataImbuhanIndonesia: [
        "cepat-cepat a",
        "bercepat-cepat",
        "mempercepat",
        "secepatnya"
      ],
      labelKataImbuhan: ["adv", "v", "v", "adv"],
      kataSahuImbuhan: ["capati-capati", "nicacapati", "capatdia", "capati`ia"],
      contohPenggunaanImbuhan: [
        "~ kamu ke kantor capati-capati tagi kantor",
        "kenapa ~ ke kantor niasalo nicacapati tagi kantor",
        "kamu harus ~ langkah ningi balasu ningahele capatdia",
        "kamu harus datang ~ ngini balaso ni sapol capati `ia"
      ],
    ),
    Kata(
      kataIndonesia: "cerdas",
      kataEjaan: "cer.das",
      kataSahu: "pahe",
      labelKata: "a",
      contohPenggunaan: "anak itu sangat -- ngoa ge pahe masala",
      isBookmarked: 0,
      kataImbuhan: ["men.cer.das.kan", "ke.cer.das.an"],
      kataImbuhanIndonesia: ["mencerdaskan", "kecerdasan"],
      labelKataImbuhan: ["v", "n"],
      kataSahuImbuhan: ["sipahe", "pahe"],
      contohPenggunaanImbuhan: [
        "kita harus ~ anak ngene balasu sipahe maolo",
        "saya senang dengan ~ anak itu ngoi tusanang ngoologe pahe masala"
      ],
    ),
    Kata(
      kataIndonesia: "cerek, cérék",
      kataEjaan: "ce.rek, cérék",
      kataSahu: "cere",
      labelKata: "n",
      contohPenggunaan: "ibu menuang air di -- meme musigare anyo toma cere",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "cincin",
      kataEjaan: "cin.cin",
      kataSahu: "aali",
      labelKata: "n",
      contohPenggunaan:
          "kakak membeli -- emas di toko emas ior adi tibo aali toma toko mas",
      isBookmarked: 0,
      kataTurunan: ["kawin"],
      terjemahanTurunan: ["aali maroar"],
    ),
    Kata(
      kataIndonesia: "ci.um",
      kataEjaan: "ci.um",
      kataSahu: "dume",
      labelKata: "v",
      contohPenggunaan: "-- tangan ibumu dume ngina madiam",
      isBookmarked: 0,
      kataImbuhan: ["ber.ci.um.an", "men.ci.um", "ci.um.an", "ter.ci.um"],
      kataImbuhanIndonesia: ["berciuman", "mencium", "ciuman", "tercium"],
      labelKataImbuhan: ["v", "v", "n", "v"],
      kataSahuImbuhan: ["maudume", "tudume", "modome", "adume"],
      contohPenggunaanImbuhan: [
        "mereka ~ anang adi maudume",
        "saya ~ kaki ibu ngoi tudume ari ngina marou",
        "~ ibu kepada anak modome meme modume mangoa",
        "tangan saya ~ oleh dia ari diam ngunang adume"
      ],
    ),
    Kata(
      kataIndonesia: "cuci",
      kataEjaan: "cu.ci",
      kataSahu: "cuci",
      labelKata: "n",
      contohPenggunaan: "-- uju calana",
      isBookmarked: 0,
      kataTurunan: ["tangan", "kaki", "muka"],
      terjemahanTurunan: ["soso`o giyam", "soso`o rou", "maloca`a"],
      kataImbuhan: ["men.cu.ci", "ter.cu.ci", "men.cu.ci.kan"],
      kataImbuhanIndonesia: ["mencuci", "tercuci", "mencucikan"],
      labelKataImbuhan: ["v", "n", "v"],
      kataSahuImbuhan: ["bauju", "riuju", "siuju"],
      contohPenggunaanImbuhan: [
        "kakak ~ baju di sungai ior bauju baju toma ngala",
        "celana saya ~ ngori calana riuju dua",
        "kakak ~ kain di sumur ior siuju ba`a toma sum"
      ],
    ),
    Kata(
      kataIndonesia: "cucu",
      kataEjaan: "cu.cu",
      kataSahu: "dano",
      labelKata: "n",
      contohPenggunaan: "nenek menggendong -- nene mototi`i dano",
      isBookmarked: 0,
      kataImbuhan: ["ber.cu.cu"],
      kataImbuhanIndonesia: ["bercucu"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: [""],
      contohPenggunaanImbuhan: ["saya sudah ~ ngoi raridano duua"],
    ),
    Kata(
      kataIndonesia: "cumi-cumi",
      kataEjaan: "cu.mi-cu.mi",
      kataSahu: "worong",
      labelKata: "n",
      contohPenggunaan: "ibu membeli -- di pasar meme ngotibo worong toma butu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "curang",
      kataEjaan: "cu.rang",
      kataSahu: "furiki",
      labelKata: "a",
      contohPenggunaan: "kerja mereka -- anang munara furiki",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "cobek, cobék",
      kataEjaan: "co.bek, cobék",
      kataSahu: "cobe",
      labelKata: "n",
      contohPenggunaan:
          "ibu membersihkan -- di dapur meme mosiofi cobe toma itom",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "cok",
      kataEjaan: "cok",
      kataSahu: " sicok",
      labelKata: "n",
      contohPenggunaan: "tolong -- lampu pahala no sicok lampu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "cokelat",
      kataEjaan: "co.kel.at",
      kataSahu: " sokolati",
      labelKata: "a",
      contohPenggunaan: "baju berwarma -- baju bawarna sokolati",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "coret, corét",
      kataEjaan: "co.ret, corét",
      kataSahu: "gare",
      labelKata: "n",
      contohPenggunaan: "ayah yang -- ngunang a gare",
      isBookmarked: 0,
      kataImbuhan: ["men.co.ret", "co.ret-co.ret"],
      kataImbuhanIndonesia: ["mencoret", "coret-coret"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["nogare", "gare-gare"],
      contohPenggunaanImbuhan: [
        "kenapa ~ dinding iyasaolo nogare gegelo",
        "jangan ~ dinding gare-gare awa gegelo"
      ],
    ),
    //section D
    Kata(
      kataIndonesia: "dada",
      kataEjaan: "da.da",
      kataSahu: "katel",
      labelKata: "n",
      contohPenggunaan: " -- ibu sakit ngina ami katel sidi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "dagu",
      kataEjaan: "da.gu",
      kataSahu: "maoko",
      labelKata: "n",
      contohPenggunaan: " -- anak itu luka ngowa maokok nyabot",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "dahulu",
      kataEjaan: "da.hu.lu",
      kataSahu: "ngaim moju",
      labelKata: "n",
      contohPenggunaan:
          "-- saya hidup di Desa Ibu ngaim moju ngoi to ahu toma Gam Ibu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "dalam",
      kataEjaan: "da.lam",
      kataSahu: "madara",
      labelKata: "a",
      contohPenggunaan: "-- kamar kamar madara",
      isBookmarked: 0,
      kataImbuhan: ["men.da.lam", "ke.da.la.man"],
      labelKataImbuhan: ["v", "n"],
      kataSahuImbuhan: ["laiido", "mangido"],
      contohPenggunaanImbuhan: [
        "Laut Jailolo sangat ~  Ngolo Jaidolo laiido",
        "~ Laut Jailolo mangido Ngolot Jaidolo"
      ],
    ),
    Kata(
      kataIndonesia: "dan",
      kataEjaan: "dan",
      kataSahu: "re",
      labelKata: "p",
      contohPenggunaan:
          "saya -- dia pergi ke sekolah ngoi re uang tagi toma sekolah",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "danau",
      kataEjaan: "danau",
      kataSahu: "talaga",
      labelKata: "n",
      contohPenggunaan: "-- Tolire sangat dangkal talaga Tolire ngido masal",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "dapur",
      kataEjaan: "dapur",
      kataSahu: "itomo",
      labelKata: "n",
      contohPenggunaan: "-- saya telah diperbaiki ari itomo yaa maju",
      isBookmarked: 0,
      kataTurunan: ["umum"],
      terjemahanTurunan: ["ngoarepe"],
    ),
    Kata(
      kataIndonesia: "darah",
      kataEjaan: "da.rah",
      kataSahu: "ngaun",
      labelKata: "n",
      contohPenggunaan: "-- kamu menetes di lantai ngana ngaun paal toma mesel",
      isBookmarked: 0,
      kataTurunan: ["rendah", "tinggi"],
      terjemahanTurunan: ["ngauln uci", "ngaun pere"],
      kataImbuhan: ["ber.da.rah", "pen.da.ra.han", "se.da.rah"],
      kataImbuhanIndonesia: ["berdarah", "pendarahan", "sedarah"],
      labelKataImbuhan: ["v", "n", "n"],
      kataSahuImbuhan: ["ingaun", "amingaun", "ngaun"],
      contohPenggunaanImbuhan: [
        "kaki saya ~ ngoi ario ingaun",
        "ibu itu ~ meme amingaun paal",
        "saya dan dia ~ ngoi reuang ngaun rimoi"
      ],
    ),
    Kata(
      kataIndonesia: "darat",
      kataEjaan: "darat",
      kataSahu: "tana madung",
      labelKata: "n",
      contohPenggunaan:
          "angin -- sangat kencang karawian laisidi toma tana madudng",
      isBookmarked: 0,
      kataImbuhan: ["men.da.rat", "da.ra.tan"],
      kataImbuhanIndonesia: ["mendarat", "daratan"],
      labelKataImbuhan: ["v", "n"],
      kataSahuImbuhan: ["iuci", "daeraha"],
      contohPenggunaanImbuhan: [
        "pesawat ~  di Bandara Jailolo pesawat iuci tama Bandara Jaidolo",
        "~ Halmahera sangat luas daeraha Halmahera lailuas masala"
      ],
    ),
    Kata(
      kataIndonesia: "dari",
      kataEjaan: "da.ri",
      kataSahu: "dai",
      labelKata: "p",
      contohPenggunaan: "kami ~ pasar Susupu ngomi dai pasar dongimareu isa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "datang",
      kataEjaan: "da.tang",
      kataSahu: "toma",
      labelKata: "v",
      contohPenggunaan: "mereka -- di rumah adat anang adisapol toma sasadu",
      isBookmarked: 0,
      kataImbuhan: ["da.tang-da.tang", "ber.da.tang.an"],
      kataImbuhanIndonesia: ["datang-datang", "berdatangan"],
      labelKataImbuhan: ["adv", "v"],
      kataSahuImbuhan: ["toma-toma", "toma"],
      contohPenggunaanImbuhan: [
        "sering kamu ~ di Taraudu sirio`o ria nusapo toma Taraudu",
        "rombongan ~ di gereja ngoa repe adotasapol toma gareja"
      ],
    ),
    Kata(
      kataIndonesia: "daun",
      kataEjaan: "da.un",
      kataSahu: "maso'a",
      labelKata: "n",
      contohPenggunaan: "-- mangga gugur guwai maso`a ituron",
      isBookmarked: 0,
      kataImbuhan: ["ber.da.un", "da.un-da.un.an"],
      kataImbuhanIndonesia: ["berdaun", "daun-daunan"],
      labelKataImbuhan: ["n", "n"],
      kataSahuImbuhan: ["remasoa'a", "masoa-soa"],
      contohPenggunaanImbuhan: [
        "pohon mangga saya sudah ~  ngoi riguwae remasoa`a duaa",
        "~ mangga berhamburan di halaman rumah guwai masoa-soa iyare toma wala masoan"
      ],
    ),
    Kata(
      kataIndonesia: "dayung",
      kataEjaan: "da.yung",
      kataSahu: "bebero",
      labelKata: "n",
      contohPenggunaan: "-- saya patah ari bebero irapo",
      isBookmarked: 0,
      kataImbuhan: ["men.da.yung"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["nobero"],
      contohPenggunaanImbuhan: ["kamu yang ~ ngana nobero"],
    ),
    Kata(
      kataIndonesia: "debu",
      kataEjaan: "de.bu",
      kataSahu: "rekorou`u",
      labelKata: "n",
      contohPenggunaan:
          "banyak -- di atas meja toma meja mare`u romang rekorou`u",
      isBookmarked: 0,
      kataImbuhan: ["ber.de.bu"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["ikorou'u"],
      contohPenggunaanImbuhan: ["rumah kami ~ ngomi mingawala ikorou`u"],
    ),
    Kata(
      kataIndonesia: "de.kat",
      kataEjaan: "de.kat",
      kataSahu: "icori",
      labelKata: "a",
      contohPenggunaan:
          "kebun kami sangat -- dengan jalan ngomi mingaguda icori tomangoom maudu",
      isBookmarked: 0,
      kataImbuhan: [
        "de.kat-de.kat",
        "ber.de.ka.tan",
        "men.de.kat",
        "ter.de.kat"
      ],
      kataImbuhanIndonesia: [
        "dekat-dekat",
        "berdekatan",
        "mendekat",
        "terdekat"
      ],
      labelKataImbuhan: ["adv", "v", "v", "a"],
      kataSahuImbuhan: ["macocori", "maucor", "ricocori", "icori"],
      contohPenggunaanImbuhan: [
        "kamu harus ~ dengan dia ibu ngini balasu macocori re meme",
        "rumah saya dan dia ~ ngori wala re unang ai wala maucori",
        "mobil ayah semakin ~ baba ai oto ganapo ricocori",
        "sekolah saya ~ dengan gereja ngori sekola icori toma gereja"
      ],
    ),
    Kata(
      kataIndonesia: "demam",
      kataEjaan: "de.mam",
      kataSahu: "ogagma",
      labelKata: "a",
      contohPenggunaan:
          "musim -- berdarah gagam maoras ibu tulang meme ogagma maobong sisidi",
      isBookmarked: 0,
      kataTurunan: ["panas", "panggung", "tulang"],
      terjemahanTurunan: ["gagam sasau'u", "terewet", "isidi"],
    ),
    Kata(
      kataIndonesia: "dendeng",
      kataEjaan: "den.deng",
      kataSahu: "soto",
      labelKata: "n",
      contohPenggunaan: "kakek menjemur -- sapi tete owoil soto sapi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "dengan",
      kataEjaan: "de.ngan",
      kataSahu: "ra",
      labelKata: "p",
      contohPenggunaan:
          "kamu -- siapa ke sekolah ngana ra guna tagi toma sekola",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "dengar",
      kataEjaan: "de.ngar",
      kataSahu: "isen",
      labelKata: "v",
      contohPenggunaan: "-- anak menangis isen noa adi",
      isBookmarked: 0,
      kataImbuhan: ["men.de.ngar", "men.de.ngar-de.ngar", "ke.de.ngar.an"],
      kataImbuhanIndonesia: ["mendengar", "mendengar-dengar", "kedengaran"],
      labelKataImbuhan: ["v", "v", "n"],
      kataSahuImbuhan: ["miisen", "isen-isen", "isen"],
      contohPenggunaanImbuhan: [
        "kami ~ kabar baik ngomi miisen habari rous",
        " ~ kabar, tamu akan datang ke rumah adat isin-isen ior nongodu, a isipo toma sasadu",
        "tangis anak itu ~ di sini ngoa ge a`i isen ane"
      ],
    ),
    Kata(
      kataIndonesia: "dewasa",
      kataEjaan: "de.wa.sa",
      kataSahu: "rilamo",
      labelKata: "a",
      contohPenggunaan: "anak saya sudah -- ngori ari ngowa rilamo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "didik",
      kataEjaan: "di.dik",
      kataSahu: "dodoto",
      labelKata: "v",
      contohPenggunaan:
          "anak -- saya sangat banyak ngoi ari ngoa dodoto repe masalah",
      isBookmarked: 0,
      kataImbuhan: ["men.di.dik", "di.dik.an", "pen.di.dik.an"],
      kataImbuhanIndonesia: ["mendidik", "didikan", "pendidikan"],
      labelKataImbuhan: ["v", "n", "n"],
      kataSahuImbuhan: ["nodtoto", "dodto'o", "dodoto"],
      contohPenggunaanImbuhan: [
        "kita harus ~ anak dengan baik ngomi nodtoto ngowa`a rema lala",
        "~ ayah sangat baik dodoto`o baba rous masalah",
        "~ di Taraudu sangat bagus dodoto toma Taraudu rous masala"
      ],
    ),
    Kata(
      kataIndonesia: "dinding",
      kataEjaan: "din.ding",
      kataSahu: "magegelo",
      labelKata: "n",
      contohPenggunaan: "",
      isBookmarked: 0,
      kataImbuhan: ["ber.din.ding"],
      kataImbuhanIndonesia: ["berdinding"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["magegebo"],
      contohPenggunaanImbuhan: [
        "rumah mereka ~ bambu anang mangawala magegelo tonga"
      ],
    ),
    Kata(
      kataIndonesia: "dini",
      kataEjaan: "dini",
      kataSahu: "coribibin",
      labelKata: "a",
      contohPenggunaan: "kami ke Ternate -- haricoribibin ngomi tagi Ternate",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "dingin",
      kataEjaan: "di.ngin",
      kataSahu: "alo",
      labelKata: "a",
      contohPenggunaan: "pagi ini sangat -- dai nyia`ane alo masala;",
      isBookmarked: 0,
      kataImbuhan: ["men.di.ngin.kan", "ke.di.ngin.an"],
      kataImbuhanIndonesia: ["mendinginkan", "kedinginan"],
      labelKataImbuhan: ["v", "a"],
      kataSahuImbuhan: ["sialo", "toala"],
      contohPenggunaanImbuhan: [
        "~ buah mangga di kulkas sialo guwae toma kulkas",
        "saya sangat ~ ngoi toalo masala"
      ],
    ),
    Kata(
      kataIndonesia: "diri",
      kataEjaan: "di.ri",
      kataSahu: "diri",
      labelKata: "n",
      contohPenggunaan:
          "jaga -- baik-baik di kampung orang jaga diri lala ino rangoa manga gama",
      isBookmarked: 0,
      kataImbuhan: ["ber.di.ri"],
      kataImbuhanIndonesia: ["berdiri"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["noteos"],
      contohPenggunaanImbuhan: [" ayah ~ di situ? i baba noteos age?"],
    ),
    Kata(
      kataIndonesia: "disentri",
      kataEjaan: "di.sen.tri",
      kataSahu: "sidagi",
      labelKata: "n",
      contohPenggunaan: " nenek saya -- ngori nene mokio sidagi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "di sini",
      kataEjaan: "di si.ni",
      kataSahu: "a ne",
      labelKata: "pro",
      contohPenggunaan:
          "-- kami belajar menyanyi a ne ngomi mi madoto manyanyi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "di situ",
      kataEjaan: "di si.tu",
      kataSahu: "a ge",
      labelKata: "pro",
      contohPenggunaan: "rumah saya -- ngori wala a ge",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "domba",
      kataEjaan: "dom.ba",
      kataSahu: "doba",
      labelKata: "n",
      contohPenggunaan: "kakek memelihara -- tete piara doba",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "dorong",
      kataEjaan: "do.rong",
      kataSahu: "itom",
      labelKata: "V",
      contohPenggunaan: "--meja itom meja",
      isBookmarked: 0,
      kataImbuhan: ["men.do.rong", "ter.do.rong"],
      kataImbuhanIndonesia: ["mendorong", "terdorong"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["iitom", "siitom"],
      contohPenggunaanImbuhan: [
        "kakak ~ gerobak ior itom garobak; dia (L) meja saya unang (L) iitom ngoi ari meja",
        "meja saya ~ ngori meja siitoom"
      ],
    ),
    Kata(
      kataIndonesia: "dua",
      kataEjaan: "dua",
      kataSahu: "romdidi",
      labelKata: "num",
      contohPenggunaan: "saya membeli -- ekor sapi ngoi tutibo sampi romdidi",
      isBookmarked: 0,
      kataImbuhan: ["dua-dua.nya", "be.rdua", "ke.dua", "se.per.dua"],
      kataImbuhanIndonesia: ["dua-duanya", "berdua", "kedua", "seperdua"],
      labelKataImbuhan: ["v", "num", "num", "num"],
      kataSahuImbuhan: ["ngamudidi", "ngamodidi", "kacididi", "baangudidi"],
      contohPenggunaanImbuhan: [
        " harus ~ yang datang balasu ngamudidi momoin disapul",
        "mereka ~ yang datang ke rumah anang ngamodidi aisapol toma wala",
        " ~ belah bambu ngini kacididi suka tonga",
        "~ daging sapi sapi daging balangudidi",
      ],
    ),
    Kata(
      kataIndonesia: "duduk",
      kataEjaan: "du.duk",
      kataSahu: "tegor",
      labelKata: "v",
      contohPenggunaan: "-- di depan rumah anang adi tegor toma wala mangalam",
      isBookmarked: 0,
      kataImbuhan: ["du.duk-du.duk", "ter.du.duk", "ke.du.duk.an"],
      kataImbuhanIndonesia: ["duduk-duduk", "terduduk", "kedudukan"],
      labelKataImbuhan: ["v", "v", "n"],
      kataSahuImbuhan: ["tegor-tegor", "totegor", "madedegor"],
      contohPenggunaanImbuhan: [
        "kami ~ di pantai umi tegor-tegor toma wolot maudu",
        "saya ~ di lantai ngoi totegor toma mese",
        "~ ayah lebih tinggi ari baba madedegor kao`u"
      ],
    ),
    Kata(
      kataIndonesia: "dukung",
      kataEjaan: "du.kung",
      kataSahu: "toti",
      labelKata: "v",
      contohPenggunaan: "-- anak toti ngoa",
      isBookmarked: 0,
      kataImbuhan: ["men.du.kung"],
      kataImbuhanIndonesia: ["mendukung"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["itoti"],
      contohPenggunaanImbuhan: ["ayah ~ mereka baba itoti anang"],
    ),
    Kata(
      kataIndonesia: "durian",
      kataEjaan: "du.ri.an",
      kataSahu: "duarian",
      labelKata: "n",
      contohPenggunaan:
          "kakak pergi menjual -- di pasar ior tagi wuun duarian toma butu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "dusun",
      kataEjaan: "du.sun",
      kataSahu: "dusun",
      labelKata: "n",
      contohPenggunaan:
          "pagi ini bakti di -- satu dae niane ngomi midisi toma dusun rimoi",
      isBookmarked: 0,
    ),
    //secton e
    Kata(
      kataIndonesia: "ekor",
      kataEjaan: "e.kor /ékor/",
      kataSahu: "madiim",
      labelKata: "n",
      contohPenggunaan: "ibu memotong -- kucing? meme notola`a boki madiim?",
      isBookmarked: 0,
      kataImbuhan: ["ber.e.kor /berékor/"],
      kataImbuhanIndonesia: ["berekor /berékor/"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["madiim"],
      contohPenggunaanImbuhan: ["kucing ~ dua boki madiim romdidi"],
    ),
    Kata(
      kataIndonesia: "ember",
      kataEjaan: "em.ber",
      kataSahu: "ember",
      labelKata: "n",
      contohPenggunaan: "ibu mencuci -- meme masoso ember",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "embun",
      kataEjaan: "em.bun",
      kataSahu: "gagin",
      labelKata: "n",
      contohPenggunaan:
          "-- jatuh di teras rumah gagin iturun toma wala madowang",
      isBookmarked: 0,
      kataTurunan: ["pagi"],
      terjemahanTurunan: [" daidai nia`a"],
      kataImbuhan: ["ber.em.bun"],
      kataImbuhanIndonesia: ["berembun"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["igagin"],
      contohPenggunaanImbuhan: [" rumah itu ~ wala ge igagin"],
    ),
    Kata(
      kataIndonesia: "empat",
      kataEjaan: "em.pat",
      kataSahu: "rata",
      labelKata: "num",
      contohPenggunaan:
          "sepatu sekolah saya -- ada ngoi ari sipatu sekolah rata",
      isBookmarked: 0,
      kataTurunan: ["mata", "persegi"],
      terjemahanTurunan: ["laoorata", "pasagirata"],
      kataImbuhan: ["ber.em.pat, berêmpat"],
      kataImbuhanIndonesia: ["berempat, berêmpat"],
      labelKataImbuhan: ["num"],
      kataSahuImbuhan: [" ngaduat"],
      contohPenggunaanImbuhan: [
        " mereka ~ yang ke kantor anang ngaduat toma kantor"
      ],
    ),
    Kata(
      kataIndonesia: "enam",
      kataEjaan: "enam",
      kataSahu: "raram",
      labelKata: "num",
      contohPenggunaan: "ayah membeli durian -- buah baba tibo durian raram",
      isBookmarked: 0,
      kataImbuhan: ["ber.enam"],
      kataImbuhanIndonesia: ["berenam"],
      labelKataImbuhan: ["num"],
      kataSahuImbuhan: [" ngaduram"],
      contohPenggunaanImbuhan: [
        "kami ~ yang membawa durian ngomi ngaduram migasa durian"
      ],
    ),
    Kata(
      kataIndonesia: "enau",
      kataEjaan: "enau",
      kataSahu: "diuun",
      labelKata: "n",
      contohPenggunaan: "abang menebang -- pohon baba otawel diuun",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "engkau",
      kataEjaan: "eng.kau",
      kataSahu: "ngana",
      labelKata: "pron",
      contohPenggunaan: "-- datang dengan siapa? ngana raguna nou sapol?",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "emas",
      kataEjaan: "emas",
      kataSahu: "mas",
      labelKata: "n",
      contohPenggunaan: "ibu memakai cincin -- meme mopake ali-ali mas",
      isBookmarked: 0,
      kataTurunan: ["murni", "putih", "tua"],
      terjemahanTurunan: ["mas maofi", "mas budu", "mas masida"],
    ),
    Kata(
      kataIndonesia: "es",
      kataEjaan: "es /és/",
      kataSahu: "es",
      labelKata: "n",
      contohPenggunaan:
          "saya membeli -- batu di warung ngoi titibo es ma`ditoma warung",
      isBookmarked: 0,
    ),
    //section f
    Kata(
      kataIndonesia: "faedah ",
      kataEjaan: "fa.e.dah ",
      kataSahu: " faédah",
      labelKata: "n",
      contohPenggunaan:
          "barang yang kita beli harus punya -- tibo barang re gema faedah",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "fakir ",
      kataEjaan: "fa.kir ",
      kataSahu: "kangela",
      labelKata: "n",
      contohPenggunaan:
          "fakir dipelihara oleh Negara -- gaa madingau ngo'a pemerintah yau pulaa orom",
      isBookmarked: 0,
      kataImbuhan: ["fa.kir mis.kin", "ke.fa.ki.ran"],
      kataImbuhanIndonesia: ["fakir miskin", "kefakiran"],
      labelKataImbuhan: ["n", "n"],
      kataSahuImbuhan: ["dikangela", "ngoa kangela"],
      contohPenggunaanImbuhan: [
        "kita harus mengasihi ~ ngene balasu opulaa ngoa gaa dikangela",
        "angka ~ semakin meningkat ngoa kangela genapu idogo"
      ],
    ),
    Kata(
      kataIndonesia: "fana",
      kataEjaan: "fa.na",
      kataSahu: "fana",
      labelKata: "n",
      contohPenggunaan: "hidup di dunia yang -- oham toma dunia yang fana",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "fasih",
      kataEjaan: "fa.sih",
      kataSahu: "ngolo",
      labelKata: "a",
      contohPenggunaan:
          "balita itu sudah -- berbicara ngolo nage rokanau rowar",
      isBookmarked: 0,
      kataImbuhan: ["mem.per.sih"],
      kataImbuhanIndonesia: ["mempersih"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["ongolo"],
      contohPenggunaanImbuhan: [
        "peserta didik berlatih ~ bahasa Sahu ana sidotoo ongolo nage demo Sahu"
      ],
    ),
    Kata(
      kataIndonesia: "fokus",
      kataEjaan: "fo.kus",
      kataSahu: "balasu",
      labelKata: "n",
      contohPenggunaan:
          "petani -- mempelajari cara bercocok tanam yang baik ngene petani otom joro malalaa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "fitnah",
      kataEjaan: "fit.nah",
      kataSahu: "fitanah",
      labelKata: "n",
      contohPenggunaan: "jangan -- saya no fitanah awaa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "fungsi",
      kataEjaan: "fung.si",
      kataSahu: "guna",
      labelKata: "n",
      contohPenggunaan: "-- telinga untuk mendengar guna ngau`u da`a miisen",
      isBookmarked: 0,
      kataImbuhan: ["ber.fung.si"],
      kataImbuhanIndonesia: ["berfungsi"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["rema guna"],
      contohPenggunaanImbuhan: [
        "semua masyarakat ~ sebagai penggerak kemajuan desa ngene gam romoi ne remaguna moin-moin"
      ],
    ),
    //section G
    Kata(
        kataIndonesia: "gaba-gaba",
        kataEjaan: "ga.ba-ga.ba",
        kataSahu: "diun mamowe",
        labelKata: "n",
        contohPenggunaan:
            "panggung itu dihiasi dengan -- panggung yaa rewael diun mawowe",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.gaba-gaba.i"
        ],
        kataImbuhanIndonesia: [
          "menggaba-gabai"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "pake diun mawowe"
        ],
        contohPenggunaanImbuhan: [
          "bergotong-royong ~ sasadu ngene omarimoi o a nanga sasadu ma kareci pake diun mawowe"
        ]),
    Kata(
        kataIndonesia: "gabung, bergabung",
        kataEjaan: "ga.bung, bergabung",
        kataSahu: "/silom/",
        labelKata: "v",
        contohPenggunaan:
            "dia (L) bergabung dengan kami unang nage omarimoi re ngene",
        isBookmarked: 0,
        kataImbuhan: [
          "ga.bu.ngan",
          "ter.ga.bung"
        ],
        kataImbuhanIndonesia: [
          "gabungan",
          "tergabung"
        ],
        labelKataImbuhan: [
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "/dimalom/",
          "/olom/"
        ],
        contohPenggunaanImbuhan: [
          "tim ~ mengamankan acara itu anang dimalom idadi rimoi",
          "mereka ~ dalam tim yang sama wunang olom wate itoun tala"
        ]),
    Kata(
        kataIndonesia: "gadis",
        kataEjaan: "ga.dis",
        kataSahu: "mosoles",
        labelKata: "n",
        contohPenggunaan:
            "ibu itu memiliki tiga anak -- ngo yaya ge mingoa mosoles ngadu ange",
        isBookmarked: 0,
        kataTurunan: [
          "desa",
          "kecil"
        ],
        terjemahanTurunan: [
          "mosoles gam",
          "ngolo wewera"
        ],
        kataImbuhan: [
          "ke.ga.dis-ga.di.san"
        ],
        kataImbuhanIndonesia: [
          "kegadis-gadisan"
        ],
        labelKataImbuhan: [
          "a"
        ],
        kataSahuImbuhan: [
          "/saol mosoles/"
        ],
        contohPenggunaanImbuhan: [
          "wanita itu bersikap ~ momoal dua moaa ami duhu saol mosoles"
        ]),
    Kata(
        kataIndonesia: "gaduh",
        kataEjaan: "ga.duh",
        kataSahu: "manyiwer",
        labelKata: "n",
        contohPenggunaan:
            "warga yang membuat -- telah diamankan unang go omanyiwer osiaman duaa",
        isBookmarked: 0),
    Kata(
      kataIndonesia: "gagah",
      kataEjaan: "ga.gah",
      kataSahu: "laurous",
      labelKata: "n",
      contohPenggunaan:
          "kakek masih terlihat -- walau usianya sudah senja tete opiri duaa laurous moju",
      isBookmarked: 0,
      kataTurunan: ["berani", "perkasa"],
      terjemahanTurunan: ["laurous madutu", "lau nauu"],
    ),
    Kata(
      kataIndonesia: "gagap",
      kataEjaan: "ga.gap",
      kataSahu: "vcamudada",
      labelKata: "n",
      contohPenggunaan: "dia (L) itu bicara -- unang (L) ge okanau camudada",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gait, penggait",
      kataEjaan: "gait, penggait",
      kataSahu: "gagalao",
      labelKata: "n",
      contohPenggunaan:
          "bapak membuat -- untuk menarik ranting cengkih yang tidak terjangkau ngoi to ao gagalao diatasi kalo o cengkeh ma umang",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "galah",
        kataEjaan: "ga.lah",
        kataSahu: "dudubo",
        labelKata: "n",
        contohPenggunaan:
            "-- buatan kakek dipinjam paman tete aidudubo a jou abawu",
        isBookmarked: 0,
        kataTurunan: [
          "canggah"
        ],
        terjemahanTurunan: [
          "dudubo sasalang"
        ],
        kataImbuhan: [
          "ber.ga.lah",
          "peng.ga.lah"
        ],
        kataImbuhanIndonesia: [
          "bergalah",
          "penggalah"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "rema dudubo",
          "daao dudubo"
        ],
        contohPenggunaanImbuhan: [
          "kebun kakek ~ sejak dulu rema dudubo tete aage pake nyengar moju",
          "~ buatan kakek masih layak dipakai daao dudubo ra tete aiguda madiar dua’a"
        ]),
    Kata(
        kataIndonesia: "galak",
        kataEjaan: "ga.lak",
        kataSahu: "ruta-ruta",
        labelKata: "a",
        contohPenggunaan:
            "guru galak itu disegani peserta didik guru nage ngoolomojong ruta-ruta",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.ga.lak"
        ],
        kataImbuhanIndonesia: [
          "menggalak"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "tataruta"
        ],
        contohPenggunaanImbuhan: [
          "ayah tiba-tiba ~ karena adik belum pulang sejak semalam baba tataruta ningodu diboyang"
        ]),
    Kata(
      kataIndonesia: "gali, menggali",
      kataEjaan: "ga.li, meng.gali",
      kataSahu: "pait",
      labelKata: "n",
      contohPenggunaan: "dia -- tanah untuk menanam pohon unang o pait tanah",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "gam.pang",
        kataEjaan: "gam.pang",
        kataSahu: "kangela ua",
        labelKata: "a",
        contohPenggunaan: "pekerjaan itu terlihat -- munara i kangela ua",
        isBookmarked: 0,
        kataImbuhan: ["meng.gam.pang.kan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["nasikangela ua"],
        contohPenggunaanImbuhan: ["jangan suka ~ masalah nasikangela awa"]),
    Kata(
        kataIndonesia: "gandeng",
        kataEjaan: "gan.deng",
        kataSahu: "guu",
        labelKata: "v",
        contohPenggunaan:
            "-- tangan adikmu saat menyeberang di jalan ngoa ngam doia aitagi guu giam",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.gan.deng"
        ],
        kataImbuhanIndonesia: [
          "menggandeng"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "mauguu"
        ],
        contohPenggunaanImbuhan: [
          "ayah ~ tangan ibu baba otagi metee ogo meme mauguu migiam"
        ]),
    Kata(
      kataIndonesia: "ganjal",
      kataEjaan: "gan.jal",
      kataSahu: "becu",
      labelKata: "n",
      contohPenggunaan:
          "-- rumah kebun yang bertiang agak miring harus wala guda gaidedu wa becu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "ganti",
        kataEjaan: "gan.ti",
        kataSahu: "ongali",
        labelKata: "v",
        contohPenggunaan: "ganti baju ngoi ongali ri baju",
        isBookmarked: 0,
        kataTurunan: [
          "rugi"
        ],
        terjemahanTurunan: [
          "ongali manga pipis"
        ],
        kataImbuhan: [
          "ber.gan.ti",
          "ber.gan.ti.an",
          "meng.gan.ti",
          "peng.gan.ti"
        ],
        kataImbuhanIndonesia: [
          "berganti",
          "bergantian",
          "mengganti",
          "pengganti"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "mangali",
          "adi mangali",
          "ongali",
          "mangangali"
        ],
        contohPenggunaanImbuhan: [
          "peserta tari ~ kostum unang mangali ai baju",
          "para pemuda ~ melakukan ronda malam tubuie adi maungali roka lobii",
          "paman ~ ban mobil di bengkel jou ongali oto maroda toma bengkel",
          "pemain ~ masuk di sisa waktu bisa mangagali ma waktu majungiang"
        ]),
    Kata(
        kataIndonesia: "gantung",
        kataEjaan: "gan.tung",
        kataSahu: "kole",
        labelKata: "v",
        contohPenggunaan:
            "pemain bola itu sudah -- sepatu ngoa ngamduo ia adima kole toma gumi",
        isBookmarked: 0,
        kataTurunan: [
          ""
        ],
        terjemahanTurunan: [
          ""
        ],
        kataImbuhan: [
          "meng.gan.tung",
          "meng.gan.tung.kan"
        ],
        kataImbuhanIndonesia: [
          "menggantung",
          "menggantungkan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "okole",
          "nomakole"
        ],
        contohPenggunaanImbuhan: [
          "kakek ~ kopiahnya di gantungan tete okole baa toma gantungan",
          "jangan ~ hidup anda pada orang lain nomakole niahu re ngoa manga awa"
        ]),
    Kata(
      kataIndonesia: "garam",
      kataEjaan: "ga.ram",
      kataSahu: "gasi",
      labelKata: "n",
      contohPenggunaan:
          "jangan lupa menaruh -- pada sayur nasidorang awa gare gasi toma uge",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "garap, menggarap",
      kataEjaan: "ga.rap, meng.ga.rap",
      kataSahu: "joborong",
      labelKata: "v",
      contohPenggunaan: "petani ~ lahan ngomi mijoborong guda",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "garis",
        kataEjaan: "ga.ris",
        kataSahu: "garee",
        labelKata: "n",
        contohPenggunaan: "gegelo ya ~~ nongoduu dinding digaris adik",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.ga.risi",
          "meng.ga.ris.kan"
        ],
        kataImbuhanIndonesia: [
          "menggarisi",
          "menggariskan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "ogaree",
          "togare"
        ],
        contohPenggunaanImbuhan: [
          "adik ~ buku gambar nongodu o gare toma boku gambar",
          "saya ~ pensil di buku ngoi togare toma buku"
        ]),
    Kata(
        kataIndonesia: "garuk, menggaruk",
        kataEjaan: "ga.ruk, meng.ga.ruk",
        kataSahu: "karangos",
        labelKata: "v",
        contohPenggunaan:
            "dia (L) ~ badannya yang gatal unang (L) okarangos ailese gailaor",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.ga.ruk-ga.ruk"
        ],
        kataImbuhanIndonesia: [
          "menggaruk-garuk"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "okarangos-karangos"
        ],
        contohPenggunaanImbuhan: [
          "paman ~ kepalanya wunang okarangos-karangos ai saee"
        ]),
    Kata(
      kataIndonesia: "gatal",
      kataEjaan: "ga.tal",
      kataSahu: "laor",
      labelKata: "a",
      contohPenggunaan: "terasa -- di punggungku ribeleas laor",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gaun",
      kataEjaan: "ga.un",
      kataSahu: "baju",
      labelKata: "n",
      contohPenggunaan: "-- milik ibu baju ge tangu meme",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gelap",
      kataEjaan: "ge.lap",
      kataSahu: "hafu",
      labelKata: "a",
      contohPenggunaan:
          "jalanan sangat -- karena mati lampu ngoom hafu karna malampu seneng",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "geleng",
      kataEjaan: "ge.leng",
      kataSahu: "elal",
      labelKata: "n",
      contohPenggunaan: "geleng kepala -- saee",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "geli",
      kataEjaan: "ge.li",
      kataSahu: "rongun",
      labelKata: "a",
      contohPenggunaan:
          "adik merasa geli saat digelitik kakak ngoi to rongun karena io o nakal",
      isBookmarked: 0,
      kataImbuhan: ["ke.ge.li.an", "meng.ge.li.kan"],
      kataImbuhanIndonesia: ["kegelian", "menggelikan"],
      labelKataImbuhan: ["n", "v"],
      kataSahuImbuhan: ["tororongun", "torongun"],
      contohPenggunaanImbuhan: [
        "~ orang itu terlihat dari gelak tawanya ngoi tobason tororongun",
        "tindakan konyol orang itu menggelikan oaaduhu pona-pona dua -- masala"
      ],
    ),
    Kata(
      kataIndonesia: "geliat, megeliat",
      kataEjaan: "ge.li.at, me.ge.liat",
      kataSahu: "momoro",
      labelKata: "n",
      contohPenggunaan: "dia ~ o momoro",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gelincir",
      kataEjaan: "ge.lin.cir",
      kataSahu: "sasol",
      labelKata: "n",
      contohPenggunaan: "kayu itu -- di tebing ate dumoi sasol toma bawata",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gelinding",
      kataEjaan: "ge.lin.ding",
      kataSahu: "dululu",
      labelKata: "n",
      contohPenggunaan: "-- bola ke arah saya na dudulu yin",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gelisah",
      kataEjaan: "ge.li.sah",
      kataSahu: "omahagayia",
      labelKata: "a",
      contohPenggunaan: "ia (P) -- mo mahagayia",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gelombang",
      kataEjaan: "ge.lom.bang",
      kataSahu: "momoku",
      labelKata: "n",
      contohPenggunaan: "-- di perairan Jailolo momoku toma ngolot Jailolo",
      isBookmarked: 0,
      kataTurunan: ["laut", "udara"],
      terjemahanTurunan: ["momoku toma ngolot", "kakamo dau imoku-moku"],
      kataImbuhan: ["ber.ge.lom.bang"],
      kataImbuhanIndonesia: ["bergelombang"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["imoku-moku"],
      contohPenggunaanImbuhan: [
        "laut ~ saat kapal berlayar ma kapal dai tagi mangolot ne imoku-moku"
      ],
    ),
    Kata(
      kataIndonesia: "gembira",
      kataEjaan: "gem.bi.ra",
      kataSahu: "maroang",
      labelKata: "a",
      contohPenggunaan:
          "hatiku riang -- karena kabar baik itu ngoi to maroang sababu mahabari ge lairousu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gemuk",
      kataEjaan: "ge.muk",
      kataSahu: "lamoo",
      labelKata: "a",
      contohPenggunaan: "tubuhnya -- ngoa ge lau lamoo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "genang, tergenang",
      kataEjaan: "ge.nang, ter.ge.nang",
      kataSahu: "torori",
      labelKata: "v",
      contohPenggunaan:
          "air ~ setelah hujan mabanyo torori o besaa warotuguyiaa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "genggam",
      kataEjaan: "geng.gam",
      kataSahu: " guu",
      labelKata: "n",
      contohPenggunaan: "-- tanganku dan jangan lepaskan guu giam naeyang awaa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gerogot, menggerogoti",
      kataEjaan: "ge.ro.got, meng.ge.ro.go.ti",
      kataSahu: "kabual",
      labelKata: "v",
      contohPenggunaan: "rayap ~ kayu ate ge ikabual",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "ge.sek, ber.ge.sek",
      kataEjaan: "gè.sèk, bèr.gè.sèk",
      kataSahu: "ese",
      labelKata: "v",
      contohPenggunaan: "pohon bambu ~ tonga imau ese",
      isBookmarked: 0,
      kataImbuhan: ["meng.gè.sèk-gè.sèk.kan"],
      kataImbuhanIndonesia: ["mènggèsèk-gèsèkkan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["naese ese"],
      contohPenggunaanImbuhan: [
        "dia ~ sepatu di lantai naese-ese ai sepato toma tehel"
      ],
    ),
    Kata(
      kataIndonesia: "giat",
      kataEjaan: "gi.at",
      kataSahu: "cufala",
      labelKata: "a",
      contohPenggunaan:
          "ia (L) bekerja dengan -- unang (L) ge munara cufala madutu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gigi",
      kataEjaan: "gi.gi",
      kataSahu: "ngidi",
      labelKata: "n",
      contohPenggunaan: "-- adik telah tumbuh ngoolo nage ngidii konyo",
      isBookmarked: 0,
      kataTurunan: ["palsu", "taring"],
      terjemahanTurunan: ["ngidii palsu", "sigi ngidii"],
    ),
    Kata(
      kataIndonesia: "gigit",
      kataEjaan: "gi.git",
      kataSahu: "godii",
      labelKata: "v",
      contohPenggunaan: "-- kuku godii kalcimii",
      isBookmarked: 0,
      kataTurunan: ["jari", "lidah"],
      terjemahanTurunan: ["godii raraga", "godii nyaii"],
      kataImbuhan: ["meng.gi.git", "meng.gi.giti"],
      kataImbuhanIndonesia: ["menggigit", "menggigiti"],
      labelKataImbuhan: [""],
      kataSahuImbuhan: ["igodii", "ogodii"],
      contohPenggunaanImbuhan: [
        "kucing ~ tikus boki igodii nguc",
        "ia ~ buah mangga mentah ogodii guwae magogou"
      ],
    ),
    Kata(
      kataIndonesia: "gila",
      kataEjaan: "gi.la",
      kataSahu: "pona",
      labelKata: "a",
      contohPenggunaan:
          "ia menjadi -- karena tekanan batin opona ai akal kangela",
      isBookmarked: 0,
      kataTurunan: ["harta", "uang"],
      terjemahanTurunan: ["pona hartaa", "pona pipis"],
    ),
    Kata(
      kataIndonesia: "gonggong, menggonggong",
      kataEjaan: "gong.gong, meng.gong.gong",
      kataSahu: "bou",
      labelKata: "v",
      contohPenggunaan: "anjing ~ nunu i bou",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "goreng, menggoreng",
      kataEjaan: "/go.rèng, meng.go.rèng/",
      kataSahu: "sunanga",
      labelKata: "v",
      contohPenggunaan: "ibu ~ pisang ‘ngo meme mosunanga bele",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gores",
      kataEjaan: "gorès",
      kataSahu: "kerese",
      labelKata: "n",
      contohPenggunaan: "jangan kau -- meja itu kerese awa o meja",
      isBookmarked: 0,
      kataImbuhan: ["meng.go.res"],
      kataImbuhanIndonesia: ["menggores"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["menggorés"],
      contohPenggunaanImbuhan: [
        "saya ~ meja dengan pisau ngoii tokerese o meja pake golowa"
      ],
    ),
    Kata(
      kataIndonesia: "gosok, bergosok",
      kataEjaan: "go.sok, ber.go.sok",
      kataSahu: "ese",
      labelKata: "v",
      contohPenggunaan: "ban mobil bergosok di jalanan ban oto ese toma ngoom",
      isBookmarked: 0,
      kataTurunan: ["gigi"],
      terjemahanTurunan: ["ese ngidii"],
      kataImbuhan: ["meng.go.sok"],
      kataImbuhanIndonesia: ["menggosok"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["oese"],
      contohPenggunaanImbuhan: ["dia ~ gigi wunang oese ai ngidii"],
    ),
    Kata(
      kataIndonesia: "gugur",
      kataEjaan: "gu.gur",
      kataSahu: "etaa",
      labelKata: "v",
      contohPenggunaan: "gugur di medan perang wunang o etaa toma prang madara",
      isBookmarked: 0,
      kataTurunan: ["kandungan"],
      terjemahanTurunan: ["ngoa etaa"],
      kataImbuhan: ["meng.gu.gur.kan"],
      kataImbuhanIndonesia: ["menggugurkan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["etaa mingoaa"],
      contohPenggunaanImbuhan: [
        "dia (P) ~ kandungannya munang (P) ge masi etaa mingoaa"
      ],
    ),
    Kata(
      kataIndonesia: "gulung, menggulung",
      kataEjaan: "gu.lung, meng.gu.lung",
      kataSahu: "lolo",
      labelKata: "v",
      contohPenggunaan: "ayah ~ terpal baba o lolo tarpal",
      isBookmarked: 0,
      kataTurunan: ["kertas", "tikar"],
      terjemahanTurunan: ["lolo kertas", "lolo jungutu"],
    ),
    Kata(
      kataIndonesia: "gumam",
      kataEjaan: "gu.mam",
      kataSahu: "mudut",
      labelKata: "n",
      contohPenggunaan: "gumam dia mudut unang",
      isBookmarked: 0,
      kataImbuhan: ["ber.gu.mam"],
      kataImbuhanIndonesia: ["bergumam"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["nomudutu"],
      contohPenggunaanImbuhan: [
        "jangan ~ berbicaralah dengan jelas paeno nomudutu tawa la noka naudii"
      ],
    ),
    Kata(
      kataIndonesia: "gumpal",
      kataEjaan: "gum.pal",
      kataSahu: "bare",
      labelKata: "n",
      contohPenggunaan: "-- tanah tanaa bare moi",
      isBookmarked: 0,
      kataImbuhan: ["ber.gum.pal-gum.pal"],
      kataImbuhanIndonesia: ["bergumpal-gumpal"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["ibare"],
      contohPenggunaanImbuhan: ["darah ~ ngaun ibare"],
    ),
    Kata(
      kataIndonesia: "gunjing, bergunjing",
      kataEjaan: "gun.jing, ber.gun.jing",
      kataSahu: "nikanau",
      labelKata: "v",
      contohPenggunaan: "jangan ~ nikanau ngoa’a manga jiira awaa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "gunung",
      kataEjaan: "gu.nung",
      kataSahu: "kie",
      labelKata: "v",
      contohPenggunaan: "-- Jailolo itu tinggi kie Jailolo laikau’u",
      isBookmarked: 0,
      kataImbuhan: ["ber.gu.nung-gu.nung"],
      kataImbuhanIndonesia: ["bergunung-gunung"],
      labelKataImbuhan: ["a"],
      kataSahuImbuhan: ["ikie-kie"],
      contohPenggunaanImbuhan: ["daerah itu ~ dairaha nage ikie-kie"],
    ),
    Kata(
      kataIndonesia: "gurau",
      kataEjaan: "gu.rau",
      kataSahu: "sedu",
      labelKata: "n",
      contohPenggunaan: "-- dia pada temannya to sedu ai tagilom",
      isBookmarked: 0,
      kataImbuhan: ["ber.gu.rau"],
      kataImbuhanIndonesia: ["bergurau"],
      labelKataImbuhan: ["n"],
      kataSahuImbuhan: ["osedu"],
      contohPenggunaanImbuhan: ["kakak ~ dengan adik osedu ai nongodu’u"],
    ),
    //section H
    Kata(
      kataIndonesia: "habis",
      kataEjaan: "ha.bis",
      kataSahu: "moin",
      labelKata: "a",
      contohPenggunaan: "-- makan omo togum",
      isBookmarked: 0,
      kataTurunan: ["akal", "bulan"],
      terjemahanTurunan: ["moin akal", " ngara moin dua’a"],
      kataImbuhan: ["meng.ha.bis.kan", "ke.ha.bi.san"],
      kataImbuhanIndonesia: ["menghabiskan", "kehabisan"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["asimoin", "rimoin"],
      contohPenggunaanImbuhan: [
        "dia (L) ~ makanan yang diberikan ibu unang (L) asimoin ngongorom ngomeme gaamopulaa",
        "kami uang ngomi mia pipis rimoi"
      ],
    ),
    Kata(
      kataIndonesia: "hadap",
      kataEjaan: "ha.dap",
      kataSahu: "taladii",
      labelKata: "n",
      contohPenggunaan: "-- kanan taladi toma kuwida",
      isBookmarked: 0,
      kataImbuhan: ["ber.ha.dap.an"],
      kataImbuhanIndonesia: ["berhadapan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["tomataladi"],
      contohPenggunaanImbuhan: ["saya ~ dengan Bapak ngoi tomataladii re aba"],
    ),
    Kata(
      kataIndonesia: "hadir",
      kataEjaan: "ha.dir",
      kataSahu: "remaenang",
      labelKata: "v",
      contohPenggunaan:
          "kami -- di tempat itu ngomi remaenang tomangii gena ge",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "halau, menghalau",
      kataEjaan: "ha.lau, meng.ha.lau",
      kataSahu: "dusuu",
      labelKata: "v",
      contohPenggunaan: "saya ~ ayam ngoii to dusuu namo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hambur, berhamburan",
      kataEjaan: "ham.bur, ber.ham.bur.an",
      kataSahu: " aree",
      labelKata: "v",
      contohPenggunaan:
          "mereka mengumpulkan kenari yang ~ anang ilom onyial gaa iaree aree",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hamil",
      kataEjaan: "ha.mil",
      kataSahu: "wool",
      labelKata: "v",
      contohPenggunaan: "wanita itu sedang -- wereaa ge mo wool",
      isBookmarked: 0,
      kataTurunan: ["kembar", "muda", "tua"],
      terjemahanTurunan: ["wool sasala", "mipool warotegor", "totoho oras"],
    ),
    Kata(
      kataIndonesia: "hampar, menghampar",
      kataEjaan: "ha.mpar, meng.ham.par",
      kataSahu: "sela",
      labelKata: "v",
      contohPenggunaan:
          "petani ~ terpal untuk menjemur padi gomi ngoaa guda mi sela o tarpal diaa misi ooel eaa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hancur",
      kataEjaan: "han.cur",
      kataSahu: "mumur",
      labelKata: "a",
      contohPenggunaan:
          "rumah itu -- ditinggal penghuninya wala nagee ri bebee anang sa soii tala",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hangus",
      kataEjaan: "ha.ngus",
      kataSahu: " rouu",
      labelKata: "a",
      contohPenggunaan: "nasi itu telah -- bira ge irouu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hantar, menghantarkan",
      kataEjaan: "han.tar, meng.han.tar.kan",
      kataSahu: "singataa",
      labelKata: "v",
      contohPenggunaan: "mereka ~ orang itu anang singataa ngoaa gena ge",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hantu",
      kataEjaan: "han.tu",
      kataSahu: "caat",
      labelKata: "n",
      contohPenggunaan: "dia melihat -- wunang wo moodi caat",
      isBookmarked: 0,
      kataImbuhan: ["ber.han.tu"],
      kataImbuhanIndonesia: ["berhantu"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["remacaat"],
      contohPenggunaanImbuhan: ["rumah itu ~ wala nage remacaat"],
    ),
    Kata(
      kataIndonesia: "hanyut",
      kataEjaan: "ha.nyut",
      kataSahu: "raring",
      labelKata: "v",
      contohPenggunaan: "dia -- di sungai wunang oraring toma ngalar",
      isBookmarked: 0,
      kataImbuhan: ["meng.ha.nyut.kan"],
      kataImbuhanIndonesia: ["menghanyutkan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["isiraring"],
      contohPenggunaanImbuhan: [
        "banjir ~ rumah penduduk ngo uisi isiraring ngoaa manga wala"
      ],
    ),
    Kata(
      kataIndonesia: "hapus",
      kataEjaan: "ha.pus",
      kataSahu: "pii",
      labelKata: "v",
      contohPenggunaan: "-- air matamu pii ongor",
      isBookmarked: 0,
      kataImbuhan: ["meng.ha.pus"],
      kataImbuhanIndonesia: ["menghapus"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["opii"],
      contohPenggunaanImbuhan: [
        "kakak ~ coretan di dinding io opii konuu magegelo"
      ],
    ),
    Kata(
      kataIndonesia: "harap",
      kataEjaan: "ha.rap",
      kataSahu: "singanon",
      labelKata: "v",
      contohPenggunaan:
          "saya -- Bapak Kepala Desa berkenan hadir ngoi singanon Kapala Desa o sapol",
      isBookmarked: 0,
      kataImbuhan: ["ber.ha.rap"],
      kataImbuhanIndonesia: ["berharap"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["singanono"],
      contohPenggunaanImbuhan: [
        "saya ~ anda bisa hadir ngoi toma singanono ngana remaenang"
      ],
    ),
    Kata(
      kataIndonesia: "harga",
      kataEjaan: "har.ga",
      kataSahu: "maijang",
      labelKata: "n",
      contohPenggunaan: "-- beras mengalami kenaikan ea maijang nei pere",
      isBookmarked: 0,
      kataTurunan: ["diri", "pasar", "pas", "kawin"],
      terjemahanTurunan: [
        "lese maijang",
        "ijang toma butu",
        "maijang geba ge duaa",
        "mahasil"
      ],
    ),
    Kata(
      kataIndonesia: "hari",
      kataEjaan: "ha.ri",
      kataSahu: "wanger",
      labelKata: "n",
      contohPenggunaan: "kami berangkat -- ini ngomi mi tagi wanger nangene",
      isBookmarked: 0,
      kataTurunan: ["adi", "natal", "sok", "lebaran", "sial"],
      terjemahanTurunan: [
        "musun tero",
        "natal mawangere",
        "dadain",
        "wanger lamoo",
        "wanger majira"
      ],
      kataImbuhan: ["ber.ha.ri-ha.ri", "se.ha.ri.an"],
      kataImbuhanIndonesia: ["berhari-hari", "seharian"],
      labelKataImbuhan: ["v", "adv"],
      kataSahuImbuhan: ["wangemoi-wangemoi"],
      contohPenggunaanImbuhan: [
        "mereka melakukan perjalanan ~ anang ditagi wangemoi-wangemoi",
        "~ ini kami di kebun wanger nangene ngomi toma guda’a"
      ],
    ),
    Kata(
      kataIndonesia: "harum",
      kataEjaan: "ha.rum",
      kataSahu: "boun",
      labelKata: "a",
      contohPenggunaan: "bunga melati sangat -- bunga melati lai boun",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "harus",
      kataEjaan: "ha.rus",
      kataSahu: "balasu",
      labelKata: "adv",
      contohPenggunaan: "kami -- pergi ngomi balasu mi tagi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hasil",
      kataEjaan: "ha.sil",
      kataSahu: "mahasil",
      labelKata: "n",
      contohPenggunaan:
          "-- yang diperolehnya memuaskan mahasil yang ngoi to dugal",
      isBookmarked: 0,
      kataTurunan: ["bagi", "utama"],
      terjemahanTurunan: ["mau sibalang", "mahasil mamulain"],
      kataImbuhan: ["ber.ha.sil"],
      kataImbuhanIndonesia: ["berhasil"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["iberhasil"],
      contohPenggunaanImbuhan: ["mereka telah ~ anang iberhasil"],
    ),
    Kata(
      kataIndonesia: "hati",
      kataEjaan: "ha.ti",
      kataSahu: "akal",
      labelKata: "n",
      contohPenggunaan: "baik -- akal rouss",
      isBookmarked: 0,
      kataTurunan: ["kecil"],
      terjemahanTurunan: ["akal magoa"],
      kataImbuhan: ["ber.ha.ti"],
      kataImbuhanIndonesia: ["berhati"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["dia (L) ~ baik unang (L) aiakal lairous"],
    ),
    Kata(
      kataIndonesia: "haus",
      kataEjaan: "ha.us",
      kataSahu: "madang dudung",
      labelKata: "a",
      contohPenggunaan: "saya merasa -- ngoi tobason madang dudung",
      isBookmarked: 0,
      kataTurunan: ["dahaga"],
      terjemahanTurunan: ["madang dudung madutu"],
    ),
    Kata(
      kataIndonesia: "hemat",
      kataEjaan: "he.mat /hèmat/",
      kataSahu: "talaaa",
      labelKata: "a",
      contohPenggunaan: "uang taalaa matalaa",
      isBookmarked: 0,
      kataImbuhan: ["ber.he.mat"],
      kataImbuhanIndonesia: ["berhemat"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["matalaa"],
      contohPenggunaanImbuhan: ["mari ~ yino matalaa"],
    ),
    Kata(
      kataIndonesia: "henti, berhenti",
      kataEjaan: "hen.ti, ber.hen.ti",
      kataSahu: "togum",
      labelKata: "v",
      contohPenggunaan: "mobil ~ di depan rumah oto i togum toma wala mangang",
      isBookmarked: 0,
      kataImbuhan: ["meng.hen.ti.kan"],
      kataImbuhanIndonesia: ["menghentikan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["sitogum"],
      contohPenggunaanImbuhan: ["mereka ~ kegiatan itu anang sitogum munara"],
    ),
    Kata(
      kataIndonesia: "hias, berhias",
      kataEjaan: "hi.as, ber.hias",
      kataSahu: "ferese",
      labelKata: "v",
      contohPenggunaan: "dia (P) pandai berhias munang mo warija ferese",
      isBookmarked: 0,
      kataImbuhan: ["meng.hi.as"],
      kataImbuhanIndonesia: ["menghias"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["diferes"],
      contohPenggunaanImbuhan: ["mereka ~ panggung anang diferes o panggung"],
    ),
    Kata(
      kataIndonesia: "hidang, menghidangkan",
      kataEjaan: "hi.dang, meng.hi.dang.kan",
      kataSahu: "liani",
      labelKata: "v",
      contohPenggunaan: "ibu ~ makanan ngo meme moliani ngongorom",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hidung",
      kataEjaan: "hi.dung",
      kataSahu: "ngunung",
      labelKata: "n",
      contohPenggunaan: "-- saya terasa gatal ngunung ilaor",
      isBookmarked: 0,
      kataTurunan: ["betet"],
      terjemahanTurunan: ["ngungung pese"],
    ),
    Kata(
      kataIndonesia: "hidup",
      kataEjaan: "hi.dup",
      kataSahu: " ahu",
      labelKata: "v",
      contohPenggunaan: "-- manusia di dunia ahu ngoaa toma dunia",
      isBookmarked: 0,
      kataImbuhan: ["meng.hi.dupi"],
      kataImbuhanIndonesia: ["menghidupi"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["siahu"],
      contohPenggunaanImbuhan: ["ayah ~ keluarga baba siahu ai ngale"],
    ),
    Kata(
      kataIndonesia: "hijau",
      kataEjaan: "hi.jau",
      kataSahu: "ijo",
      labelKata: "a",
      contohPenggunaan: "daun berwarna -- soaa ijo",
      isBookmarked: 0,
      kataTurunan: ["lumut"],
      terjemahanTurunan: ["ijo lumut"],
      kataImbuhan: ["meng.hi.jau"],
      kataImbuhanIndonesia: ["menghijau"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["ijo-ijo"],
      contohPenggunaanImbuhan: ["tanaman itu ~ sosoan ge ijo-ijo"],
    ),
    Kata(
      kataIndonesia: "hilang",
      kataEjaan: "hi.lang",
      kataSahu: "yirang",
      labelKata: "a",
      contohPenggunaan: "buku saya telah -- boku wartatibo ge iyirang",
      isBookmarked: 0,
      kataTurunan: ["akal", "malu", "nyawa", "semangat"],
      terjemahanTurunan: [
        "akal yirang",
        "mara yirang",
        "nyawa yirang",
        "akal rapo"
      ],
      kataImbuhan: [
        "ke.hi.lang.an",
        "meng.hi.lang",
        "meng.hi.lang.kan",
        "peng.hi.lang"
      ],
      kataImbuhanIndonesia: [
        "kehilangan",
        "menghilang",
        "menghilangkan",
        "penghilang"
      ],
      labelKataImbuhan: ["n", "v", "v", "n"],
      kataSahuImbuhan: ["iyirang", "omayirang", "asiyirang", "siyirang"],
      contohPenggunaanImbuhan: [
        "dia ~ barang bawaannya unang (L) ai barang ge iyirang",
        "dia (L) ~ sejak semalam unang omayirang auutu moju",
        "~ jerawat di wajah asiyirang biido ma moii toma bion",
        "0bat ~ rasa sakit sou siyirang bason sisidii"
      ],
    ),
    Kata(
      kataIndonesia: "hindar, menghindar",
      kataEjaan: "hin.dar, meng.hin.dar",
      kataSahu: "mastiar",
      labelKata: "v",
      contohPenggunaan: "anak itu ~ dari pukulan ngoolo nage omastiar dutuu",
      isBookmarked: 0,
      kataImbuhan: ["meng.hin.dar.i"],
      kataImbuhanIndonesia: ["menghindari"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["mastiari"],
      contohPenggunaanImbuhan: [
        "mereka ~ jalanan itu anang mastiari ngoom gena ge"
      ],
    ),
    Kata(
      kataIndonesia: "hinggap",
      kataEjaan: "hing.gap",
      kataSahu: "terang",
      labelKata: "v",
      contohPenggunaan: "kupu-kupu -- di bunga nganga terang toma bungao",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hitam",
      kataEjaan: "hi.tam",
      kataSahu: "kotuu",
      labelKata: "a",
      contohPenggunaan: "baju warna -- baju kotuu",
      isBookmarked: 0,
      kataTurunan: ["berkilat", "mata"],
      terjemahanTurunan: ["kotuu licin", "lao kotuu"],
      kataImbuhan: ["meng.hi.tam"],
      kataImbuhanIndonesia: ["menghitam"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["ikotuu"],
      contohPenggunaanImbuhan: ["awan ~ kakamo ikotuu"],
    ),
    Kata(
      kataIndonesia: "hitung",
      kataEjaan: "hi.tung",
      kataSahu: "roim",
      labelKata: "v",
      contohPenggunaan: "-- uang roim pipis",
      isBookmarked: 0,
      kataTurunan: ["panjang"],
      terjemahanTurunan: ["punya roim"],
      kataImbuhan: ["ber.hi.tung", "meng.hi.tungi"],
      kataImbuhanIndonesia: ["berhitung", "menghitungi"],
      labelKataImbuhan: ["v", "v"],
      kataSahuImbuhan: ["noroim", "oroim"],
      contohPenggunaanImbuhan: [
        "adik belajar ~ nongodu noroim",
        "anak itu ~ bintang di langit ongoolo nage oroim momudung dau toma diwan"
      ],
    ),
    Kata(
      kataIndonesia: "hormat",
      kataEjaan: "hor.mat",
      kataSahu: "tabee",
      labelKata: "a",
      contohPenggunaan: "sikap -- bendera duhu tabee bendera merah putih",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "hubung, berhubung",
      kataEjaan: "hu.bung, ber.hu.bung",
      kataSahu: "dowang",
      labelKata: "v",
      contohPenggunaan:
          "rumah kakek ~ ke rumah kami tete ai wala ge i mau’u dowang re ngomi",
      isBookmarked: 0,
      kataImbuhan: ["ber.hu.bu.ngan", "hu.bu.ngan"],
      kataImbuhanIndonesia: ["berhubungan", "hubungan"],
      labelKataImbuhan: ["v", "n"],
      kataSahuImbuhan: ["maudowang", "nangadowang"],
      contohPenggunaanImbuhan: [
        "mereka ~ baik anang di maudowan ge lairous",
        "menjaga ~ baik maujaga nangadowan rousu"
      ],
    ),
    Kata(
      kataIndonesia: "hujan",
      kataEjaan: "hu.jan",
      kataSahu: "besaa",
      labelKata: "n",
      contohPenggunaan: "hujan di pagi hari madainia ge i besa",
      isBookmarked: 0,
      kataTurunan: ["angin", "deras", "gerimis", "musiman", "panas"],
      terjemahanTurunan: [
        "besaa re makuruwian",
        "besaa lamoo",
        "besaa obung",
        "besaa maoras",
        "besaa rema wanger"
      ],
      kataImbuhan: ["ber.hu.jan-hu.jan"],
      kataImbuhanIndonesia: ["berhujan-hujan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["bisa besaa"],
      contohPenggunaanImbuhan: ["adik bermain – ngooloo bisa besa’a"],
    ),
    Kata(
      kataIndonesia: "hutan",
      kataEjaan: "hu.tan",
      kataSahu: "bangan",
      labelKata: "n",
      contohPenggunaan:
          "banyak pohon di -- sudah ditebang aate toma bangan yatawel duaa moin",
      isBookmarked: 0,
      kataTurunan: ["belantara"],
      terjemahanTurunan: ["bangan latus"],
      kataImbuhan: ["meng.hu.tan"],
      kataImbuhanIndonesia: ["menghutan"],
      labelKataImbuhan: ["v"],
      kataSahuImbuhan: ["babangan"],
      contohPenggunaanImbuhan: ["lahan itu sudah ~ jalame ge ri babanga"],
    ),
    Kata(
      kataIndonesia: "hutang",
      kataEjaan: "hu.tang",
      kataSahu: "banyator",
      labelKata: "n",
      contohPenggunaan: "-- harus dibayar banyator ge na fang",
      isBookmarked: 0,
      kataTurunan: ["budi", "nyawa"],
      terjemahanTurunan: ["mabalas manga soro ie re gugasa", "banyator"],
    ),
    //section I
    Kata(
      kataIndonesia: "ibu",
      kataEjaan: "ibu",
      kataSahu: "meme",
      labelKata: "n",
      contohPenggunaan: "-- sedang memasak meme mo masaai",
      isBookmarked: 0,
      kataTurunan: [" jari", "kandung", "mertua", "tiri"],
      terjemahanTurunan: ["tobolelar", "ngina madutu", "dedon", "ngina bau"],
    ),
    Kata(
      kataIndonesia: "igau, mengigau",
      kataEjaan: "igau, meng.i.gau",
      kataSahu: "tagadusar",
      labelKata: "v",
      contohPenggunaan: " dia (L) ~ saat tidur wunang o otuu duaa tagadusar",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "ikan",
      kataEjaan: "ikan",
      kataSahu: "nyaoo",
      labelKata: "n",
      contohPenggunaan:
          "paman mengail ikan di laut baba manyira magaolo nyaoo toma olot",
      isBookmarked: 0,
      kataTurunan: ["asap", "asin", "laut", "teri"],
      terjemahanTurunan: [
        "nyaoo wuwu",
        "nyaoo ngolot",
        "nyaoo ngolot",
        "nyaoo ube"
      ],
    ),
    Kata(
      kataIndonesia: "ikat",
      kataEjaan: "ikat",
      kataSahu: "pinyiu",
      labelKata: "n",
      contohPenggunaan:
          "ibu memberikan -- rambut kepada saya ngo meme mo pula saee mabibiliu re ngoi",
      isBookmarked: 0,
      kataTurunan: ["kepala", "pinggang"],
      terjemahanTurunan: ["saee ma bibinyiu", "golona ma bibinyiu"],
    ),
    Kata(
      kataIndonesia: "ikhlas",
      kataEjaan: "ikhlas",
      kataSahu: "loasa",
      labelKata: "a",
      contohPenggunaan:
          " kita harus -- menghadapi cobaan hidup ngoi to loasa tananga ahu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "ikrar",
        kataEjaan: "ikrar",
        kataSahu: "jaji",
        labelKata: "n",
        contohPenggunaan:
            "jangan melanggar -- di tempat suci napilisi awa nanga jaji toma ngii suci",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.ik.rar"
        ],
        kataImbuhanIndonesia: [
          "berikrar"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "imaujaji"
        ],
        contohPenggunaanImbuhan: [
          "para pemuda ~ untuk bersatu tubuiye dimaujaji"
        ]),
    Kata(
      kataIndonesia: "ikut",
      kataEjaan: "ikut",
      kataSahu: "metee",
      labelKata: "v",
      contohPenggunaan: ": kami -- ayah ke kebun ngomi metee baba tagi guda",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "imbau, mengimbau",
      kataEjaan: "im.bau, meng.im.bau",
      kataSahu: "sieling",
      labelKata: "v",
      contohPenggunaan:
          "kepala sekolah ~ murid-murid sudah tiba di sekolah pukul 7 pagi kepala sekolah sieling murid sapol caool tumding",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "ingat",
        kataEjaan: "ingat",
        kataSahu: "eling",
        labelKata: "v",
        contohPenggunaan: "-- pesan ibu ngo meme mi bererong ge na eling",
        isBookmarked: 0,
        kataImbuhan: [
          "ingat-ingat",
          "meng.i.ngat.kan",
          "se.i.ngat"
        ],
        kataImbuhanIndonesia: [
          "ingat-ingat",
          "mengingatkan",
          "seingat"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v",
          "adv"
        ],
        kataSahuImbuhan: [
          "naeling-eling",
          "aieling",
          "mosieling",
          "tasieling"
        ],
        contohPenggunaanImbuhan: [
          "cobalah ~ peristiwa itu coba naeling-eling peristiwa gena ge",
          "ia (P) ~ masih kejadian itu munang (P) aieling mujo peristiwa gena’a",
          "ibu ~ adik agar rajin belajar ngo meme mosieling nomadotoo turus",
          "saya semua masih seperti dulu ngoi tasieling iye matero saol masida moju"
        ]),
    Kata(
        kataIndonesia: "ingin",
        kataEjaan: "ingin",
        kataSahu: "nyafus",
        labelKata: "adv",
        contohPenggunaan: "mereka -- ke pantai anang inyafus soo dai ngolot",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.i.ngini"
        ],
        kataImbuhanIndonesia: [
          "mengingini"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "anyafus"
        ],
        contohPenggunaanImbuhan: [
          " dia (P) ~ sepatu itu munang (P) ~ anyafus sapatu gena ge"
        ]),
    Kata(
      kataIndonesia: "ingkar",
      kataEjaan: "ing.kar",
      kataSahu: "jaji osasakal",
      labelKata: "v",
      contohPenggunaan: "jangan -- janji ojaji nosasakal awa",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "ingus",
        kataEjaan: "ingus",
        kataSahu: "sadangut",
        labelKata: "n",
        contohPenggunaan:
            "ibu mengelap -- adik ngo meme mo piis sadangut re nongodu",
        isBookmarked: 0,
        kataImbuhan: [
          "ingus.an"
        ],
        kataImbuhanIndonesia: [
          "ingusan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "osadangu"
        ],
        contohPenggunaanImbuhan: [
          "sudah dua hari adik ~ re wange didi duaa ngoolo ne osadangut"
        ]),
    Kata(
        kataIndonesia: "injak, menginjak",
        kataEjaan: "in.jak, meng.in.jak",
        kataSahu: "tou",
        labelKata: "v",
        contohPenggunaan: " ayah ~ lantai baba o tou lante;",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.in.jak-in.jak",
          "meng.injak.kan",
          "ter.in.jak"
        ],
        kataImbuhanIndonesia: [
          "menginjak-injak",
          "menginjakkan",
          "terinjak"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "toutou",
          "mitou",
          "sangatou"
        ],
        contohPenggunaanImbuhan: [
          "mereka ~ rumput anang o toutou rurubu",
          "kami baru pertama kali ~ kaki di desa ini ngomi waro nena ne mitou gam",
          "kaki adik ~ ngoolo nage ai rou sangatou"
        ]),
    Kata(
      kataIndonesia: "iri",
      kataEjaan: "iri",
      kataSahu: "kaledaa",
      labelKata: "a",
      contohPenggunaan: "jauhi sikap -- sikidang akal ma kaleda’a",
      isBookmarked: 0,
      kataTurunan: ["hati"],
      terjemahanTurunan: ["kaledaa akal masisidii"],
    ),
    Kata(
      kataIndonesia: "iris, mengiris",
      kataEjaan: "iris, mengiris",
      kataSahu: "reno",
      labelKata: "n",
      contohPenggunaan: "ibu ~ bawang ngo meme mo reno bawang maso",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "isi",
        kataEjaan: "isi",
        kataSahu: "la'em",
        labelKata: "n",
        contohPenggunaan: "-- perut ikan nyaoo ma la`em",
        isBookmarked: 0,
        kataTurunan: [
          "hati",
          "perut",
          "rumah",
          "kampung"
        ],
        terjemahanTurunan: [
          "akal madara",
          "pool madara",
          "wala madara",
          "gam madara"
        ],
        kataImbuhan: [
          "ber.isi"
        ],
        kataImbuhanIndonesia: [
          "berisi"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "rilaem"
        ],
        contohPenggunaanImbuhan: [
          "padi yang kami tanam sudah ~ ea gaa wa tuju ge ri laem"
        ]),
    Kata(
        kataIndonesia: "istirahat, beristirahat",
        kataEjaan: "is.ti.ra.hat, ber.is.ti.ra.hat",
        kataSahu: "mangomas",
        labelKata: "v",
        contohPenggunaan:
            "mereka ~ setelah melakukan perjalanan jauh anang dimangomas manga dodagi laikidang",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.is.ti.ra.hat.kan"
        ],
        kataImbuhanIndonesia: [
          "mengistirahatkan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "asingomas"
        ],
        contohPenggunaanImbuhan: [
          "pemimpin pasukan ~ pasukannya kapita osingomas pasukan"
        ]),
    Kata(
        kataIndonesia: "istri",
        kataEjaan: "is.tri",
        kataSahu: "wereaa",
        labelKata: "n",
        contohPenggunaan:
            "-- istri kepala desa sangat ramah yiraa ai wereaa monyelo-nyeloo mitang",
        isBookmarked: 0,
        kataTurunan: [
          "gelap"
        ],
        terjemahanTurunan: [
          "gugurang werea"
        ],
        kataImbuhan: [
          "ber.is.tri"
        ],
        kataImbuhanIndonesia: [
          "beristri"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "aiwereaa"
        ],
        contohPenggunaanImbuhan: [
          "dia ~ perempuan dari desa tetangga wunang ai wereaa gam masebang"
        ]),
    Kata(
      kataIndonesia: "izin",
      kataEjaan: "izin",
      kataSahu: "goloo",
      labelKata: "n",
      contohPenggunaan:
          "saya minta -- kepada bapak untuk menandatangani surat ini ngoi toma goloo re baba nasilefo tala ngoi ri surat",
      isBookmarked: 0,
      kataTurunan: ["mengemudi", "usaha"],
      terjemahanTurunan: ["mangoloo gasa oto", "goloo usaha mangoloo"],
    ),
    //section J
    Kata(
        kataIndonesia: "jadi",
        kataEjaan: "ja.di",
        kataSahu: "dadi",
        labelKata: "v",
        contohPenggunaan: "pergi ngomi mi tagi dai toma ngolot",
        isBookmarked: 0,
        kataImbuhan: [
          "men.ja.di",
          "men.ja.di-ja.di",
          "men.ja.di.kan",
          "sejadi-jadinya"
        ],
        kataImbuhanIndonesia: [
          "menjadi",
          "menjadi-jadi",
          "menjadikan",
          "sejadi-jadinya"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v",
          "adv"
        ],
        kataSahuImbuhan: [
          "idadi",
          "idadi-dadi",
          "sidadi",
          "dadidadi"
        ],
        contohPenggunaanImbuhan: [
          "benih padi anakan padi gisisi idadi wea mangoa",
          "kelakuannya semakin ai duhu idadi-dadi",
          "petani lahan itu subur anang sidadi guda ge na ge isubur",
          "anak itu menangis ngoolo nage adi dadidadi"
        ]),
    Kata(
      kataIndonesia: "jaga",
      kataEjaan: "ja.ga",
      kataSahu: "dadanu",
      labelKata: "v",
      contohPenggunaan:
          "penduduk desa bergantian melakukan -- malam masyarakat anang di mau ngali dadanu lobii",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "jago",
      kataEjaan: "ja.go",
      kataSahu: "jago",
      labelKata: "n",
      contohPenggunaan: "orang itu -- bela diri wunang ge jago bela diri",
      isBookmarked: 0,
      kataTurunan: ["merah"],
      terjemahanTurunan: ["jago kolil"],
    ),
    Kata(
      kataIndonesia: "jagung",
      kataEjaan: "ja.gung",
      kataSahu: "katela",
      labelKata: "n",
      contohPenggunaan:
          "ibu menanam -- di kebun ngo meme mosoan katela toma guda’a",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "jahat",
        kataEjaan: "ja.hat",
        kataSahu: "tataruta",
        labelKata: "a",
        contohPenggunaan: "orang itu -- wunang getataruta",
        isBookmarked: 0,
        kataImbuhan: [
          "men.ja.hati",
          "pen.ja.hat",
          "ke.ja.hat.an"
        ],
        kataImbuhanIndonesia: [
          "menjahati",
          "penjahat",
          "kejahatan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "noruta",
          "garuta",
          "noruta-ruta"
        ],
        contohPenggunaanImbuhan: [
          "jangan ~ orang noruta rengoaa awa",
          "~ itu sudah ditangkap wunang ge garuta-ruta ge ro sanga cakoo",
          "~ pasti ditangkap wunang ge garuta-ruta ge ro sanga cakoo"
        ]),
    Kata(
      kataIndonesia: "jahe",
      kataEjaan: "ja.he /jahè/",
      kataSahu: "galaa",
      labelKata: "n",
      contohPenggunaan: "petani menanam -- ngoa guda otom galaa",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "jahit",
        kataEjaan: "ja.hit",
        kataSahu: "din",
        labelKata: "v",
        contohPenggunaan: "--baju din baju",
        isBookmarked: 0,
        kataTurunan: [
          "tangan"
        ],
        terjemahanTurunan: [
          "din giam"
        ],
        kataImbuhan: [
          "men.ja.hit",
          "pen.ja.hit",
          "ja.hit.an"
        ],
        kataImbuhanIndonesia: [
          "menjahit",
          "penjahit",
          "jahitan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "modin",
          "tukang din",
          "aidin"
        ],
        contohPenggunaanImbuhan: [
          "ibu ~ baju kakak yang sobek ngo meme modin aio ai baju gaa acim",
          "~ itu menjahit baju ayah tukang din ge o din baba ai baju",
          "hasil ~ angat rapi wunang aidin e lairous"
        ]),
    Kata(
      kataIndonesia: "jalan",
      kataEjaan: "ja.lan",
      kataSahu: "ngoom",
      labelKata: "n",
      contohPenggunaan:
          "-- di Desa Tacim berlubang ngoom toma gam Tacim ge itusoo",
      isBookmarked: 0,
      kataTurunan: ["bebas", "hidup", "tikus"],
      terjemahanTurunan: ["ngoom luas", "ahu mangoom", "nguti mangoom"],
    ),
    Kata(
        kataIndonesia: "jalar",
        kataEjaan: "ja.lar",
        kataSahu: "rarat",
        labelKata: "v",
        contohPenggunaan:
            "ubi -- yang ditanam nenek sudah menjalar olamee ga ngo bii mosoan ge ri rarat",
        isBookmarked: 0,
        kataImbuhan: ["men.ja.lar"],
        kataImbuhanIndonesia: ["menjalar"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: [" rirarat"],
        contohPenggunaanImbuhan: ["api itu sudah ~ wuu ge rirarat"]),
    Kata(
        kataIndonesia: "jalin",
        kataEjaan: "ja.lin",
        kataSahu: "rimoin",
        labelKata: "v",
        contohPenggunaan:
            "-- persaudaraan sesama suku Halmahera Barat ngene nee ngoaa Halmahera Barat rimoin",
        isBookmarked: 0,
        kataImbuhan: [
          "men.ja.lin",
          "ja.lin.an"
        ],
        kataImbuhanIndonesia: [
          "menjalin",
          "jalinan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sirimoi",
          "womarimoi"
        ],
        contohPenggunaanImbuhan: [
          "~ ikatan persaudaraan ngene sirimoi giyangodu",
          "~ kasih antarsesama manusia ngene womarimoi matengo rema tengo"
        ]),
    Kata(
        kataIndonesia: "jam",
        kataEjaan: "jam",
        kataSahu: "jam",
        labelKata: "n",
        contohPenggunaan: "-- tangan dibeli ayah baba o tibo jam giam",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.jam-jam"
        ],
        kataImbuhanIndonesia: [
          "berjam-jam"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "jam-jam"
        ],
        contohPenggunaanImbuhan: [
          "kami menunggu orang itu ~ ngomi mitotoma anang ge rema jam-jam"
        ]),
    Kata(
        kataIndonesia: "jambak",
        kataEjaan: "jam.bak",
        kataSahu: "rofu",
        labelKata: "v",
        contohPenggunaan: "jambak rambut rofu utu",
        isBookmarked: 0,
        kataImbuhan: [
          "men.jam.bak"
        ],
        kataImbuhanIndonesia: [
          "menjambak"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "morofu"
        ],
        contohPenggunaanImbuhan: [
          "dia (P) ~ rambut temannya munang morofu amidagilom mi utu"
        ]),
    Kata(
      kataIndonesia: "jamban",
      kataEjaan: "jam.ban",
      kataSahu: "dudum",
      labelKata: "n",
      contohPenggunaan: "membersihkan -- siofi dudum",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "jambret",
        kataEjaan: "jam.bret /jambrèt/",
        kataSahu: "torrii",
        labelKata: "v",
        contohPenggunaan: "-- tas ibu orang ngoaa ya torii ngo yaya mi tas",
        isBookmarked: 0,
        kataImbuhan: [
          "men.jam.bret /menjambrèt/",
          "pen.jam.bret /penjambrèt/"
        ],
        kataImbuhanIndonesia: [
          "menjambret /menjambrèt/",
          "penjambret /penjambrèt/"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "otori",
          "tori-tori"
        ],
        contohPenggunaanImbuhan: [
          "orang itu ~ tas seorang ibu yang baru turun dari mobil ngoa gen age o tori ngo yaya mi tas waro mo uci toma oto",
          "~ itu ditangkap polisi tori-tori ge pulisi ro cakoo"
        ]),
    Kata(
      kataIndonesia: "jambu",
      kataEjaan: "jam.bu",
      kataSahu: "guwidu",
      labelKata: "n",
      contohPenggunaan:
          "ayah menanam -- di kebun baba o soan guwidu toma guda’a",
      isBookmarked: 0,
      kataTurunan: ["air", "biji", "mete"],
      terjemahanTurunan: ["gogola", "giyawas", "buah yakis"],
    ),
    Kata(
      kataIndonesia: "jampi",
      kataEjaan: "jam.pi",
      kataSahu: "guna-guna",
      labelKata: "n",
      contohPenggunaan: "orang itu menyiapkan -- ngoa nage sidudahi guna-guna",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "jamur",
      kataEjaan: "ja.mur",
      kataSahu: "keho",
      labelKata: "n",
      contohPenggunaan:
          "banyak -- tumbuh di hutan keho lairepe konyo toma banga",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "janda",
        kataEjaan: "jan.da",
        kataSahu: "balo",
        labelKata: "n",
        contohPenggunaan: "-- muda balo ngoolo",
        isBookmarked: 0,
        kataImbuhan: ["men.jan.da"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["obalo"],
        contohPenggunaanImbuhan: ["wanita itu telah ~ munang ge rom obalo"]),
    Kata(
      kataIndonesia: "jangan",
      kataEjaan: "ja.ngan",
      kataSahu: "awa",
      labelKata: "adv",
      contohPenggunaan:
          "-- mengambil barang milik orang lain no oro ngoa manga barang awa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "janggut",
      kataEjaan: "jang.gut",
      kataSahu: "kukum",
      labelKata: "n",
      contohPenggunaan: "-- ayah cukup lebat baba ai kukum kapirin",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "jangkar",
        kataEjaan: "jang.kar",
        kataSahu: "jangkar",
        labelKata: "n",
        contohPenggunaan:
            "-- perahu diturunkan kakek agar tidak dibawa ombak ooti majangkar nasiguti obao ya gasa awa",
        isBookmarked: 0,
        kataImbuhan: [
          "men.jang.kar"
        ],
        kataImbuhanIndonesia: [
          "menjangkar"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "majangkar"
        ],
        contohPenggunaanImbuhan: [
          "kapal ~ di pelabuhan kapal majangkar toma bobane"
        ]),
    Kata(
        kataIndonesia: "jangkau",
        kataEjaan: "jang.kau",
        kataSahu: "ngadol",
        labelKata: "n",
        contohPenggunaan: "-- tempat itu ta ngadol ngii gen",
        isBookmarked: 0,
        kataImbuhan: [
          "men.jang.kau"
        ],
        kataImbuhanIndonesia: [
          "menjangkau"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "mingadol"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ pantai yang letakknya cukup jauh dari desa kami ngomi mingadol toma pante gen age ikidang re ngomi minga gam"
        ]),
    Kata(
        kataIndonesia: "jangkit",
        kataEjaan: "jang.kit",
        kataSahu: "gasala",
        labelKata: "v",
        contohPenggunaan:
            "ternak ayam warga dijangkiti penyakit namo toma gam ne bubaku ya ngaun",
        isBookmarked: 0,
        kataImbuhan: [
          "men.jang.kiti"
        ],
        kataImbuhanIndonesia: [
          "menjangkiti"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "igasala"
        ],
        contohPenggunaanImbuhan: [
          "penyakit ~ warga opanyake igalasa ngoa repe"
        ]),
    Kata(
      kataIndonesia: "jangkrik",
      kataEjaan: "jang.krik",
      kataSahu: "karaa",
      labelKata: "n",
      contohPenggunaan: "suara -- di malam hari karaa ma yiding toma lolobi",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "janji",
        kataEjaan: "jan.ji",
        kataSahu: "jaji",
        labelKata: "n",
        contohPenggunaan: "dia (L) menepati -- wunang (L) ocakol jaji",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.jan.ji",
          "men.jan.ji.kan"
        ],
        kataImbuhanIndonesia: [
          "berjanji",
          "menjanjikan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "jaji",
          "dijaji"
        ],
        contohPenggunaanImbuhan: [
          "dia (L) telah ~ wunang (L) oma jaji",
          "pemerintah ~ bantuan pupuk untuk petani pemerintah dijaji pupuk dia masyarakat"
        ]),
    Kata(
      kataIndonesia: "jantan",
      kataEjaan: "jan.tan",
      kataSahu: "nauu",
      labelKata: "n",
      contohPenggunaan: "ayam -- milik kakek tete ai namo manauu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "jantung",
        kataEjaan: "jan.tung",
        kataSahu: "kater",
        labelKata: "n",
        contohPenggunaan: "-- berdetak kater tusu",
        isBookmarked: 0,
        kataTurunan: ["pisang"],
        terjemahanTurunan: ["bele mausis"],
        kataImbuhan: ["ber.jan.tung"],
        kataImbuhanIndonesia: ["berjantung"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["ojantungan"],
        contohPenggunaanImbuhan: ["orang itu ~ lemah ngoa ge ojantungan"]),
    Kata(
        kataIndonesia: "jarak",
        kataEjaan: "ja.rak",
        kataSahu: "kidang",
        labelKata: "n",
        contohPenggunaan:
            "-- kota Jailolo ke Desa Taraudu sejauh 16 kilometer gaa Jailolo ngadol Gam Taraudu ge magidang kilo nyangi moi re raram",
        isBookmarked: 0,
        kataTurunan: [
          "jauh"
        ],
        terjemahanTurunan: [
          "lai kidang"
        ],
        kataImbuhan: [
          "men.ja.rak"
        ],
        kataImbuhanIndonesia: [
          "menjarak"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "makikidang"
        ],
        contohPenggunaanImbuhan: [
          "dia (L) semakin ~ unang (L) o ganapu makikidang"
        ]),
    Kata(
        kataIndonesia: "jari",
        kataEjaan: "ja.ri",
        kataSahu: "raraga",
        labelKata: "n",
        contohPenggunaan:
            "-- tangannya cekatan mengetik ai raraga ge warija madutu",
        isBookmarked: 0,
        kataTurunan: [
          "ayam",
          "jempol",
          "kelingking",
          "manis",
          "telunjuk",
          "tengah"
        ],
        terjemahanTurunan: [
          "namo mararaga",
          "tobulelar",
          "tegelege",
          "tewerea",
          "tenauu",
          "togolona"
        ],
        kataImbuhan: [
          "je.ma.ri"
        ],
        kataImbuhanIndonesia: [
          "jemari"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "miraraga"
        ],
        contohPenggunaanImbuhan: [
          "~ gadis itu terlihat lentik munang mi raraga lairous"
        ]),
    Kata(
        kataIndonesia: "jatuh",
        kataEjaan: "ja.tuh",
        kataSahu: "etaa",
        labelKata: "v",
        contohPenggunaan:
            "-- bangun dia membangun perusahannya etaa baolo osideos ai perusahan",
        isBookmarked: 0,
        kataTurunan: [
          "bangun",
          "hati",
          "nama",
          "semangat"
        ],
        terjemahanTurunan: [
          "etaa momi ahu",
          "etaa nyafus",
          "lomang eta",
          "somanga trapoo"
        ],
        kataImbuhan: [
          "ter.ja.tuh"
        ],
        kataImbuhanIndonesia: [
          "terjatuh"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "etaa"
        ],
        contohPenggunaanImbuhan: [
          "adik ~ dari kursi nongodu etaa toma kursi"
        ]),
    Kata(
        kataIndonesia: "jauh",
        kataEjaan: "ja.uh",
        kataSahu: "kidang",
        labelKata: "a",
        contohPenggunaan:
            "perjalanan kami masih -- ngomi minga dodagi kidang moju",
        isBookmarked: 0,
        kataTurunan: [
          "di mata",
          "malam",
          "rezekinya"
        ],
        terjemahanTurunan: [
          "kidang toma lao mamimina",
          "utuu golona",
          "rejiki kidang"
        ],
        kataImbuhan: [
          "men.ja.uh",
          "men.ja.uh.kan",
          "men.ja.uhi",
          "se.ja.uh",
          "ke.ja.uh.an"
        ],
        kataImbuhanIndonesia: [
          "menjauh",
          "menjauhkan",
          "menjauhi",
          "sejauh",
          "kejauhan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "omakikidang",
          "maukidang",
          "makikidang",
          "laikidanga",
          "laikidang"
        ],
        contohPenggunaanImbuhan: [
          "mereka semakin ~ anang ganapu omakikidang",
          "jangan ~ ibu dari anaknya anang ditegor maukidang",
          "mereka ~ kami anang makikidang rei ngomi",
          "~ mata memandang hanya terlihat padi menguning ari lao mamumina laikidanga toodi ea baurbaur",
          "lemparanmu ~ opoin laikidang"
        ]),
    Kata(
        kataIndonesia: "jawab",
        kataEjaan: "ja.wab",
        kataSahu: "sangor",
        labelKata: "n",
        contohPenggunaan:
            "-- pertanyaan yang diajukan sangor sosano gaa disano",
        isBookmarked: 0,
        kataImbuhan: [
          "men.ja.wab"
        ],
        kataImbuhanIndonesia: [
          "menjawab"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "osangor"
        ],
        contohPenggunaanImbuhan: [
          "siswa ~ pertanyaan guru siswa osangor sosano guru"
        ]),
    Kata(
        kataIndonesia: "jejer",
        kataEjaan: "je.jer",
        kataSahu: "maureirei",
        labelKata: "v",
        contohPenggunaan:
            "-- sandal di depan pintu osandal maureri-rei toma ngalang",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.je.jer"
        ],
        kataImbuhanIndonesia: [
          "berjejer"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "irerei"
        ],
        contohPenggunaanImbuhan: [
          "pohon rambutan ~ di sepanjang jalan rambutan ge irerei toma ngoo magidanga"
        ]),
    Kata(
        kataIndonesia: "jelajah",
        kataEjaan: "je.la.jah",
        kataSahu: "tagi-tagi",
        labelKata: "v",
        contohPenggunaan: "-- Maluku Utara tagi-tagi toma Maluku Utara",
        isBookmarked: 0,
        kataImbuhan: [
          "men.je.la.jah"
        ],
        kataImbuhanIndonesia: [
          "menjelajah"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "ditagi"
        ],
        contohPenggunaanImbuhan: [
          "mereka ~ desa itu anang ditagi toma gam gena ge"
        ]),
    Kata(
        kataIndonesia: "kabut",
        kataEjaan: "ka.but",
        kataSahu: "kamo-kamo",
        labelKata: "n",
        contohPenggunaan:
            "Kota Ternate diselimuti -- gunung gamalama kie limau Ternate gamalama kamo-kamo",
        isBookmarked: 0,
        kataTurunan: [
          "asap"
        ],
        terjemahanTurunan: [
          "lowor"
        ],
        kataImbuhan: [
          "ber.ka.but"
        ],
        kataImbuhanIndonesia: [
          "berkabut"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "hafu-hafu"
        ],
        contohPenggunaanImbuhan: [
          "Desa Foramadiahi di Kecamatan Pulau Ternate Gam Foramadiahi ~ toma Kecamatan Pulau Ternate hafu-hafu"
        ]),
    Kata(
        kataIndonesia: "kaki",
        kataEjaan: "ka.ki",
        kataSahu: "rou",
        labelKata: "n",
        contohPenggunaan:
            "surga di bawah telapak -- ibu sorga tegore nanga ngina marou masalta",
        isBookmarked: 0,
        kataTurunan: ["gajah", "meja", "seribu", "tangan"],
        terjemahanTurunan: ["gaja marou", "meja marou", "kuluwai", "sosoma"],
        kataImbuhan: ["ber.ka.ki"],
        kataImbuhanIndonesia: ["berkaki"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["rema rou"],
        contohPenggunaanImbuhan: ["gajah ~ empat gajah marou rata"]),
    Kata(
      kataIndonesia: "kalau",
      kataEjaan: "ka.lau",
      kataSahu: "kalo",
      labelKata: "p",
      contohPenggunaan:
          "-- ada waktu luang berkunjunglah ke rumahku sapol kariwala kalo ni kapalang ngua uua",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "kami",
      kataEjaan: "ka.mi ",
      kataSahu: "ngene",
      labelKata: "pron",
      contohPenggunaan:
          "-- tidak mengetahui keberadaannya saat ini ngene waroua aanang mangii",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "kamu",
      kataEjaan: "ka.mu",
      kataSahu: "ngini",
      labelKata: "pron",
      contohPenggunaan:
          "mama bersyukur punya anak seperti -- ngini sanang sanga ngoa matero ngana",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "kanan",
        kataEjaan: "ka.nan",
        kataSahu: "kuwida",
        labelKata: "n",
        contohPenggunaan:
            "tangan -- anak itu terluka karena jatuh dari sepeda ngoa eata toma fis giam kuwida nyabot",
        isBookmarked: 0,
        kataTurunan: [
          "dalam",
          "kiri",
          "luar"
        ],
        terjemahanTurunan: [
          "tari kuwida",
          "kuwida kabali",
          "kuwida madudung"
        ],
        kataImbuhan: [
          "me.nga.nan"
        ],
        kataImbuhanIndonesia: [
          "menganan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "mete kuwida"
        ],
        contohPenggunaanImbuhan: [
          "setelah melewati jembatan kita harus ~ menyusuri jalan setapak pelisi dodou mete kuwida suku daa ngoom"
        ]),
    Kata(
      kataIndonesia: 'karena',
      kataEjaan: "ka.re.na",
      kataSahu: "sababu",
      labelKata: "p",
      contohPenggunaan:
          " berani -- benar takut karena salah berani sababu tero mojong sababu rapu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "kata",
        kataEjaan: "ka.ta",
        kataSahu: "demo",
        labelKata: "n",
        contohPenggunaan:
            " jangan percaya dengan -- cinta ngaku aawa ngowa manga demo bubaja",
        isBookmarked: 0,
        kataTurunan: [
          "adat",
          "hati",
          "kunci"
        ],
        terjemahanTurunan: [
          "atorang",
          "akal masanga",
          "demo ma kuci"
        ],
        kataImbuhan: [
          "me.nga.ta.kan"
        ],
        kataImbuhanIndonesia: [
          "mengatakan"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "siajel"
        ],
        contohPenggunaanImbuhan: [
          "jangan ~ kepada ibu bahwa saya tidak pergi ke sekolah siajel lawa tari ngina tongadol sekolah uua"
        ]),
    Kata(
      kataIndonesia: "kawin",
      kataEjaan: "ka.win",
      kataSahu: "maloar",
      labelKata: "v",
      contohPenggunaan: "undangan -- koro maloar",
      isBookmarked: 0,
      kataTurunan: ["lari"],
      terjemahanTurunan: ["masibidi"],
    ),
    Kata(
        kataIndonesia: "kecil",
        kataEjaan: "ke.cil",
        kataSahu: "ceka",
        labelKata: "a",
        contohPenggunaan: "kursi -- kursi ge ceka",
        isBookmarked: 0,
        kataImbuhan: [
          "ke.cil-ke.cil.an",
          "me.nge.cil.kan"
        ],
        labelKataImbuhan: [
          "a",
          "v"
        ],
        kataSahuImbuhan: [
          "mangoa",
          "siholo"
        ],
        contohPenggunaanImbuhan: [
          "usaha ~ usaha mangoa",
          "Andi ~ suaranya Andi siholo maiding"
        ]),
    Kata(
      kataIndonesia: "kelahi",
      kataEjaan: "ke.la.hi",
      kataSahu: "maututu",
      labelKata: "n",
      contohPenggunaan: "ada orang -- remangoa maututu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "kelapa",
      kataEjaan: "ke.la.pa",
      kataSahu: "wael",
      labelKata: "n",
      contohPenggunaan: "pohon -- wael malese",
      isBookmarked: 0,
      kataTurunan: ["hijau", "merah", "muda"],
      terjemahanTurunan: ["wael ijo", "wael kolil", "wael manganyi"],
    ),
    Kata(
        kataIndonesia: "keluar",
        kataEjaan: "ke.lu.ar",
        kataSahu: "supu",
        labelKata: "v",
        contohPenggunaan: "-- makan supu oromo",
        isBookmarked: 0,
        kataTurunan: [
          "batas",
          "rumah",
          "sekolah"
        ],
        terjemahanTurunan: [
          "supu toma wala",
          "palen bati",
          "sekolah supu"
        ],
        kataImbuhan: [
          "me.nge.lu.ar.kan",
          "pe.nge.lu.ar.an"
        ],
        kataImbuhanIndonesia: [
          "mengeluarkan",
          "pengeluaran"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sisupu",
          "magoat"
        ],
        contohPenggunaanImbuhan: [
          "~ isi hatinya sisupu maaka madara",
          "~ energi lese magoat"
        ]),
    Kata(
      kataIndonesia: "kencing",
      kataEjaan: "ken.cing",
      kataSahu: "osis",
      labelKata: "v",
      contohPenggunaan: "-- celana osis celana",
      isBookmarked: 0,
      kataTurunan: ["batu", "darah", "manis", "nanah"],
      terjemahanTurunan: ["osis madi", "osis ngaun", "osis boang", "osis mami"],
    ),
    Kata(
      kataIndonesia: "kepala",
      kataEjaan: "ke.pa.la",
      kataSahu: "sae",
      labelKata: "n",
      contohPenggunaan: "-- botak sae pulul",
      isBookmarked: 0,
      kataTurunan: ["batu", "desa", "raja", "suku"],
      terjemahanTurunan: ["iseng demo ua", "gam masae", "olan", "ngomor"],
    ),
    Kata(
      kataIndonesia: "kering",
      kataEjaan: "ke.ring",
      kataSahu: "dudung",
      labelKata: "a",
      contohPenggunaan: "padi -- yea dudung",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "keringet",
      kataEjaan: "ke.ri.ngat",
      kataSahu: "galasau",
      labelKata: "n",
      contohPenggunaan: "Adi bercucuran -- dingin Adi uisi galasau",
      isBookmarked: 0,
      kataTurunan: ["dingin"],
      terjemahanTurunan: ["gogoudol"],
    ),
    Kata(
      kataIndonesia: "ketiak",
      kataEjaan: "ke.ti.ak",
      kataSahu: "guduu",
      labelKata: "n",
      contohPenggunaan: "dia mengapit buku -- di guduu kalapatu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "kilat",
      kataEjaan: "ki.lat",
      kataSahu: "bebelang",
      labelKata: "n",
      contohPenggunaan: "-- jatuh bebelang deteree",
      isBookmarked: 0,
      kataTurunan: ["panas"],
      terjemahanTurunan: ["sauu"],
    ),
    Kata(
        kataIndonesia: "kotor",
        kataEjaan: "ko.tor",
        kataSahu: "faja",
        labelKata: "a",
        contohPenggunaan: "pakaian -- pakean faja",
        isBookmarked: 0,
        kataImbuhan: ["ko.to.ran"],
        kataImbuhanIndonesia: ["kotoran"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["makio"],
        contohPenggunaanImbuhan: ["binatang haiwan makio"]),
    Kata(
      kataIndonesia: "kuat",
      kataEjaan: "ku.at",
      kataSahu: "tee",
      labelKata: "a",
      contohPenggunaan: "imannya -- nganong tee",
      isBookmarked: 0,
      kataTurunan: ["ledak", "tarik", "tekan"],
      terjemahanTurunan: ["maiding laisidi", "yidal siduga", "bitung siduga"],
    ),
    Kata(
      kataIndonesia: "kuda",
      kataEjaan: "ku.da",
      kataSahu: "jaran",
      labelKata: "n",
      contohPenggunaan: "-- tunggang jaran celol",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "kue",
      kataEjaan: "kue",
      kataSahu: "mamami",
      labelKata: "n",
      contohPenggunaan: "-- lebaran wanger lamo mamami",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "kuku",
      kataEjaan: "ku.ku",
      kataSahu: "kalacimii",
      labelKata: "n",
      contohPenggunaan: "hantu -- panjang potiyane kalacimi",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "kulit",
        kataEjaan: "ku.lit",
        kataSahu: "eno",
        labelKata: "n",
        contohPenggunaan: "-- kambing eno abi",
        isBookmarked: 0,
        kataTurunan: ["hitam", "manis", "putih"],
        terjemahanTurunan: ["eno kotu", "eno mami", "eno budo"],
        kataImbuhan: ["me.ngu.liti"],
        kataImbuhanIndonesia: ["menguliti"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["maeno"],
        contohPenggunaanImbuhan: ["ia sedang ~ kambing oro abi maeno"]),
    Kata(
      kataIndonesia: "kumis",
      kataEjaan: "ku.mis",
      kataSahu: "kukum",
      labelKata: "n",
      contohPenggunaan: "lelaki itu tidak memiliki -- nanau ge kukum cua",
      isBookmarked: 0,
      kataTurunan: ["tebal", "tipis"],
      terjemahanTurunan: ["kukum kapiring", "kukum lagar"],
    ),
    Kata(
      kataIndonesia: "kuning",
      kataEjaan: "ku.ning",
      kataSahu: "baur",
      labelKata: "n",
      contohPenggunaan: "selendang warna -- salendang sangkala baur",
      isBookmarked: 0,
      kataTurunan: ["langsat", "telur"],
      terjemahanTurunan: ["baur lasa", "namo gosi mabaur"],
    ),
    Kata(
        kataIndonesia: "kurus",
        kataEjaan: "ku.rus",
        kataSahu: "peket",
        labelKata: "a",
        contohPenggunaan:
            "badannya -- karena kurang makan lese peket sababu amocira",
        isBookmarked: 0,
        kataTurunan: ["kering"],
        terjemahanTurunan: ["preket madutu"],
        kataImbuhan: ["me.ngu.rus"],
        kataImbuhanIndonesia: ["mengurus"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["madiyai"],
        contohPenggunaanImbuhan: ["~ kebun cengkih madiyai waji manguda"]),
    Kata(
        kataIndonesia: "kutu",
        kataEjaan: "ku.tu",
        kataSahu: "gane",
        labelKata: "n",
        contohPenggunaan: "telur -- gane magosi",
        isBookmarked: 0,
        kataTurunan: ["air", "busuk"],
        terjemahanTurunan: ["besa magane", "gofola"],
        kataImbuhan: ["ber.ku.tu"],
        kataImbuhanIndonesia: ["berkutu"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["sopoo"],
        contohPenggunaanImbuhan: ["rambutnya ~ wutu sopoo"]),
    Kata(
      kataIndonesia: "tahap",
      kataEjaan: "la.hap",
      kataSahu: "danata",
      labelKata: "a",
      contohPenggunaan: "anak itu makan dengan sangat -- ngoolo ge omolamo",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "lahir",
        kataEjaan: "la.hir",
        kataSahu: "wuor",
        labelKata: "v",
        contohPenggunaan: "baru -- sungi wuor",
        isBookmarked: 0,
        kataTurunan: ["batin"],
        terjemahanTurunan: ["akar re sinyingar"],
        kataImbuhan: ["me.la.hir.kan"],
        kataImbuhanIndonesia: ["melahirkan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["sibuor"],
        contohPenggunaanImbuhan: ["~ anak pertama sibuor ngoa"]),
    Kata(
        kataIndonesia: "lain",
        kataEjaan: "la.in",
        kataSahu: "legu",
        labelKata: "a",
        contohPenggunaan: "-- kali baru saya datang legu dua karatusapol",
        isBookmarked: 0,
        kataTurunan: ["dari itu", "halnya"],
        terjemahanTurunan: ["malelegu dii", "malelegu"],
        kataImbuhan: ["ber.la.in-la.in.an"],
        kataImbuhanIndonesia: ["berlain-lainan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["matero ua"],
        contohPenggunaanImbuhan: ["pendapat orang ~ akal masangal matero ua"]),
    Kata(
      kataIndonesia: "laknat",
      kataEjaan: "lak.nat",
      kataSahu: "kutula",
      labelKata: "n",
      contohPenggunaan: " anak itu -- di ibunya ngoolo sanga kutula remangina",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "lalulang",
      kataEjaan: "la.lu-la.lang",
      kataSahu: "yiaiino",
      labelKata: "v",
      contohPenggunaan:
          "jangan suka -- di rumah orang nyafus yiaiino rengoa mawala",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "lama",
        kataEjaan: "la.ma",
        kataSahu: "kohi",
        labelKata: "a",
        contohPenggunaan: "menunggu -- toma kohi",
        isBookmarked: 0,
        kataTurunan: [
          ""
        ],
        terjemahanTurunan: [
          ""
        ],
        kataImbuhan: [
          "la.ma-ke.la.ma.an",
          "la.mar.an"
        ],
        kataImbuhanIndonesia: [
          "lama-kelamaan",
          "lamaran"
        ],
        labelKataImbuhan: [
          "adv",
          "n"
        ],
        kataSahuImbuhan: [
          "madiar",
          "gaganau"
        ],
        contohPenggunaanImbuhan: [
          "~ jumlah pengikutnya bertambah banyak mangoolo ge mangori madiar wodi",
          "~ nya di tolak ma gaganau munang ngaitong"
        ]),
    Kata(
      kataIndonesia: "lancip",
      kataEjaan: "lan.cip ",
      kataSahu: "mangon",
      labelKata: "a",
      contohPenggunaan: "pedang itu -- goloa ge mangon",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "langit",
      kataEjaan: "la.ngit",
      kataSahu: "diwang",
      labelKata: "n",
      contohPenggunaan: "-- biru diwang ijo",
      isBookmarked: 0,
      kataTurunan: ["bersih", "tertutup"],
      terjemahanTurunan: ["diwang ovi", "diwang hafu-hafu"],
    ),
    Kata(
      kataIndonesia: "lanjut",
      kataEjaan: "lan.jut",
      kataSahu: "kidang",
      labelKata: "a",
      contohPenggunaan: "-- usia umur kidang",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "lantai",
        kataEjaan: "lan.tai",
        kataSahu: "bangin",
        labelKata: "n",
        contohPenggunaan: "duduk di -- tedo toma bangin",
        isBookmarked: 0,
        kataTurunan: ["dasar"],
        terjemahanTurunan: ["bangun macim"],
        kataImbuhan: ["ber.lan.tai"],
        kataImbuhanIndonesia: ["berlantai"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["cua"],
        contohPenggunaanImbuhan: ["~ tanah bangin cua"]),
    Kata(
      kataIndonesia: "lapang",
      kataEjaan: "la.pang",
      kataSahu: "roan",
      labelKata: "a",
      contohPenggunaan: "bola keluar -- bola saii roan",
      isBookmarked: 0,
      kataTurunan: ["dada", "hati", "perut"],
      terjemahanTurunan: ["kater ogor", "akal mereos", "sawin tawun"],
    ),
    Kata(
      kataIndonesia: "lapar",
      kataEjaan: "la.par",
      kataSahu: "sawin",
      labelKata: "a",
      contohPenggunaan: "adik sangat -- ari ngogodu sawin",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "lari",
      kataEjaan: "la.ri",
      kataSahu: " lalar",
      labelKata: "v",
      contohPenggunaan: "-- pagi lalar dadai mia",
      isBookmarked: 0,
      kataTurunan: ["cepat", "maraton", "nikah"],
      terjemahanTurunan: ["loa caii", "lalar kidang", "loa sibidii"],
    ),
    Kata(
      kataIndonesia: "laut",
      kataEjaan: "la.ut",
      kataSahu: "ngolot",
      labelKata: "n",
      contohPenggunaan: "-- dalam ngolot ngido",
      isBookmarked: 0,
      kataTurunan: ["lepas"],
      terjemahanTurunan: ["ngolot lamoo"],
    ),
    Kata(
      kataIndonesia: "lawak",
      kataEjaan: "la.wak",
      kataSahu: "sedu-sedu",
      labelKata: "a",
      contohPenggunaan: "anak itu suka -- ngoolo ge sedu-sedu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "layak",
      kataEjaan: "la.yak",
      kataSahu: "silamoo",
      labelKata: "a",
      contohPenggunaan: "kehidupan yang -- ahu silamoo",
      isBookmarked: 0,
      kataTurunan: ["saji"],
      terjemahanTurunan: ["magare tala"],
    ),
    Kata(
      kataIndonesia: "layang",
      kataEjaan: "la.yang",
      kataSahu: "solor",
      labelKata: "v",
      contohPenggunaan: "main -- bisa solor",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "layar",
      kataEjaan: "la.yar",
      kataSahu: "maside",
      labelKata: "n",
      contohPenggunaan: "perahu -- oti maside",
      isBookmarked: 0,
      kataTurunan: ["depan"],
      terjemahanTurunan: ["jamani"],
    ),
    Kata(
      kataIndonesia: "layu",
      kataEjaan: "la.yu",
      kataSahu: "waalo",
      labelKata: "a",
      contohPenggunaan:
          "musim panas membuat bunga itu -- ngogor aang bunga waalo",
      isBookmarked: 0,
      kataTurunan: ["bunga"],
      terjemahanTurunan: ["bunga waalo"],
    ),
    Kata(
      kataIndonesia: "lebar",
      kataEjaan: "le.bar",
      kataSahu: "loat",
      labelKata: "a",
      contohPenggunaan: "jalan itu -- ngoom ge loat",
      isBookmarked: 0,
      kataTurunan: ["mulut"],
      terjemahanTurunan: ["madang loat"],
    ),
    Kata(
      kataIndonesia: "lebat",
      kataEjaan: "le.bat",
      kataSahu: "sowo rempe",
      labelKata: "a",
      contohPenggunaan: "pohon itu -- buahnya masowo lai rempe",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "lebih",
      kataEjaan: "le.bih",
      kataSahu: "paii",
      labelKata: "adv",
      contohPenggunaan: "kesehatannya sudah -- baik lese masidi paii rei cua",
      isBookmarked: 0,
      kataTurunan: ["kurang"],
      terjemahanTurunan: ["kurang rengado lua"],
    ),
    Kata(
      kataIndonesia: "lebur",
      kataEjaan: "le.bur",
      kataSahu: "perego",
      labelKata: "a",
      contohPenggunaan:
          "seluruh kampung -- oleh gempa yang dahsyat itu gam perego sababu wusu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "leher",
        kataEjaan: "le.her",
        kataSahu: "camal",
        labelKata: "n",
        contohPenggunaan: "-- gondok camal sagol",
        isBookmarked: 0,
        kataTurunan: [
          "baju",
          "botol",
          "panjang",
          "rahim"
        ],
        terjemahanTurunan: [
          "baju macamal",
          "botol macamal",
          "camal kidang",
          "pool"
        ],
        kataImbuhan: [
          "ber.le.her"
        ],
        kataImbuhanIndonesia: [
          "berleher"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "macamal"
        ],
        contohPenggunaanImbuhan: [
          "hewan itu ~ panjang haiwan ge macamal kidang"
        ]),
    Kata(
      kataIndonesia: "lekas",
      kataEjaan: "le.kas",
      kataSahu: "caiti",
      labelKata: "v",
      contohPenggunaan: "-- sembuh la caiti",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "telah",
      kataEjaan: "le.lah",
      kataSahu: "momoro",
      labelKata: "a",
      contohPenggunaan: "merasa -- bason momoro",
      isBookmarked: 0,
      kataTurunan: ["payah"],
      terjemahanTurunan: ["momoro madutu"],
    ),
    Kata(
      kataIndonesia: "lelaki",
      kataEjaan: "le.la.ki",
      kataSahu: "nau-nau",
      labelKata: "n",
      contohPenggunaan: "-- itu sangat tangguh nau-nau ge tee madutu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "lelap",
      kataEjaan: "le.lap",
      kataSahu: "utu",
      labelKata: "v",
      contohPenggunaan: "ia baru saja -- wunang aro utu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "lemah",
      kataEjaan: "le.mah",
      kataSahu: "tee ua",
      labelKata: "a",
      contohPenggunaan: "badannya -- lese tee ua",
      isBookmarked: 0,
      kataTurunan: ["hati", "iman", "lembut", "otak"],
      terjemahanTurunan: [
        "akal meleos",
        "ai ngu ngano",
        "meleos madutu",
        "akal yira yirang"
      ],
    ),
    Kata(
        kataIndonesia: "lembar",
        kataEjaan: "lem.bar",
        kataSahu: "bela",
        labelKata: "n",
        contohPenggunaan: "satu -- bela ngoii",
        isBookmarked: 0,
        kataTurunan: ["jawaban"],
        terjemahanTurunan: ["susangor"],
        kataImbuhan: ["lem.bar.an"],
        kataImbuhanIndonesia: ["lembaran"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["carita"],
        contohPenggunaanImbuhan: ["~ sejarah carita masida-sida"]),
    Kata(
      kataIndonesia: "lembek",
      kataEjaan: "lem.bek",
      kataSahu: "buru",
      labelKata: "a",
      contohPenggunaan: "nasi -- yea buru",
      isBookmarked: 0,
      kataTurunan: ["otak", "tulang"],
      terjemahanTurunan: ["memies", "obong buru"],
    ),
    Kata(
        kataIndonesia: "lempar",
        kataEjaan: "lem.par",
        kataSahu: "poin",
        labelKata: "v",
        contohPenggunaan: "-- mangga poin kidam",
        isBookmarked: 0,
        kataTurunan: ["cakram", "lembing", "tangan"],
        terjemahanTurunan: ["sagu kalaw", "sagu", "giam poin"],
        kataImbuhan: ["me.lem.par"],
        kataImbuhanIndonesia: ["melempar"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["sipoin"],
        contohPenggunaanImbuhan: ["~ anjing dengan batu sipoin nunuu romadi"]),
    Kata(
        kataIndonesia: "lengan",
        kataEjaan: "le.ngan",
        kataSahu: "magiam",
        labelKata: "n",
        contohPenggunaan: "kaos -- pendek kous magiam boko",
        isBookmarked: 0,
        kataTurunan: ["atas", "baju", "bawah"],
        terjemahanTurunan: ["beleas mareu", "baju mabeleas", "beleas maadu"],
        kataImbuhan: ["ber.le.ngan"],
        kataImbuhanIndonesia: ["berlengan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["remagiam"],
        contohPenggunaanImbuhan: ["kameja ~ panjang kameja remagiam kidang"]),
    Kata(
        kataIndonesia: "lepas",
        kataEjaan: "le.pas",
        kataSahu: "eang",
        labelKata: "a",
        contohPenggunaan: "anjingnya -- eang nunuu",
        isBookmarked: 0,
        kataTurunan: ["bebas", "malu", "tangan"],
        terjemahanTurunan: ["eang mode", "maraa cua", "sela gilam"],
        kataImbuhan: ["ter.le.pas"],
        kataImbuhanIndonesia: ["terlepas"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["owii"],
        contohPenggunaanImbuhan: ["ikatannya ~ mabibinyiu owii"]),
    Kata(
      kataIndonesia: "letak",
      kataEjaan: "le.tak",
      kataSahu: "sigare",
      labelKata: "n",
      contohPenggunaan: "-- buku di meja sigare buku toma meja",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "lewat",
        kataEjaan: "le.wat",
        kataSahu: "palisii",
        labelKata: "v",
        contohPenggunaan: "waktu yang telah -- oras palisi dua",
        isBookmarked: 0,
        kataTurunan: [
          "waktu"
        ],
        terjemahanTurunan: [
          "waktu palisii"
        ],
        kataImbuhan: [
          "ke.le.wat.an"
        ],
        labelKataImbuhan: [
          "a"
        ],
        kataSahuImbuhan: [
          "paii"
        ],
        contohPenggunaanImbuhan: [
          "anak itu nakalnya sudah ~ ngoolo ge nakal paii"
        ]),
    Kata(
      kataIndonesia: "lezat",
      kataEjaan: "le.zat",
      kataSahu: "sai",
      labelKata: "a",
      contohPenggunaan: "hidangan -- ngogorom sai",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "liang",
      kataEjaan: "li.ang",
      kataSahu: "duso mangoa",
      labelKata: "n",
      contohPenggunaan: "ular -- cuku duso mangoa",
      isBookmarked: 0,
      kataTurunan: ["hidung", "lahad", "mata", "semut"],
      terjemahanTurunan: [
        "ngunung madusoo",
        "kubu madusoo",
        "lao madusoo",
        "bifi mangii"
      ],
    ),
    Kata(
        kataIndonesia: "liar",
        kataEjaan: "li.ar",
        kataSahu: "ngabal",
        labelKata: "a",
        contohPenggunaan: "binatang -- haiwan ngabal",
        isBookmarked: 0,
        kataImbuhan: ["me.li.ar"],
        kataImbuhanIndonesia: ["meliar"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["konyo"],
        contohPenggunaanImbuhan: ["rumput-rumput yang ~ rurubu konyo"]),
    Kata(
        kataIndonesia: "licin",
        kataEjaan: "li.cin",
        kataSahu: " jiyii",
        labelKata: "a",
        contohPenggunaan:
            "ia tergelincir karena jalannya -- wunang etaa sababu jiyii",
        isBookmarked: 0,
        kataTurunan: ["lecat"],
        terjemahanTurunan: [" jiyii madutu"],
        kataImbuhan: ["me.li.cin.kan"],
        kataImbuhanIndonesia: ["melicinkan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["tinis"],
        contohPenggunaanImbuhan: ["~ pakaian tinis pakeang"]),
    Kata(
      kataIndonesia: "lidah",
      kataEjaan: "li.dah",
      kataSahu: "yaii",
      labelKata: "n",
      contohPenggunaan: "lembut -- nya yaii meleos",
      isBookmarked: 0,
      kataTurunan: ["air", "api", "buaya"],
      terjemahanTurunan: ["banyo mayaii", "wuu", "samam mayaii"],
    ),
    Kata(
      kataIndonesia: "lihat",
      kataEjaan: "li.hat",
      kataSahu: "wodii",
      labelKata: "v",
      contohPenggunaan: "-- di situ wodii yia",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "lilin",
      kataEjaan: "li.lin",
      kataSahu: "toca",
      labelKata: "n",
      contohPenggunaan: "meniup -- ngusu toca",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "lingkar",
        kataEjaan: "ling.kar",
        kataSahu: "rangi",
        labelKata: "n",
        contohPenggunaan: "-- tali rangi gumi",
        isBookmarked: 0,
        kataTurunan: ["pinggang"],
        terjemahanTurunan: ["rangi golona"],
        kataImbuhan: ["me.ling.kar"],
        kataImbuhanIndonesia: ["melingkar"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["marangi"],
        contohPenggunaanImbuhan: ["ular ~ di pohon ngoran marangi toma ate"]),
    Kata(
        kataIndonesia: "lipat",
        kataEjaan: "li.pat",
        kataSahu: "duo",
        labelKata: "v",
        contohPenggunaan: "-- tangan duo kiam",
        isBookmarked: 0,
        kataTurunan: ["kaki", "lenso"],
        terjemahanTurunan: ["duo rowu", "duo tual"],
        kataImbuhan: ["me.li.pat"],
        kataImbuhanIndonesia: ["melipat"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["siduo"],
        contohPenggunaanImbuhan: ["~ pakaian siduo pakean"]),
    Kata(
        kataIndonesia: "lompat",
        kataEjaan: "lom.pat",
        kataSahu: "patedeng",
        labelKata: "v",
        contohPenggunaan: "-- ke laut patedeng toma ngolot",
        isBookmarked: 0,
        kataTurunan: ["jauh", "tinggi"],
        terjemahanTurunan: ["patedeng kidang", "patedeng kauu"],
        kataImbuhan: ["me.lom.pat"],
        kataImbuhanIndonesia: ["melompat"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["matedeng"],
        contohPenggunaanImbuhan: ["~ ke luar matedeng toma dudung"]),
    Kata(
      kataIndonesia: 'longgar',
      kataEjaan: "long.gar",
      kataSahu: "loda",
      labelKata: "",
      contohPenggunaan: "bajunya -- baju loda",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "luar",
      kataEjaan: "lu.ar",
      kataSahu: "dudung",
      labelKata: "n",
      contohPenggunaan: "obat -- souu toma dudung",
      isBookmarked: 0,
      kataTurunan: ["batas", "nikah"],
      terjemahanTurunan: ["bati madudung", "moloara sahaua"],
    ),
    Kata(
      kataIndonesia: "luas",
      kataEjaan: "lu.as",
      kataSahu: "roat",
      labelKata: "a",
      contohPenggunaan: "masyarakat -- roat repe",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "lubang",
      kataEjaan: "lu.bang",
      kataSahu: "tusoo",
      labelKata: "n",
      contohPenggunaan: "gali -- ngidi tusoo",
      isBookmarked: 0,
      kataTurunan: ["hidung", "telinga"],
      terjemahanTurunan: ["ngunung madusoo", " ngauu maduso"],
    ),
    Kata(
        kataIndonesia: "luka",
        kataEjaan: "lu.ka",
        kataSahu: "nyabot",
        labelKata: "n",
        contohPenggunaan: "-- dalam nyabot lai lamoo",
        isBookmarked: 0,
        kataTurunan: [
          "bakar",
          "hati"
        ],
        terjemahanTurunan: [
          "nyabot rouu",
          "akal nyabot"
        ],
        kataImbuhan: [
          "ber.lu.ka",
          "me.lu.kai"
        ],
        kataImbuhanIndonesia: [
          "berluka",
          "melukai"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "remanyabot",
          "sinyabot"
        ],
        contohPenggunaanImbuhan: [
          "mayat ~ tembak remanyabot sanga tabuu",
          "~ hati sinyabot akal"
        ]),
    Kata(
      kataIndonesia: "lulus",
      kataEjaan: "lu.lus",
      kataSahu: "pesanga",
      labelKata: "v",
      contohPenggunaan: "semua siswa -- ujian ngomhoin pesanga",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "lumpuh",
      kataEjaan: "lum.puh",
      kataSahu: "podo",
      labelKata: "a",
      contohPenggunaan: "kakinya -- rou podo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "lumpur",
      kataEjaan: "lum.pur",
      kataSahu: "pece",
      labelKata: "n",
      contohPenggunaan: "tanah -- tana pece",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "lumut",
        kataEjaan: "lu.mut",
        kataSahu: "dudumut",
        labelKata: "n",
        contohPenggunaan: "-- air dudumut banyo",
        isBookmarked: 0,
        kataTurunan: [
          "karang",
          "laut",
          "tanah"
        ],
        terjemahanTurunan: [
          "madi madudumut",
          "ngolot madudumut",
          "tana madudumut"
        ],
        kataImbuhan: [
          "ber.lu.mut"
        ],
        kataImbuhanIndonesia: [
          "berlumut"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "remadudumut"
        ],
        contohPenggunaanImbuhan: [
          "dinding itu ~ gegelo remadudumut"
        ]),
    Kata(
        kataIndonesia: "lunas",
        kataEjaan: "lu.nas ",
        kataSahu: "moin",
        labelKata: "v",
        contohPenggunaan: "utangnya telah -- manyator moin duar",
        isBookmarked: 0,
        kataImbuhan: ["me.lu.nasi"],
        kataImbuhanIndonesia: ["melunasi"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["simoi"],
        contohPenggunaanImbuhan: ["~ utang simoi manyator"]),
    Kata(
      kataIndonesia: "lupa",
      kataEjaan: "lu.pa",
      kataSahu: "sidai orang",
      labelKata: "v",
      contohPenggunaan: "sering -- sorai doo yia sidai orang",
      isBookmarked: 0,
      kataTurunan: ["daratan", "diri"],
      terjemahanTurunan: ["sidai orang tana dududung", "sidai diri"],
    ),
    Kata(
        kataIndonesia: "lurus",
        kataEjaan: "lu.rus",
        kataSahu: " boloto",
        labelKata: "a",
        contohPenggunaan: ":jalan -- ngoom boloto",
        isBookmarked: 0,
        kataTurunan: ["akal", "tabung"],
        terjemahanTurunan: ["akal boloto", "sidai orang gogon"],
        kataImbuhan: ["me.lu.rus.kan"],
        kataImbuhanIndonesia: ["meluruskan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["siboloto"],
        contohPenggunaanImbuhan: ["duduk ~ kaki siboloto rou"]),
    Kata(
        kataIndonesia: "lutut",
        kataEjaan: "lu.tut",
        kataSahu: "bolon",
        labelKata: "n",
        contohPenggunaan: "sakit -- bolon sisidi",
        isBookmarked: 0,
        kataImbuhan: ["ber.lu.tut"],
        kataImbuhanIndonesia: ["berlutut"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["madipolon"],
        contohPenggunaanImbuhan: ["~ kepada tuhan madipolon rema jou madutu"]),
    //section M
    Kata(
        kataIndonesia: "mabuk",
        kataEjaan: "ma.buk",
        kataSahu: "etol",
        labelKata: "a",
        contohPenggunaan:
            "anak itu -- karena minum alkohol ngoa ge etol sababu oe alkohol;",
        isBookmarked: 0,
        kataTurunan: [
          "cinta",
          "darat",
          "ombak"
        ],
        terjemahanTurunan: [
          "nyapsu paii",
          " etol toma ngoom",
          "etol toma ngolom"
        ],
        kataImbuhan: [
          "ber.ma.buk-ma.buk.an"
        ],
        kataImbuhanIndonesia: [
          "bermabuk-mabukan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "maetol"
        ],
        contohPenggunaanImbuhan: [
          "lelaki itu suka ~ nau-nau ge pai maetol"
        ]),
    Kata(
      kataIndonesia: "mahal",
      kataEjaan: "ma.hal",
      kataSahu: "hali",
      labelKata: "a",
      contohPenggunaan: "barang itu -- sekali barang ge hali madutu;",
      isBookmarked: 0,
      kataTurunan: ["bicara", "senyum"],
      terjemahanTurunan: ["bibicara ua", "nyelo-nyelo ua"],
    ),
    Kata(
        kataIndonesia: "main",
        kataEjaan: "ma.in",
        kataSahu: "bisal",
        labelKata: "v",
        contohPenggunaan: "-- kelereng bisal luluce",
        isBookmarked: 0,
        kataTurunan: [
          "judi",
          "mata",
          "perempuan",
          "serong",
          "tangan"
        ],
        terjemahanTurunan: [
          "bisal bajudi",
          "tewen",
          "bisal wewerea",
          "bisal bolotoua",
          "sibisa geam"
        ],
        kataImbuhan: [
          "ber.ma.in"
        ],
        kataImbuhanIndonesia: [
          "bermain"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "maubisal"
        ],
        contohPenggunaanImbuhan: [
          "adik sedang ~ di taman ngogodu  maubisal toma soan"
        ]),
    Kata(
      kataIndonesia: "makam",
      kataEjaan: "ma.kam",
      kataSahu: "kubu",
      labelKata: "n",
      contohPenggunaan: "mengantarkan jenazah ke -- singata toma kubu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "makan",
        kataEjaan: "ma.kan",
        kataSahu: "omo",
        labelKata: "v",
        contohPenggunaan:
            "mereka -- tiga kali sehari anang omo wange moi sou loange",
        isBookmarked: 0,
        kataTurunan: [
          "besar",
          "biaya",
          "gaji",
          "tidur",
          "waktu"
        ],
        terjemahanTurunan: [
          "worom lamo",
          "ongkos lamo",
          "worom sewa",
          "wotu omo",
          "worom oras"
        ],
        kataImbuhan: [
          "di.ma.kan",
          "me.ma.kan"
        ],
        kataImbuhanIndonesia: [
          "dimakan",
          "memakan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "aomo",
          "taomo"
        ],
        contohPenggunaanImbuhan: [
          "rumahnya habis ~ api wala rou moin aomo",
          "adik ~ nasi goreng nongodu taomo wea goreng"
        ]),
    Kata(
      kataIndonesia: "maki",
      kataEjaan: "ma.ki",
      kataSahu: "doan",
      labelKata: "v",
      contohPenggunaan: "orang itu suka -- ngoa ge pai doan ngowaa",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "malam",
        kataEjaan: "ma.lam",
        kataSahu: "lobii",
        labelKata: "n",
        contohPenggunaan: "tengah -- wutu ngolona;",
        isBookmarked: 0,
        kataTurunan: [
          "buta",
          "gembira",
          "muda-mudi"
        ],
        terjemahanTurunan: [
          "hafu madutu;",
          "lobii maroang",
          "lobii tubaihe remusoles"
        ],
        kataImbuhan: [
          "ber.ma.lam",
          "ma.lam-ma.lam",
          "se.ma.lam"
        ],
        kataImbuhanIndonesia: [
          "bermalam",
          "malam-malam",
          "semalam"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "wotu",
          "lobi-lobii",
          "wutu moi"
        ],
        contohPenggunaanImbuhan: [
          "saya ~ di penginapan ngoi to wotu toma penginapan",
          "anak gadis itu suka keluar ~ masoles-masoles nyapsu roka ge lobi-lobii",
          "saya menginap di hotel ~ ngoi towotu toma hotel wutu moi"
        ]),
    Kata(
        kataIndonesia: "malas",
        kataEjaan: "ma.las",
        kataSahu: "busenge",
        labelKata: "a",
        contohPenggunaan: "jangan -- bertanya sano  busurhawa",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.ma.las"
        ],
        kataImbuhanIndonesia: [
          "pemalas"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "busenge madutu"
        ],
        contohPenggunaanImbuhan: [
          "ia ~ dan suka berjudi busenge madutu re pai bisa bajudi"
        ]),
    Kata(
        kataIndonesia: "maling",
        kataEjaan: "ma.ling",
        kataSahu: "tori-torii",
        labelKata: "n",
        contohPenggunaan:
            "-- itu masuk ke rumah melalui jendela tori-torii pere mete jangela;",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ma.ling"
        ],
        kataImbuhanIndonesia: [
          "memaling"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "tagi tori"
        ],
        contohPenggunaanImbuhan: [
          "orang itu ~ sepeda anakku ngoa ge tagi tori ngoolo nyafis"
        ]),
    Kata(
        kataIndonesia: "mampu",
        kataEjaan: "mam.pu",
        kataSahu: "ngaum",
        labelKata: "a",
        contohPenggunaan: "mereka cukup -- anang ngoa remahenang",
        isBookmarked: 0,
        kataImbuhan: [
          "ke.mam.pu.an"
        ],
        kataImbuhanIndonesia: [
          "kemampuan"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "aididi ngaum"
        ],
        contohPenggunaanImbuhan: [
          "kita berusaha dengan ~ sendiri ngoi toaa rengoi ari diri masireteng"
        ]),
    Kata(
        kataIndonesia: "mandi",
        kataEjaan: "man.di",
        kataSahu: "maori",
        labelKata: "v",
        contohPenggunaan:
            "hari libur banyak yang -- di laut wanger nangene mgowa repe maori toma ngolo",
        isBookmarked: 0,
        kataImbuhan: [
          "me.man.di.kan"
        ],
        kataImbuhanIndonesia: [
          "memandikan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "siori"
        ],
        contohPenggunaanImbuhan: [
          "~ kerbau di sungai siori kerbau toma ngalar"
        ]),
    Kata(
        kataIndonesia: "manis",
        kataEjaan: "ma.nis",
        kataSahu: "mami",
        labelKata: "a",
        contohPenggunaan: "senyumnya sangat -- nyeloo rous madutu",
        isBookmarked: 0,
        kataImbuhan: ["se.ma.nis"],
        kataImbuhanIndonesia: ["semanis"],
        labelKataImbuhan: ["a"],
        kataSahuImbuhan: ["mami masoda"],
        contohPenggunaanImbuhan: ["~ madu mami matero madu"]),
    Kata(
      kataIndonesia: "manusia",
      kataEjaan: "ma.nu.sia",
      kataSahu: "ngowaa",
      labelKata: "n",
      contohPenggunaan:
          "sebagai -- biasa ia bisa juga khilaf ngowaa biasa gaa aa sala",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "marah",
        kataEjaan: "ma.rah",
        kataSahu: "ngamo",
        labelKata: "a",
        contohPenggunaan:
            "ibu -- karena adik pulang larut malam ngogodu ngina mo ngamo sababu dibo wutu golona;",
        isBookmarked: 0,
        kataImbuhan: [
          "ma.rah-ma.rah",
          "pe.ma.rah "
        ],
        kataImbuhanIndonesia: [
          "marah-marah",
          "pemarah"
        ],
        labelKataImbuhan: [
          "v",
          "a"
        ],
        kataSahuImbuhan: [
          "ruta",
          "ruta-ruta"
        ],
        contohPenggunaanImbuhan: [
          "pagi-pagi ia sudah ~ dadaini amoju ruta wuta dua",
          "ia ~ tapi lekas berbaik lagi ruta-ruta tapi obae lai caiti"
        ]),
    Kata(
        kataIndonesia: "masak",
        kataEjaan: "ma.sak",
        kataSahu: "saai",
        labelKata: "a",
        contohPenggunaan: "-- daging dengan santan saai pake ibii;",
        isBookmarked: 0,
        kataTurunan: [
          "air"
        ],
        terjemahanTurunan: [
          "sau banyo"
        ],
        kataImbuhan: [
          "ma.sak.an"
        ],
        kataImbuhanIndonesia: [
          "masakan"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "masaai"
        ],
        contohPenggunaanImbuhan: [
          "banyak orang menyukai ~ padang ngowa repe nyapsu padang masaai "
        ]),
    Kata(
      kataIndonesia: "masjid",
      kataEjaan: "mas.jid",
      kataSahu: "sigi",
      labelKata: "n",
      contohPenggunaan:
          "setiap jumat orang salat di -- jumat maanger ngowa salat toma sigi",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "mata",
        kataEjaan: "ma.ta",
        kataSahu: "lao",
        labelKata: "n",
        contohPenggunaan: "dajal -- satu dajal lao rimoi",
        isBookmarked: 0,
        kataTurunan: [
          "air",
          "duitan",
          "kail",
          "panah",
          "pelajaran",
          "pisau",
          "sipit"
        ],
        terjemahanTurunan: [
          "banyo maloar",
          "doata pipis",
          "gumala",
          "coim",
          "dodotoo",
          "bolowa madoto",
          "lolo rongo"
        ],
        kataImbuhan: [
          "se.ma.ta"
        ],
        kataImbuhanIndonesia: [
          "semata"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "rimoi-rimoi"
        ],
        contohPenggunaanImbuhan: [
          "anak ~ wayang ngoa rimoi-rimoi"
        ]),
    Kata(
      kataIndonesia: "matahari",
      kataEjaan: "ma.ta.ha.ri",
      kataSahu: "wanger malao",
      labelKata: "n",
      contohPenggunaan: "~ tenggelam wanger sodu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "mati",
        kataEjaan: "ma.ti",
        kataSahu: "sengen",
        labelKata: "v",
        contohPenggunaan: "pohon jeruk itu sudah -- selangkari ge sengen dua; ",
        isBookmarked: 0,
        kataImbuhan: ["se.ma.ti"],
        kataImbuhanIndonesia: ["semati"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["remosengen"],
        contohPenggunaanImbuhan: ["sehidup ~ ahu remosengen marimoi"]),
    Kata(
        kataIndonesia: "mau",
        kataEjaan: "mau",
        kataSahu: "nyafus",
        labelKata: "adv",
        contohPenggunaan:
            "ia -- datang kalau dijemput coba sidaloa moi tosapol;",
        isBookmarked: 0,
        kataImbuhan: [
          "ke.ma.u.an"
        ],
        kataImbuhanIndonesia: [
          "kemauan"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "manyafsu"
        ],
        contohPenggunaanImbuhan: [
          "anak itu banyak ~ waolo ge manyafsu lai  repe"
        ]),
    Kata(
      kataIndonesia: "menceret",
      kataEjaan: "men.ce.ret",
      kataSahu: "polsii",
      labelKata: "v",
      contohPenggunaan:
          "dia -- karena banyak makan sambal amo dadabu lamo wodi dua polsii",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "mendung",
      kataEjaan: "men.dung",
      kataSahu: "kamo-kamo",
      labelKata: "n",
      contohPenggunaan: "langit -- kamo-kamo kapiri",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "mentah",
      kataEjaan: "men.tah ",
      kataSahu: "kokou",
      labelKata: "a",
      contohPenggunaan: "nasi itu masih -- wea ge kokou moju",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "merah",
      kataEjaan: "me.rah",
      kataSahu: "kolil",
      labelKata: "n",
      contohPenggunaan: "baju -- baju kolil",
      isBookmarked: 0,
      kataTurunan: ["darah", "hati", "jambu", "muda"],
      terjemahanTurunan: [
        "kolil ngawun",
        "akal kolil",
        "kolil guwi",
        "kolil madutu ua"
      ],
    ),
    Kata(
      kataIndonesia: "mereka",
      kataEjaan: "me.re.ka",
      kataSahu: "anang",
      labelKata: "pron",
      contohPenggunaan:
          "-- pergi sama-sama ke sekolah anang tagi sekolah mau mete",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "mimpi",
        kataEjaan: "mim.pi",
        kataSahu: "nanel",
        labelKata: "n",
        contohPenggunaan: "-- buruk nanel wecar",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.mim.pi"
        ],
        kataImbuhanIndonesia: [
          "bermimpi"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "tonanel"
        ],
        contohPenggunaanImbuhan: [
          "semalam ia ~ dikejar harimau wutu tonanel harimau kunui"
        ]),
    Kata(
        kataIndonesia: "minggu",
        kataEjaan: "ming.gu",
        kataSahu: "hadi",
        labelKata: "n",
        contohPenggunaan:
            "hari -- semua pegawai libur hadi minggu mawangere pegawai mangomas",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.ming.gu-ming.gu"
        ],
        kataImbuhanIndonesia: [
          "berminggu-minggu"
        ],
        labelKataImbuhan: [
          "num"
        ],
        kataSahuImbuhan: [
          "rema migu-migu"
        ],
        contohPenggunaanImbuhan: [
          "sudah ~ ia tidak pulang rema migu-migu dua wuna dibo ua"
        ]),
    Kata(
        kataIndonesia: "minta",
        kataEjaan: "min.ta",
        kataSahu: "goloo",
        labelKata: "v",
        contohPenggunaan: "anak itu -- uang pada ayahnya waolo ge goloo",
        isBookmarked: 0,
        kataTurunan: [
          "ampun",
          "berhenti",
          "cerai",
          "izin",
          "jalan",
          "maaf",
          "waktu"
        ],
        terjemahanTurunan: [
          "golo ampun",
          "golo matogum",
          "golo mau",
          "masi goloo",
          "goloo tagi dua",
          "goloo maaf",
          "goloo oras"
        ],
        kataImbuhan: [
          "min.ta-min.ta",
          "per.min.ta.an"
        ],
        kataImbuhanIndonesia: [
          "minta-minta",
          "permintaan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "golo-goloo",
          "mogoloo"
        ],
        contohPenggunaanImbuhan: [
          "~ jangan hujan hari ini golo-goloo nangene besa awa",
          "ia pulang ke kampung atas ~ orang tuanya ngunang manibo gang manginang mogoloo "
        ]),
    Kata(
      kataIndonesia: "minum",
      kataEjaan: "mi.num",
      kataSahu: "kae",
      labelKata: "v",
      contohPenggunaan: "kios itu jual -- minuman dingin kios buun kae alo",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "minyak",
        kataEjaan: "mi.nyak",
        kataSahu: "wagel",
        labelKata: "n",
        contohPenggunaan: "-- kelapa wagel tauu;",
        isBookmarked: 0,
        kataTurunan: ["angin", "tanah", "rambut"],
        terjemahanTurunan: ["karawian", "goroho", "pomade"],
        kataImbuhan: ["ber.mi.nyak"],
        kataImbuhanIndonesia: ["berminyak"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["remawagel"],
        contohPenggunaanImbuhan: ["mukanya ~ bihon remawagel"]),
    Kata(
        kataIndonesia: "miring",
        kataEjaan: "mi.ring",
        kataSahu: "lenge",
        labelKata: "a",
        contohPenggunaan: "kapal itu -- ke kanan kapal ge lenge kuwida",
        isBookmarked: 0,
        kataImbuhan: [
          "me.mi.ring.kan"
        ],
        kataImbuhanIndonesia: [
          "memiringkan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "silenge"
        ],
        contohPenggunaanImbuhan: [
          "orang sakit itu sudah mampu ~ tubuhnya ngoa sidi silenge ailese"
        ]),
    Kata(
      kataIndonesia: "mirip",
      kataEjaan: "mi.rip",
      kataSahu: "matero",
      labelKata: "a",
      contohPenggunaan: "muka anak itu -- ibunya ngoa ge mabion matero mangina",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "miskin",
      kataEjaan: "mis.kin",
      kataSahu: "madingau nua",
      labelKata: "a",
      contohPenggunaan: "membantu orang-orang -- worion ngoa madingau nua",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "mohon",
        kataEjaan: "mo.hon",
        kataSahu: "masigoloo",
        labelKata: "v",
        contohPenggunaan:
            "-- ampun kepada Allah masigoloo ampun rema Jou madutu;",
        isBookmarked: 0,
        kataImbuhan: ["per.mo.hon.an"],
        kataImbuhanIndonesia: ["permohonan"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["ogoloo"],
        contohPenggunaanImbuhan: ["~ sudah di terima ogoloo dawun dua"]),
    Kata(
      kataIndonesia: "mual",
      kataEjaan: "mu.al",
      kataSahu: "ngunang",
      labelKata: "a",
      contohPenggunaan: "minumlah obat supaya tidak -- kae souu languna awa",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "muat",
        kataEjaan: "mu.at",
        kataSahu: "sibaleng",
        labelKata: "v",
        contohPenggunaan:
            "kamar itu bisa empat -- orang kamar ge ngadua manga ngii;",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.mu.at.an",
          "me.mu.at",
          "ter.mu.at"
        ],
        kataImbuhanIndonesia: [
          "bermuatan",
          "memuat",
          "termuat"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "remagina",
          "madara",
          "sibalen"
        ],
        contohPenggunaanImbuhan: [
          "truk ~ sayur-sayuran oto ge remagina wuge-wuge",
          "karung itu ~ seratus liter beras karong ge madara yea latumoi",
          "barang-barang itu tidak ~ dalam satu truk barang ge sibalen dua toma oto"
        ]),
    Kata(
        kataIndonesia: "mudah",
        kataEjaan: "mu.dah",
        kataSahu: "laimura",
        labelKata: "a",
        contohPenggunaan: "sedikit -- laimura cekaua;",
        isBookmarked: 0,
        kataTurunan: [
          "tersinggung"
        ],
        terjemahanTurunan: [
          "capati ruta"
        ],
        kataImbuhan: [
          "pe.mu.dah"
        ],
        kataImbuhanIndonesia: [
          "pemudah"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "tubaiye"
        ],
        contohPenggunaanImbuhan: [
          "seorang ~ tidak bekerja secara sungguh-sungguh tubaiye ge munara saka-sakala"
        ]),
    Kata(
        kataIndonesia: "mufakat",
        kataEjaan: "mu.fa.kat",
        kataSahu: "ametee",
        labelKata: "a",
        contohPenggunaan:
            "telah tercapai -- antara kedua bela pihak sanga dawong gogoloo moi-moi nihi;",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.mu.fa.kat",
          "pe.mu.fa.kat.an"
        ],
        kataImbuhanIndonesia: [
          "bermufakat",
          "pemufakatan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "masigoroo",
          "demo"
        ],
        contohPenggunaanImbuhan: [
          "mereka ~ untuk membangun jalan desa adirion ngoom gam desa",
          "ikut dalam ~ matee toma demo"
        ]),
    Kata(
        kataIndonesia: "muka",
        kataEjaan: "mu.ka",
        kataSahu: "biono",
        labelKata: "n",
        contohPenggunaan:
            " disambut dengan -- manis dawong re biono nyelo-nyelo",
        isBookmarked: 0,
        kataTurunan: [
          "manis",
          "masam",
          "tebal"
        ],
        terjemahanTurunan: [
          "biono rous",
          "bion cira",
          "biono kapiri"
        ],
        kataImbuhan: [
          "ber.mu.ka",
          "ber.mu.ka-mu.ka",
          "per.mu.ka.an"
        ],
        kataImbuhanIndonesia: [
          "bermuka",
          "bermuka-muka",
          "permukaan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "remabion",
          "mataladi",
          "mabion"
        ],
        contohPenggunaanImbuhan: [
          "~ seperti raksasa remabion matero ngowa lamo-lamoo",
          "diadakan pertemuan ~ antara kepala suku babicara mataladi re nanga ngomo",
          "timbul di atas ~ air baol toma banyo mabion"
        ]),
    Kata(
        kataIndonesia: "mulut",
        kataEjaan: "mu.lut",
        kataSahu: "madang",
        labelKata: "n",
        contohPenggunaan:
            "jangan percaya pada -- orang ngaku awa ngoaa manga demo;",
        isBookmarked: 0,
        kataTurunan: [
          "bawel",
          "berbisa",
          "kotor",
          "manis",
          "usil"
        ],
        terjemahanTurunan: [
          "demo rempe",
          "udu",
          "madang taudu faja",
          "madang lairous",
          "udu paibicara ngoaa"
        ],
        kataImbuhan: [
          "ber.mu.lut-mu.lut",
          "mu.lut-mu.lut.an"
        ],
        kataImbuhanIndonesia: [
          "bermulut-mulut",
          "mulut-mulutan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "mabicara",
          "mangaa demo"
        ],
        contohPenggunaanImbuhan: [
          "jangan suka ~ dengan dia ngawa nyafsu mabicara reunang",
          "menjadi ~ orang ijadi ngoaa mangaa demo"
        ]),
    Kata(
        kataIndonesia: "muncul",
        kataEjaan: "mun.cul",
        kataSahu: "baol",
        labelKata: "v",
        contohPenggunaan:
            "matahari -- dari balik awan wanger baol toma kamo-kamo madudung;",
        isBookmarked: 0,
        kataImbuhan: ["pe.mun.cul.an"],
        kataImbuhanIndonesia: ["pemunculan"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["isupu"],
        contohPenggunaanImbuhan: ["~ buku baru ge aro isupu"]),
    Kata(
        kataIndonesia: "mundur",
        kataEjaan: "mun.dur",
        kataSahu: "torus",
        labelKata: "v",
        contohPenggunaan: "melangkah -- hele torus",
        isBookmarked: 0,
        kataTurunan: ["maju"],
        terjemahanTurunan: ["maju toru"],
        kataImbuhan: ["me.mun.dur.kan"],
        kataImbuhanIndonesia: ["memundurkan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["sitorus"],
        contohPenggunaanImbuhan: ["hati-hati ~ mobil sitorus oto lala"]),
    Kata(
        kataIndonesia: "muntah",
        kataEjaan: "mun.tah",
        kataSahu: "ngunang",
        labelKata: "v",
        contohPenggunaan:
            "begitu cium bau busuk ia langsung -- ngunang  tumos uria mapokur",
        isBookmarked: 0,
        kataTurunan: [
          "berak",
          "darah"
        ],
        terjemahanTurunan: [
          "ngunang rekioo",
          "ngunang rekioo"
        ],
        kataImbuhan: [
          "mun.ta.han"
        ],
        kataImbuhanIndonesia: [
          "muntahan"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "singunang"
        ],
        contohPenggunaanImbuhan: [
          "anak itu batuk hingga mengeluarkan ~ lendir ngoolo ge di`iit re singunang mudukat"
        ]),
    Kata(
        kataIndonesia: "musnah",
        kataEjaan: "mus.nah",
        kataSahu: "yirang",
        labelKata: "v",
        contohPenggunaan: "hartanya -- dimakan api harta moi rou tomauu",
        isBookmarked: 0,
        kataImbuhan: ["me.mus.nah.kan"],
        kataImbuhanIndonesia: ["memusnahkan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["siyirang"],
        contohPenggunaanImbuhan: ["hama itu telah ~ padi hama siyirang yea"]),
    //section N
    Kata(
        kataIndonesia: "nabi",
        kataEjaan: "na.bi",
        kataSahu: "ngimo-ngimo",
        labelKata: "n",
        contohPenggunaan:
            "Muhammad saw ialah -- dan rasul terakhir muhammad odadi ngene nanga ngimo-ngimo madutu",
        isBookmarked: 0,
        kataImbuhan: [
          "ke.na.bi.an"
        ],
        kataImbuhanIndonesia: [
          "kenabian"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "dadi ngimo-ngimo"
        ],
        contohPenggunaanImbuhan: [
          "mukjizat diberikan allah kepada nabi untuk menguatkan ~ dan kerasulannya aa tanda heran sipulaa pai toma dadi ngimo-ngimo"
        ]),
    Kata(
      kataIndonesia: "nafkah",
      kataEjaan: "naf.kah",
      kataSahu: "pahala",
      labelKata: "n",
      contohPenggunaan:
          "suami wajib memberi -- kepada istrinya malasu pulaa nanga pahala toma werea",
      isBookmarked: 0,
      kataTurunan: ["cerai"],
      terjemahanTurunan: ["mawo duu"],
    ),
    Kata(
        kataIndonesia: "nafsu",
        kataEjaan: "naf.su",
        kataSahu: "nyafsu",
        labelKata: "n",
        contohPenggunaan:
            "ikan asin dan sayur asam menambah -- makan nyao gasi re uge kokowii sidogo nanga nyafsu",
        isBookmarked: 0,
        kataTurunan: ["amarah", "setan", "tabiat"],
        terjemahanTurunan: ["nyafsu ruta", "setan mamau", "nyafsu rous"],
        kataImbuhan: ["ber.naf.su"],
        kataImbuhanIndonesia: ["bernafsu"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["rainyafsu"],
        contohPenggunaanImbuhan: ["tidak -- makan ua rainyafsu omo"]),
    Kata(
        kataIndonesia: "naik",
        kataEjaan: "na.ik",
        kataSahu: "pere",
        labelKata: "v",
        contohPenggunaan: "-- pohon jambu pere guwidung",
        isBookmarked: 0,
        kataTurunan: [
          "darah",
          "rezeki",
          "takhta",
          "turun"
        ],
        terjemahanTurunan: [
          "ngaun pere",
          "pahala repe",
          "pere dedegor",
          "uci pere"
        ],
        kataImbuhan: [
          "me.na.iki",
          "me.na.ik.kan"
        ],
        kataImbuhanIndonesia: [
          "menaiki",
          "menaikkan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "palen",
          "sibere"
        ],
        contohPenggunaanImbuhan: [
          "~ sepeda palen fis",
          "mereka ~ bendera anang sibere bandera"
        ]),
    Kata(
        kataIndonesia: "najis",
        kataEjaan: "na.jis",
        kataSahu: "faja",
        labelKata: "a",
        contohPenggunaan: "tempat yang -- ngii majira",
        isBookmarked: 0,
        kataTurunan: ["besar", "kecil"],
        terjemahanTurunan: ["kioo", "osis"],
        kataImbuhan: ["me.na.jis.kan"],
        kataImbuhanIndonesia: ["menajiskan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["sifaja"],
        contohPenggunaanImbuhan: ["~ anjing sifaja nunuu"]),
    Kata(
        kataIndonesia: "nakal",
        kataEjaan: "na.kal",
        kataSahu: "nakala",
        labelKata: "a",
        contohPenggunaan: "perempuan -- wewerea nakala",
        isBookmarked: 0,
        kataImbuhan: ["ke.na.kal.an"],
        kataImbuhanIndonesia: ["kenakalan"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["manga nakala"],
        contohPenggunaanImbuhan: ["~ remaja ngoaolo manga nakala"]),
    Kata(
      kataIndonesia: "nama",
      kataEjaan: "na.ma",
      kataSahu: "lomang",
      labelKata: "n",
      contohPenggunaan: "anjing itu memiliki -- nunuu ge rema lomang",
      isBookmarked: 0,
      kataTurunan: ["kecil", "lengkap", "samaran"],
      terjemahanTurunan: ["lomang dolun", "omang simoing", "lomang biasa"],
    ),
    Kata(
        kataIndonesia: "nanah",
        kataEjaan: "na.nah",
        kataSahu: "boboang",
        labelKata: "n",
        contohPenggunaan: "kaki dia keluar -- ai dou sisupu boboang",
        isBookmarked: 0,
        kataImbuhan: ["ber.na.nah"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["rema boboang"],
        contohPenggunaanImbuhan: ["lukanya sudah ~ nyabot rema boboang dua"]),
    Kata(
        kataIndonesia: "nanti",
        kataEjaan: "nan.ti",
        kataSahu: "toma",
        labelKata: "n",
        contohPenggunaan: "kita bicarakan -- dua karowa bicara",
        isBookmarked: 0,
        kataImbuhan: [
          "nan.ti.nya"
        ],
        kataImbuhanIndonesia: [
          "nantinya"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "mahadu"
        ],
        contohPenggunaanImbuhan: [
          "~ saya akan membangun rumah maha ngoi tariwan niwala"
        ]),
    Kata(
        kataIndonesia: "napas",
        kataEjaan: "na.pas",
        kataSahu: "ngagar",
        labelKata: "n",
        contohPenggunaan: "sesak -- ngagar mangii",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.na.pas"
        ],
        kataImbuhanIndonesia: [
          "bernapas"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "rema ngagar"
        ],
        contohPenggunaanImbuhan: [
          "akhirnya ia dapat ~ dengan leluasa madogun wunang sanga rema ngagar rous"
        ]),
    Kata(
      kataIndonesia: "nasi",
      kataEjaan: "na.si",
      kataSahu: "yea",
      labelKata: "n",
      contohPenggunaan: "mencari sesuap -- disa yea jobo mei",
      isBookmarked: 0,
      kataTurunan: ["goreng", "gurih", "kerak", "kuning", "liwet", "putih"],
      terjemahanTurunan: [
        "yea goreng",
        "yea wagel",
        "yea tore",
        "yea paur",
        "yea kukusang",
        "yea budo"
      ],
    ),
    Kata(
        kataIndonesia: "nasib",
        kataEjaan: "na.sib",
        kataSahu: "nasib",
        labelKata: "n",
        contohPenggunaan:
            "-- membawanya terhempas di Kota Jakarta nasib gasaunang toma limau",
        isBookmarked: 0,
        kataTurunan: [
          "baik",
          "buruk"
        ],
        terjemahanTurunan: [
          "nasib rous",
          "nasib cira"
        ],
        kataImbuhan: [
          "ber.na.sib",
          "se.na.sib"
        ],
        kataImbuhanIndonesia: [
          "bernasib",
          "senasib"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "manasib",
          "matero"
        ],
        contohPenggunaanImbuhan: [
          "hari ini saya ~ baik ngoa olo ge manasib rous",
          "mereka merasa ~ dalam menghadapi persoalan itu anang manga nasib matero"
        ]),
    Kata(
      kataIndonesia: "nasihat",
      kataEjaan: "na.si.hat",
      kataSahu: "bererong",
      labelKata: "n",
      contohPenggunaan:
          "lebih baik aku turuti -- ibu ngoi tomete ngina ma bererong",
      isBookmarked: 0,
      kataTurunan: ["agama"],
      terjemahanTurunan: ["bererong agama"],
    ),
    Kata(
      kataIndonesia: "negeri",
      kataEjaan: "ne.ge.ri",
      kataSahu: "gam",
      labelKata: "n",
      contohPenggunaan:
          "ia melanjutkan sekolah ke luar -- wunang tagi sekola toma dudung",
      isBookmarked: 0,
      kataTurunan: ["orang"],
      terjemahanTurunan: ["ngoa manga gam"],
    ),
    Kata(
      kataIndonesia: "nenek",
      kataEjaan: "ne.nek",
      kataSahu: "bii",
      labelKata: "n",
      contohPenggunaan:
          "mereka merawat tiga orang -- yang sudah jompo anang adi ngilian bii maduange yang tagi riwar",
      isBookmarked: 0,
      kataTurunan: ["moyang"],
      terjemahanTurunan: ["etere dotum"],
    ),
    Kata(
        kataIndonesia: "niat",
        kataEjaan: "ni.at",
        kataSahu: "nanga mau",
        labelKata: "adv",
        contohPenggunaan:
            "muda-mudahan -- baik terwujud nau ngadun akal mamaung masanga",
        isBookmarked: 0,
        kataTurunan: [
          "baik",
          "hati"
        ],
        terjemahanTurunan: [
          "mau rous",
          "akal mamau"
        ],
        kataImbuhan: [
          "ber.ni.at",
          "ter.ni.at"
        ],
        kataImbuhanIndonesia: [
          "berniat",
          "terniat"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "akal mamau",
          "rema mau"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ akan melanjutkan sekolahnya tahun ini wunang akal mamau tagi sekola toma dudung",
          "telah lama ~ untuk pulang kampung aim mau madibo gam"
        ]),
    Kata(
      kataIndonesia: "nihil",
      kataEjaan: "ni.hil",
      kataSahu: "batol",
      labelKata: "a",
      contohPenggunaan: "buku tamu itu -- buku madara cual",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "nikah",
        kataEjaan: "ni.kah",
        kataSahu: "moloar",
        labelKata: "n",
        contohPenggunaan:
            "mereka sudah -- dan sah menjadi suami istri anang moloar dadi werea nau dua",
        isBookmarked: 0,
        kataTurunan: [
          "gantung",
          "sirih"
        ],
        terjemahanTurunan: [
          "moloar kole-kole",
          "moloar golo"
        ],
        kataImbuhan: [
          "per.ni.kah.an"
        ],
        kataImbuhanIndonesia: [
          "pernikahan"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "momoloar"
        ],
        contohPenggunaanImbuhan: [
          "dia akan menghadiri ~ saudaranya wunang wosapol toma jamuan momoloar"
        ]),
    Kata(
        kataIndonesia: "nikmat",
        kataEjaan: "nik.mat",
        kataSahu: "sai",
        labelKata: "a",
        contohPenggunaan: "masakannya memang -- ami lilian lai sai",
        isBookmarked: 0,
        kataImbuhan: ["me.nik.mati"],
        kataImbuhanIndonesia: ["menikmati"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["miomo"],
        contohPenggunaanImbuhan: ["~ makan malam ngomi miomo lobii"]),
    Kata(
        kataIndonesia: "nilai",
        kataEjaan: "ni.lai",
        kataSahu: "nilai",
        labelKata: "n",
        contohPenggunaan: "-- rupiah terus menurun nilai rupia uci turus",
        isBookmarked: 0,
        kataTurunan: [
          "tambah",
          "tukar"
        ],
        terjemahanTurunan: [
          "barang madugo",
          "masingali"
        ],
        kataImbuhan: [
          "ber.ni.lai",
          "ter.ni.lai"
        ],
        kataImbuhanIndonesia: [
          "bernilai",
          "ternilai"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "manila",
          "manilai"
        ],
        contohPenggunaanImbuhan: [
          "~ tinggi manila kauu",
          "tidak ~ manilai cua"
        ]),
    Kata(
        kataIndonesia: "noda",
        kataEjaan: "no.da",
        kataSahu: "faja",
        labelKata: "n",
        contohPenggunaan: "ada -- di bajunya baju rema faja",
        isBookmarked: 0,
        kataImbuhan: [
          "ter.no.da"
        ],
        kataImbuhanIndonesia: [
          "ternoda"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "sanga faja"
        ],
        contohPenggunaanImbuhan: [
          "ia merasa ikut ~ oleh perbuatan adiknya unang basom cira re ai ngoa magaa"
        ]),
    Kata(
      kataIndonesia: "nona",
      kataEjaan: "no.na",
      kataSahu: "ngoa welear",
      labelKata: "n",
      contohPenggunaan: "-- itu sangat cantik mosoles ge rous madutu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "normal",
      kataEjaan: "nor.mal",
      kataSahu: "tero-tero",
      labelKata: "a",
      contohPenggunaan:
          "bayi itu lahir dalam keadaan -- ngoolo kiyau sibuor toma lala madara",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "nyala",
        kataEjaan: "nya.la",
        kataSahu: "lejang",
        labelKata: "n",
        contohPenggunaan: "-- api itu masih berlangsung wuu malejang tagi moju",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.nya.la",
          "ber.nya.la-nya.la"
        ],
        kataImbuhanIndonesia: [
          "bernyala",
          "bernyala-nyala"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "madutu",
          "lejang-lejang"
        ],
        contohPenggunaanImbuhan: [
          "semangatnya ~ lamo madutu",
          "api ~ menghanguskan hutan itu wuu lejang-lejang sirou bangan"
        ]),
    Kata(
      kataIndonesia: "nyali",
      kataEjaan: "nya.li",
      kataSahu: "akal",
      labelKata: "n",
      contohPenggunaan: "pecah -- nya akal yirang",
      isBookmarked: 0,
      kataTurunan: ["kuat", "lemah"],
      terjemahanTurunan: ["akal koat", "akal tee ua"],
    ),
    Kata(
        kataIndonesia: "nyaman",
        kataEjaan: "nya.man",
        kataSahu: "sisidi cua",
        labelKata: "a",
        contohPenggunaan: "suaranya merdu -- didengar ‘idiang rousu madutu",
        isBookmarked: 0,
        kataImbuhan: ["ke.nya.man.an"],
        kataImbuhanIndonesia: ["kenyamanan"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["maroang"],
        contohPenggunaanImbuhan: ["~ hati akal maroang"]),
    Kata(
      kataIndonesia: "nyamuk",
      kataEjaan: "nya.muk",
      kataSahu: "gono",
      labelKata: "n",
      contohPenggunaan: "-- itu selalu mengganguku gono idadi dola aku",
      isBookmarked: 0,
      kataTurunan: ["gajah", "harimau", "malaria"],
      terjemahanTurunan: ["gaja magono", "gono tigiri", "malaria magono"],
    ),
    Kata(
        kataIndonesia: "nyawa",
        kataEjaan: "nya.wa",
        kataSahu: "nyawa",
        labelKata: "n",
        contohPenggunaan: "darah tertumpah -- melayang ngaun supu nyawa madagi",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.nya.wa"
        ],
        kataImbuhanIndonesia: [
          "bernyawa"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "manyawa"
        ],
        contohPenggunaanImbuhan: [
          "tubuh itu sudah tidak ~ lagi lese manyawa reicua"
        ]),
    Kata(
      kataIndonesia: "nyenyak",
      kataEjaan: "nye.nyak",
      kataSahu: "madutu",
      labelKata: "a",
      contohPenggunaan:
          "jika makan cukup kenyang tidurpun dapat -- orom la wotu rous",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "nyeri",
      kataEjaan: "nye.ri",
      kataSahu: "bason lese sisidi",
      labelKata: "a",
      contohPenggunaan:
          "pasien itu mulai meringis menahan -- wunang mulain bason lese sisidi",
      isBookmarked: 0,
      kataTurunan: ["alih", "otot", "saraf"],
      terjemahanTurunan: [
        "sanga baa mafaja",
        "giam madara sisidi",
        "sai sisidi"
      ],
    ),
    Kata(
      kataIndonesia: "nyonya",
      kataEjaan: "nyo.nya",
      kataSahu: "nyonya",
      labelKata: "n",
      contohPenggunaan:
          "tuan dan -- yang saya hormati tuan re nyonya moi tosi lamoo",
      isBookmarked: 0,
      kataTurunan: ["besar", "rumah"],
      terjemahanTurunan: ["nyonya lamoo", "nyonya wala"],
    ),
    Kata(
        kataIndonesia: "obat",
        kataEjaan: "obat",
        kataSahu: "sou u",
        labelKata: "n",
        contohPenggunaan: "ibu membeli -- flu aringina tibo sou u sa’dangutu",
        isBookmarked: 0,
        kataTurunan: [
          "angin",
          "batuk",
          "nyamuk",
          "tidur",
          "tradisional"
        ],
        terjemahanTurunan: [
          "sou u gam",
          "ngidi masou u gigi",
          "sou u bulutu",
          "sou u tai iti",
          "sou u gono"
        ],
        kataImbuhan: [
          "ber.o.bat",
          "meng.o.ba.ti",
          "peng.o.ba.tan",
          "ter.o.ba.ti"
        ],
        kataImbuhanIndonesia: [
          "berobat",
          "mengobati",
          "pengobatan",
          "terobati"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "masou u",
          "sou u",
          "masou u",
          "makangela"
        ],
        contohPenggunaanImbuhan: [
          "ayah ~ ke dokter baba tagi masou u toma dokter",
          "ibu ~ luka adik aringina sou u nongodu manyaboto",
          "ayah pergi ke tempat ~ tradisional baba tagi masouu toma so ugam mangi i",
          "rinduku ~ setelah bertemu dengan ibu sinyingar makangela rila sababu toma uu sanga aringin"
        ]),
    Kata(
      kataIndonesia: "obor",
      kataEjaan: "obor",
      kataSahu: "pancona",
      labelKata: "n",
      contohPenggunaan: "-- api itu menyala sangat besar popanco ro u isiru",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "odol",
      kataEjaan: "odol",
      kataSahu: "odol",
      labelKata: "n",
      contohPenggunaan:
          "adik tidak suka pada -- yang baunya tajam nongudu yemon odol nyi’di masou u",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "ojek",
      kataEjaan: "ojek /ojék/",
      kataSahu: "ojek",
      labelKata: "n",
      contohPenggunaan:
          "ayah bekerja sebagai tukang -- baba munara gasa-gasa ojek",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "olah",
        kataEjaan: "olah, meng.o.lah",
        kataSahu: "a a",
        labelKata: "v",
        contohPenggunaan:
            "kakak sedang -- data di komputer yioro munara a a data toma komputer",
        isBookmarked: 0,
        kataImbuhan: [
          "peng.o.la.han",
          "se.o.lah-o.lah"
        ],
        kataImbuhanIndonesia: [
          "pengolahan",
          "seolah-olah"
        ],
        labelKataImbuhan: [
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "a a",
          "matero"
        ],
        contohPenggunaanImbuhan: [
          "~ pertanian di desa itu masih menggunakan alat tradisional a a munara ngoa a ngu’da a’di pake alata dungia sida-sida",
          "dia (P) duduk terlihat pucat ~ melihat hantu munang (P) degoro amibiono saolo matero moodi i o ca ata"
        ]),
    Kata(
        kataIndonesia: "oles",
        kataEjaan: "oles, meng.o.les /olés, mengolés/",
        kataSahu: "ese",
        labelKata: "v",
        contohPenggunaan:
            "dia (P) -- kakinya dengan minyak kayu putih munang (P) ese mirou regorobo ate bu’de",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ngo.les.kan /mengoléskan/"
        ],
        kataImbuhanIndonesia: [
          "mengoleskan /mengoléskan/"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "siese:"
        ],
        contohPenggunaanImbuhan: [
          "Pak Rudi ~ obat pada bagian yang terasa sakit jou Rudi siese sou u tai beteolo ga ai si’di"
        ]),
    Kata(
        kataIndonesia: "omong",
        kataEjaan: "omong",
        kataSahu: "kanau",
        labelKata: "n",
        contohPenggunaan: "Ani selalu berkata ~ Ani mou kanau",
        isBookmarked: 0,
        kataTurunan: [
          "kosong"
        ],
        terjemahanTurunan: [
          "kanau sasakala"
        ],
        kataImbuhan: [
          "meng.o.mong.kan",
          "omong.an"
        ],
        kataImbuhanIndonesia: [
          "mengomongkan",
          "omongan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "makianau",
          "masiajel"
        ],
        contohPenggunaanImbuhan: [
          "Dona suka ~ kelakuan suaminya Dona makianau ngoa a mangajira",
          "Sikapnya yang angkuh itu menjadi ~ orang omatoro dadi ngoa a masiajel mangademo"
        ]),
    Kata(
      kataIndonesia: "ompol",
      kataEjaan: "om.pol, meng.om.pol",
      kataSahu: "osisi",
      labelKata: "n",
      contohPenggunaan:
          "anaknya sudah besar, tetapi masih ~ ngoa a ilamo o mada a moo osisi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "ompong",
      kataEjaan: "om.pong",
      kataSahu: "foda",
      labelKata: "a",
      contohPenggunaan: "anak itu giginya -- ngoa a genegema ngi’di foda",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "onar",
        kataEjaan: "onar",
        kataSahu: "nyiwere",
        labelKata: "n",
        contohPenggunaan:
            "preman itu menjadi pembuat -- ngoa a majira aa nyiwere",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.o.nar.kan"
        ],
        kataImbuhanIndonesia: [
          "mengonarkan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "manyiwere"
        ],
        contohPenggunaanImbuhan: [
          "tindakan pejabat itu ~ masyarakat ngoa a lalamo a mangaga a dadi manyiwere ngoa a repe"
        ]),
    Kata(
      kataIndonesia: "oranye",
      kataEjaan: "ora.nye",
      kataSahu: "paur madutua",
      labelKata: "n",
      contohPenggunaan:
          "warna kuning kemerah-merahan; jingga: rumah Ali berwarna -- wala manga Ali oranye",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "otak",
      kataEjaan: "otak",
      kataSahu: "otak",
      labelKata: "n",
      contohPenggunaan: "Andi mengalami penyakit kanker -- Andi osonga panyake",
      isBookmarked: 0,
      kataTurunan: ["atik"],
      terjemahanTurunan: [
        "ruabe: Budi selalu ~ motornya Budi pai ruabe ai motor"
      ],
    ),
    //section P
    Kata(
        kataIndonesia: "pacar",
        kataEjaan: "pa.car",
        kataSahu: "dedemo",
        labelKata: "n",
        contohPenggunaan:
            "Ayu selalu berimajinasi mempunyai -- artis Ayu pai mosielinsi dedemo o artis",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ma.cari",
          "pa.car.an"
        ],
        kataImbuhanIndonesia: [
          "memacari",
          "pacaran"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "dedemo",
          "dedemo"
        ],
        contohPenggunaanImbuhan: [
          "sudah lama Adi ~ Nina madiar dua a Adi dedemo rango Nina",
          "~ anak muda sekarang sudah terlalu bebas dedemo ngoa a rara masie pai duga"
        ]),
    Kata(
      kataIndonesia: "padi",
      kataEjaan: "pa.di",
      kataSahu: "eamaeno",
      labelKata: "n",
      contohPenggunaan: "ayah membeli bibit -- baba tibo eamaeno",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "pagar",
        kataEjaan: "pa.gar",
        kataSahu: "hisa",
        labelKata: "n",
        contohPenggunaan:
            "-- rumah Ana berwarna kuning wala hisa Ana bawarna paur",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ma.gar",
          "me.ma.gari"
        ],
        kataImbuhanIndonesia: [
          "memagar",
          "memagari"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "omadaku",
          "ahisa"
        ],
        contohPenggunaanImbuhan: [
          "Pak Lurah ~ diri dari korupsi manyira omadaku aidiri worom pipis",
          "Udin ~ pekarangannya dengan bambu Udin a ahisa taisoan reo hisa tonga"
        ]),
    Kata(
        kataIndonesia: "pagi",
        kataEjaan: "pa.gi",
        kataSahu: "dada ia",
        labelKata: "n",
        contohPenggunaan:
            "bagian awal dari hari: -- hari yang cerah dada ia manyonyo ara",
        isBookmarked: 0,
        kataTurunan: [
          "buta"
        ],
        terjemahanTurunan: [
          "gaigainia"
        ],
        kataImbuhan: [
          "ke.pa.gi.an"
        ],
        kataImbuhanIndonesia: [
          "kepagian"
        ],
        labelKataImbuhan: [
          "a"
        ],
        kataSahuImbuhan: [
          "cak bibintia"
        ],
        contohPenggunaanImbuhan: [
          "lebih baik berangkat ~ daripada kesiangan labai tagi tada ini a pai dua a wangar olona"
        ]),
    Kata(
        kataIndonesia: "pakai",
        kataEjaan: "pa.kai",
        kataSahu: "cakapan pake",
        labelKata: "v",
        contohPenggunaan:
            "tas yang di -- Lusi sangat bagus tohe masigare ngolusima pake lai rousu",
        isBookmarked: 0,
        kataImbuhan: [
          "pa.kai.an",
          "me.ma.kai",
          "pe.ma.kai",
          "pe.ma.kai.an"
        ],
        kataImbuhanIndonesia: [
          "pakaian",
          "memakai",
          "pemakai",
          "pemakaian"
        ],
        labelKataImbuhan: [
          "n",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "pakeang",
          "masigare",
          "pake",
          "pakai"
        ],
        contohPenggunaanImbuhan: [
          "ibu membeli ~ di pasar aringina mo tibo ami pakeang toma butu",
          "ibu ~ baja kebaya aringina mo masigare baju kabaya",
          "Bagus dikenal sebagai ~ narkoba Bagus ngoa ananao gao pake narkoba",
          "~ listrik di rumahku sangat banyak pada bulan ini pakai listrik lai lamo tari wala tomangara nenane"
        ]),
    Kata(
        kataIndonesia: "paman",
        kataEjaan: "pa.man",
        kataSahu: "baba manyira",
        labelKata: "n",
        contohPenggunaan: "-- seorang peternak sapi baba manyira piara sapi",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.pa.man"
        ],
        kataImbuhanIndonesia: [
          "berpaman"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "dagelom manyira"
        ],
        contohPenggunaanImbuhan: [
          "Ani ~ seorang polisi Ani dagelom manyira polisi"
        ]),
    Kata(
        kataIndonesia: "sopan",
        kataEjaan: "so.pan",
        kataSahu: "sijum",
        labelKata: "v",
        contohPenggunaan:
            "Adi -- sepeda yang baru dibelinya Adi sijum am fis susungi",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ma.mer.kan /memamérkan/",
          "pa.mer.an /paméran/"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "masijum",
          "sijum"
        ],
        contohPenggunaanImbuhan: [
          "Lia ~ nilai ujiannya yang tinggi Lia masijum ami nila ujia mangonu u",
          "~ lukisan sijum gambar"
        ]),
    Kata(
        kataIndonesia: "panas",
        kataEjaan: "pa.nas",
        kataSahu: "sau u",
        labelKata: "a",
        contohPenggunaan:
            "hari ini udara terasa sangat -- wanger nangene kuruwiyana babason sau u",
        isBookmarked: 0,
        kataTurunan: [
          "bara",
          "hati",
          "kuku",
          "matahari"
        ],
        terjemahanTurunan: [
          "sau u madutu",
          "akal masau u",
          "sau u madutua",
          "wanger masau u"
        ],
        kataImbuhan: [
          "me.ma.nas",
          "me.ma.nas.kan"
        ],
        kataImbuhanIndonesia: [
          "memanas",
          "memanaskan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "isasau u",
          "sisasau u"
        ],
        contohPenggunaanImbuhan: [
          "suasana sidang di pengadilan semakin ~ malolomne ganapu isasau u",
          "ibu ~ gulai ikan aringina mosite ene isasau u dabu nyao o"
        ]),
    Kata(
        kataIndonesia: "panci",
        kataEjaan: "pan.ci",
        kataSahu: "giu u",
        labelKata: "n",
        contohPenggunaan:
            "ibu membuang -- yang sudah rusak aringina moupa a giu u majira",
        isBookmarked: 0,
        kataImbuhan: [
          "me.man.cing",
          "pan.cing",
          "pe.man.cing",
          "pe.man.cing.an"
        ],
        kataImbuhanIndonesia: [
          "memancing",
          "pancing",
          "pemancing",
          "pemancingan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "magaolo",
          "gumala",
          "ngoa a magagaolo",
          "gagaolo"
        ],
        contohPenggunaanImbuhan: [
          "Didi ~ ikan Didi magaolo nyao o",
          "ayah membeli alat ~ baba tibo o gumala mala o",
          "Pak Maman terkenal sebagai ~ handal Jou Maman ngoa a magagaolo nana o disa-disa nyao o mate e",
          "Andi membersihkan kolam ~ Andi sigofi kolam gagaolo"
        ]),
    Kata(
        kataIndonesia: "pandang",
        kataEjaan: "pan.dang",
        kataSahu: "odi i",
        labelKata: "n",
        contohPenggunaan:
            "anak itu di -- sebelah mata ngoa a genage si odi i pai laodi’dara",
        isBookmarked: 0,
        kataImbuhan: [
          "me.man.dang",
          "pan.dang.an",
          "ter.pan.dang"
        ],
        kataImbuhanIndonesia: [
          "memandang",
          "pandangan",
          "terpandang"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "mauo di’i",
          "odi i",
          "ngoa a kumati"
        ],
        contohPenggunaanImbuhan: [
          "Andi ~ Lisa begitu dalam Andi Lisa mauo di'i silakodoto",
          "cinta pada ~ pertama dadalara toma odi i mamulai nyi a",
          "keluarga sangat ~ ngitu rengale ngoa a kumati ua u nana o"
        ]),
    Kata(
        kataIndonesia: "panggang",
        kataEjaan: "pang.gang",
        kataSahu: "osumo",
        labelKata: "v",
        contohPenggunaan: "Risa membeli alat -- Risa o tibo alata osumo",
        isBookmarked: 0,
        kataImbuhan: [
          "me.mang.gang",
          "di.pang.gang"
        ],
        kataImbuhanIndonesia: [
          "memanggang",
          "dipanggang"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "sio sumo",
          "osumo"
        ],
        contohPenggunaanImbuhan: [
          "ayah ~ ikan baba o sio sumo nyao o",
          "ayam itu ~ di atas tungkunamo ge ya osumo"
        ]),
    Kata(
        kataIndonesia: "panggil, memanggil",
        kataEjaan: "pang.gil, me.mang.gil",
        kataSahu: "aro",
        labelKata: "v",
        contohPenggunaan:
            "ibu -- adik si bontot aringina oro manongudu si bonto",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.mang.gil.an",
          "pang.gi.lan"
        ],
        kataImbuhanIndonesia: [
          "pemanggilan",
          "panggilan"
        ],
        labelKataImbuhan: [
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "aro",
          "aro"
        ],
        contohPenggunaanImbuhan: [
          "polisi melakukan ~ secara paksa kepada koruptor itu polisi aro sinati-nati ma korupsi",
          "~ adik adalah si bungsu si aro manongu’du si bonto"
        ]),
    Kata(
        kataIndonesia: "panjang",
        kataEjaan: "pan.jang",
        kataSahu: "ki`dang",
        labelKata: "a",
        contohPenggunaan:
            "rambut kakak -- sekali ari yior mautu ki`dang masala",
        isBookmarked: 0,
        kataTurunan: [
          "lidah",
          "mata",
          "tangan"
        ],
        terjemahanTurunan: [
          " nyai kiki`dang",
          "silao doto",
          "tori tori"
        ],
        kataImbuhan: [
          "me.man.jang.kan",
          "mem.per.pan.jang",
          "se.pan.jang"
        ],
        kataImbuhanIndonesia: [
          "memanjangkan",
          "memperpanjang",
          "sepanjang"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "masi ki`dang",
          "sitiar",
          "masi ki’dang"
        ],
        contohPenggunaanImbuhan: [
          "adik ingin ~ rambutnya ari nongo’du ngafusu masi ki`dang amiutu",
          "ayah pergi ke balai desa untuk ~ KTP baba tagi ma wala desa toma sitiar KTP",
          "~ jalan ngoom masi ki’dang"
        ]),
    Kata(
        kataIndonesia: "panjat",
        kataEjaan: "pan.jat",
        kataSahu: "pere",
        labelKata: "v",
        contohPenggunaan: "Adi mengikuti lomba -- pinang Adi mete e pere rena",
        isBookmarked: 0,
        kataImbuhan: [
          "me.man.jat"
        ],
        kataImbuhanIndonesia: [
          "memanjat"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "pere"
        ],
        contohPenggunaanImbuhan: [
          "kera itu ~ pohon kelapa ‘mia pere toma ate waele"
        ]),
    Kata(
      kataIndonesia: "pantai",
      kataEjaan: "pan.tai",
      kataSahu: "ngolod mau’du",
      labelKata: "n",
      contohPenggunaan:
          "Dona duduk di tepi pantai Dona tegor toma ngolod mau’du",
      isBookmarked: 0,
      kataTurunan: ["bakau", "laut"],
      terjemahanTurunan: ["soki maa`du", "ngolod mau`du"],
    ),
    Kata(
      kataIndonesia: "papa",
      kataEjaan: "pa.pa",
      kataSahu: "baba",
      labelKata: "n",
      contohPenggunaan: "-- Didi seorang polisi baba Didi ngoa a polisi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "parang",
      kataEjaan: "pa.rang ",
      kataSahu: "pe`da",
      labelKata: "n",
      contohPenggunaan: "punggung -- itu patang pe`da ma’du’du ge rapoo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "paranormal",
      kataEjaan: "pa.ra.nor.mal",
      kataSahu: "maimaisi",
      labelKata: "n",
      contohPenggunaan: "Pak Joko dikenal sebagai -- Jou Joko ngoa a maimaisi’",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "paras",
      kataEjaan: "pa.ras",
      kataSahu: "biono",
      labelKata: "n",
      contohPenggunaan: "-- Ani sangat cantik biano Ani rousu lasa",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "partisipasi",
        kataEjaan: "par.ti.si.pa.si",
        kataSahu: "majojobo",
        labelKata: "n",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.par.ti.si.pa.si"
        ],
        kataImbuhanIndonesia: [
          "berpartisipasi"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "majojobo"
        ],
        contohPenggunaanImbuhan: [
          "seluruh masyarakat ~ pada acara pernikahan Dian gam marion majojobo gerimoloar Dian"
        ]),
    Kata(
      kataIndonesia: "paru-paru",
      kataEjaan: "pa.ru-pa.ru",
      kataSahu: "katere madara",
      labelKata: "n",
      contohPenggunaan:
          "Dina pergi ke dokter spesialis -- Dina tagi toma katere madara",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "parut",
        kataEjaan: "pa.rut",
        kataSahu: "eke",
        labelKata: "n",
        contohPenggunaan: "-- kelapa itu patah eke waele ge rapoo",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ma.rut",
          "pa.rut.an"
        ],
        kataImbuhanIndonesia: [
          "memarut",
          "parutan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "eke",
          "eke-eke"
        ],
        contohPenggunaanImbuhan: [
          "ibu sedang ~ singkong aringina ake kasibi",
          "ayah membeli alat ~ kelapa baba tibo eke-eke waele"
        ]),
    Kata(
        kataIndonesia: "pasang",
        kataEjaan: "pa.sang",
        kataSahu: "da`di",
        labelKata: "n",
        contohPenggunaan:
            "Paman membeli dua -- burung dara baba manyira tibo da`di moi",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ma.sang.kan",
          "pa.sang.an"
        ],
        kataImbuhanIndonesia: [
          "me.ma.sang.kan",
          "pa.sang.an"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sigare",
          "moloar"
        ],
        contohPenggunaanImbuhan: [
          "dokter ~ kawat gigi pada adik dokter sigare ngi’di makawa ge ngongo’du",
          "~ pengantin geri maloar"
        ]),
    Kata(
      kataIndonesia: "pasar",
      kataEjaan: "pa.sar",
      kataSahu: "butu",
      labelKata: "n",
      contohPenggunaan: "ibu pergi ke -- aringina tagi toma butu",
      isBookmarked: 0,
      kataTurunan: ["amal", "modal", "tahunan"],
      terjemahanTurunan: ["butu bubulaar", "butu pipisi", "musung"],
    ),
    Kata(
        kataIndonesia: "pasti",
        kataEjaan: "pas.ti",
        kataSahu: "cekaba’to",
        labelKata: "a",
        contohPenggunaan:
            "dia (P) -- datang ke rumah ku munang (P) cekaba’to mosapo toma wala ngoi",
        isBookmarked: 0,
        kataImbuhan: [
          "ke.pas.ti.an"
        ],
        kataImbuhanIndonesia: [
          "kepastian"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "totoma"
        ],
        contohPenggunaanImbuhan: [
          "Rara menunggu ~ kedatangan kekasihnya Rara totoma mosapo dedemo"
        ]),
    Kata(
        kataIndonesia: "patah",
        kataEjaan: "pa.tah",
        kataSahu: "rapoo",
        labelKata: "n",
        contohPenggunaan: " tangan gadis itu -- geam mosoles ge rapoo",
        isBookmarked: 0,
        kataTurunan: [
          "hati",
          "selera",
          "semangat",
          "tulang"
        ],
        terjemahanTurunan: [
          "sinyinga rapoo",
          "nafsu ngoromua",
          "samangata rapoo",
          "obong rapoo"
        ],
        kataImbuhan: [
          "me.ma.tah.kan",
          "pa.tah.an"
        ],
        kataImbuhanIndonesia: [
          "mematahkan",
          "patahan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sinyinga",
          "marapoo"
        ],
        contohPenggunaanImbuhan: [
          "dia (P) selalu ~ semangatku munang sinyinga tolaa ngoi",
          "~ batang pohon ate marapoo"
        ]),
    Kata(
        kataIndonesia: "patuh",
        kataEjaan: "pa.tuh",
        kataSahu: "nyengana",
        labelKata: "a",
        contohPenggunaan:
            "adik itu sangat -- pada ibu nongo`du ge mo nyengar aringina",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ma.tuhi"
        ],
        kataImbuhanIndonesia: [
          "mematuhi"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "nyengar"
        ],
        contohPenggunaanImbuhan: [
          "Gina ~ perintah ayah Gina nyengar opareta baba"
        ]),
    Kata(
      kataIndonesia: "pedas",
      kataEjaan: "pe.das",
      kataSahu: "igosomas",
      labelKata: "n",
      contohPenggunaan: "omongannya sangat -- sasau u igosomas",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "pegang",
        kataEjaan: "pe.gang",
        kataSahu: "guu",
        labelKata: "v",
        contohPenggunaan: "ibu -- uang dari ayah aringina guu pipis ge baba",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.pe.ganga.n",
          "pe.gang.an"
        ],
        kataImbuhanIndonesia: [
          "ber.pe.ganga.n",
          "pe.gang.an"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "cako",
          "guu"
        ],
        contohPenggunaanImbuhan: [
          "Doni ~ tangan dengan erat Doni cako sinamot geam",
          "Andi ~ tangan dengan Nina Andi guu geam Nina"
        ]),
    Kata(
        kataIndonesia: "pejam",
        kataEjaan: "pe.jam",
        kataSahu: "ruwut",
        labelKata: "v",
        contohPenggunaan: "matanya -- lao ruwut",
        isBookmarked: 0,
        kataImbuhan: ["ter.pe.jam"],
        kataImbuhanIndonesia: ["terpejam"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["siruwut"],
        contohPenggunaanImbuhan: ["mata Rudi ~ lao Rudi siruwut"]),
    Kata(
        kataIndonesia: "pelan",
        kataEjaan: "pe.lan",
        kataSahu: "kolowa",
        labelKata: "a",
        contohPenggunaan: "Dian berjalan sangat -- Dian tagi kolowa",
        isBookmarked: 0,
        kataImbuhan: ["pe.lan-pe.lan"],
        labelKataImbuhan: ["a"],
        kataSahuImbuhan: ["maca cange"],
        contohPenggunaanImbuhan: ["Adik berjalan ~ nongo’du tagi maca cange"]),
    Kata(
      kataIndonesia: "pelepah",
      kataEjaan: "pe.le.pah",
      kataSahu: "galuwawa",
      labelKata: "n",
      contohPenggunaan: "-- pohon kelapa ate ma galuwawa waele",
      isBookmarked: 0,
      kataTurunan: ["daun"],
      terjemahanTurunan: ["soa magaluwawa"],
    ),
    Kata(
        kataIndonesia: "pelihara, memelihara",
        kataEjaan: "pe.li.ha.ra, me.me.li.ha.ra",
        kataSahu: "kadihara",
        labelKata: "",
        contohPenggunaan: "Ana -- kucing Ana galuwawa kucing",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.me.li.ha.ra",
          "pe.me.li.ha.ra.an"
        ],
        kataImbuhanIndonesia: [
          "pemelihara",
          "pemeliharaan"
        ],
        labelKataImbuhan: [
          ""
        ],
        kataSahuImbuhan: [
          "kadihara",
          "kadihara"
        ],
        contohPenggunaanImbuhan: [
          "ibu ~ tanaman hias aringina kadihara bunga",
          "~ gedung kadihara wala"
        ]),
    Kata(
        kataIndonesia: "pendek",
        kataEjaan: "pen.dek /péndék",
        kataSahu: "bo’koo",
        labelKata: "a",
        contohPenggunaan: "rambut Ana -- uutu Ana bo’koo",
        isBookmarked: 0,
        kataTurunan: [
          "akal",
          "pikiran"
        ],
        terjemahanTurunan: [
          "tataruta",
          "sidai orang"
        ],
        kataImbuhan: [
          "mem.per.pen.dek /memperpéndék/",
          "ke.pen.dek.an /kepéndékan/ "
        ],
        kataImbuhanIndonesia: [
          "memperpendek /memperpéndék/",
          "kependekan /kepéndékan/ "
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sicori",
          "sibo`koo"
        ],
        contohPenggunaanImbuhan: [
          "Dini ~ rambutnya Dini sicori amiutu",
          "celana Andi ~ celana Andi sibo`koo"
        ]),
    Kata(
      kataIndonesia: "pendeta",
      kataEjaan: "pen.de.ta /péndéta/",
      kataSahu: "majoaiwalamoi",
      labelKata: "n",
      contohPenggunaan: "-- itu sangat ramah majoaiwalamoi momonere",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "pengantin",
      kataEjaan: "pe.ngan.tin",
      kataSahu: "gerimoloar",
      labelKata: "n",
      contohPenggunaan: "-- wanita gerimoloar warea",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "peniti",
      kataEjaan: "pe.ni.ti",
      kataSahu: "jait",
      labelKata: "n",
      contohPenggunaan: "-- itu berkarat jait ikeho",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "penjaga",
      kataEjaan: "pen.ja.ra",
      kataSahu: "karanga",
      labelKata: "n",
      contohPenggunaan:
          "-- itu penuh dengan penjahat karanga romang ngoaa totoli",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "pental, terpental",
      kataEjaan: "pen.tal, ter.pen.tal",
      kataSahu: "bauu",
      labelKata: "v",
      contohPenggunaan: "adik jatuh -- dari sepeda nongo’du eta bauu ge fis",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "penting",
        kataEjaan: "pen.ting",
        kataSahu: "cacautu",
        labelKata: "a",
        contohPenggunaan:
            "Rio merupakan orang -- di kantornya Rio ngoa a cacautu",
        isBookmarked: 0,
        kataImbuhan: [
          "me.men.ting.kan"
        ],
        kataImbuhanIndonesia: [
          "mementingkan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "simitang"
        ],
        contohPenggunaanImbuhan: [
          "dia (P) ~ dirinya sendiri munang (P) simitang adiri"
        ]),
    Kata(
      kataIndonesia: "penyu",
      kataEjaan: "pe.nyu",
      kataSahu: "urubanga",
      labelKata: "n",
      contohPenggunaan: "-- itu berjalan urubanga tagi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "pepaya",
      kataEjaan: "pe.pa.ya",
      kataSahu: "payo",
      labelKata: "n",
      contohPenggunaan: "-- itu sudah busuk payo ge majira",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "perah, memerah",
        kataEjaan: "pe.rah, me.me.rah",
        kataSahu: "coo",
        labelKata: "v",
        contohPenggunaan: "Adi sedang -- kelapa Adi coo wa`ele",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.me.rah",
          "pe.rah.an"
        ],
        kataImbuhanIndonesia: [
          "pe.me.rah",
          "pe.rah.an"
        ],
        labelKataImbuhan: [
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "cocoo",
          "coo"
        ],
        contohPenggunaanImbuhan: [
          "~ susu sapi ngoa a cocoo susu sapi",
          "sapi ~ sapi coo"
        ]),
    Kata(
      kataIndonesia: "perahu",
      kataEjaan: "pe.ra.hu",
      kataSahu: "oti",
      labelKata: "n",
      contohPenggunaan: "itu rusak oti gecira",
      isBookmarked: 0,
      kataTurunan: ["layar", "lepa"],
      terjemahanTurunan: ["otisidete", "kecewat"],
    ),
    Kata(
      kataIndonesia: "berak",
      kataEjaan: "pe.rak /pérak/",
      kataSahu: "salaka",
      labelKata: "n",
      contohPenggunaan: "ibu membeli gelang -- aringina tibo ali-ali salaka",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "perang",
        kataEjaan: "pe.rang",
        kataSahu: "yingini",
        labelKata: "n",
        contohPenggunaan: "keadaan -- oras nyingini",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.pe.rang.an",
          "ber.pe.rang"
        ],
        kataImbuhanIndonesia: [
          "peperangan",
          "berperang"
        ],
        labelKataImbuhan: [
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "yingin",
          "o’dususuu"
        ],
        contohPenggunaanImbuhan: [
          "medan ~  nyingin manyii",
          "polisi ~ melawan teroris polisi dususuu teroris"
        ]),
    Kata(
      kataIndonesia: "perangai",
      kataEjaan: "pe.ra.ngai",
      kataSahu: "majira",
      labelKata: "n",
      contohPenggunaan: "-- (p) sangat buruk munang akal majira",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "perangkap",
        kataEjaan: "pe.rang.kap",
        kataSahu: "mayigin",
        labelKata: "n",
        contohPenggunaan: "ayah membeli -- tikus baba tibo nguti mayigin",
        isBookmarked: 0,
        kataImbuhan: ["ter.pe.rang.kap"],
        kataImbuhanIndonesia: ["terperangkap"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["yigin"],
        contohPenggunaanImbuhan: ["tikus itu ~ nguti osam toma yigin"]),
    Kata(
        kataIndonesia: "perawan",
        kataEjaan: "pe.ra.wan",
        kataSahu: "mosoles",
        labelKata: "n",
        contohPenggunaan: "anak -- ngoa a masoles",
        isBookmarked: 0,
        kataTurunan: ["kencur", "tua"],
        terjemahanTurunan: ["ngoa a olo", "bibiri i"],
        kataImbuhan: ["ke.pe.ra.wan.an"],
        kataImbuhanIndonesia: ["keperawanan"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["amidir"],
        contohPenggunaanImbuhan: ["dia menjaga ~ munang dadanu amidir"]),
    Kata(
        kataIndonesia: "percaya",
        kataEjaan: "per.ca.ya",
        kataSahu: "ngaku",
        labelKata: "v",
        contohPenggunaan: "tidak -- ngaku ua",
        isBookmarked: 0,
        kataImbuhan: [
          "me.mer.ca.ya.kan",
          "ke.per.ca.ya.an"
        ],
        kataImbuhanIndonesia: [
          "memercayakan",
          "kepercayaan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sipulaa",
          "ngaku"
        ],
        contohPenggunaanImbuhan: [
          "pengusaha itu ~ hartanya kepada adiknya ngoa a wuwu unu sipulaa ai dola butu tai nongo’du",
          "~ bosnya ngaku ai bibiri i"
        ]),
    Kata(
        kataIndonesia: "perih",
        kataEjaan: "pe.rih",
        kataSahu: "tufang",
        labelKata: "a",
        contohPenggunaan: "matanya -- lao tufang",
        isBookmarked: 0,
        kataImbuhan: [
          "me.me.rih.kan",
          "ke.pe.rih.an"
        ],
        kataImbuhanIndonesia: [
          "memerihkan",
          "keperihan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "matufang",
          "otufang"
        ],
        contohPenggunaanImbuhan: [
          "~ hati akal matufang",
          "menahan ~ tahan otufang"
        ]),
    Kata(
        kataIndonesia: "periksa",
        kataEjaan: "pe.rik.sa",
        kataSahu: "sio`di",
        labelKata: "v",
        contohPenggunaan: "ayah sedang -- kesehatan baba sio`di sehat",
        isBookmarked: 0,
        kataImbuhan: [
          "me.me.rik.sa.kan"
        ],
        kataImbuhanIndonesia: [
          "memeriksakan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "sio`di"
        ],
        contohPenggunaanImbuhan: [
          "ibu ~ matanya ke dokter aringina sio`di ami lao taoma dokter"
        ]),
    Kata(
      kataIndonesia: "perintah",
      kataEjaan: "pe.rin.tah",
      kataSahu: "pareta",
      labelKata: "n",
      contohPenggunaan: "-- atasan sae pareta",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "perilaku",
      kataEjaan: "pe.ri.la.ku",
      kataSahu: "gaga a",
      labelKata: "n",
      contohPenggunaan: "-- Budi sangat baik gaga a Budi lai rosu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "perjaka",
      kataEjaan: "per.ja.ka",
      kataSahu: "tubaiye",
      labelKata: "n",
      contohPenggunaan: "anak -- ngoa a tubaiye",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "permanen",
      kataEjaan: "per.ma.nen /permanén/",
      kataSahu: "parmanen",
      labelKata: "a",
      contohPenggunaan: "spidol -- spidol parmanen",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "pernah",
      kataEjaan: "per.nah",
      kataSahu: "pernah",
      labelKata: "adv",
      contohPenggunaan: "adik -- tenggelam nongo’du pernah ojala",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "pertama",
      kataEjaan: "per.ta.ma",
      kataSahu: "sumoi",
      labelKata: "num",
      contohPenggunaan: "Dini mendapatkan juara -- Dini sanga juara sumoi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "perut",
      kataEjaan: "pe.rut",
      kataSahu: "pool",
      labelKata: "n",
      contohPenggunaan: "-- mulas karena diare munang pool si`di",
      isBookmarked: 0,
      kataTurunan: ["besar", "karet"],
      terjemahanTurunan: ["pool lama", "pool goro"],
    ),
    Kata(
        kataIndonesia: "pesan",
        kataEjaan: "pe.san",
        kataSahu: "bererong",
        labelKata: "n",
        contohPenggunaan: "-- dari ayah baba ma bererong",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.pe.san",
          "me.me.san",
          "me.me.san.kan",
          "pe.me.san"
        ],
        kataImbuhanIndonesia: [
          "ber.pe.san",
          "me.me.san",
          "me.me.san.kan",
          "pe.me.san"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sibererong",
          "bererong",
          "bererong",
          "bererong"
        ],
        contohPenggunaanImbuhan: [
          "guru ~ kepada anak muridnya guru sibererong tai murid",
          "dia (L) ~ kopi unang bererong kofi",
          "ibu ~ baju dengan Ratna aringina bererong o baju toma Ratna",
          "baju itu dikirim ke ~ baju si`dingut toma ngoaa manga bererong"
        ]),
    Kata(
        kataIndonesia: "pesta",
        kataEjaan: "pes.ta /pésta/",
        kataSahu: "ribi",
        labelKata: "n",
        contohPenggunaan: "ibu pergi ke -- aringina tagi ribi",
        isBookmarked: 0,
        kataTurunan: [
          "kawin",
          "panen"
        ],
        terjemahanTurunan: [
          "moloar",
          "maguruu"
        ],
        kataImbuhan: [
          "ber.pes.ta /berpésta/",
          "ber.pes.ta.pes.ta /berpésta-pésta/"
        ],
        kataImbuhanIndonesia: [
          "berpesta /berpésta/",
          "berpestapesta /berpésta-pésta/"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "ribi",
          "magaribi"
        ],
        contohPenggunaanImbuhan: [
          "mereka ~ pora ana a`di aa ribi rame"
              "anak muda sekarang suka ~ ngoa a tubaye aa mangaribi rerame"
        ]),
    Kata(
        kataIndonesia: "petik",
        kataEjaan: "pe.tik",
        kataSahu: "utu u",
        labelKata: "v",
        contohPenggunaan: "adik -- kelapa nongo`du utu u waele",
        isBookmarked: 0,
        kataImbuhan: [
          "me.me.tik.kan",
          "pe.me.tik"
        ],
        kataImbuhanIndonesia: [
          "memetikkan",
          "pemetik"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "utu u",
          "utuutu u"
        ],
        contohPenggunaanImbuhan: [
          "ibu sedang ~ bunga aringina utu u bunga",
          "dia (L) bekerja sebagai ~ cengkih unang (L) munara utuutu ubuaji"
        ]),
    Kata(
        kataIndonesia: "pihak",
        kataEjaan: "pi.hak",
        kataSahu: "mitang",
        labelKata: "n",
        contohPenggunaan:
            "dia (L) memerlukan bantuan dari semua -- unang (L) paralu o orubato raguna mitang",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.pi.hak",
          "me.mi.hak",
          "se.pi.hak"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "simitang",
          "simitang",
          "simitang"
        ],
        contohPenggunaanImbuhan: [
          "saya tidak ~ pada yang salah ngoi to simitang ngua re ngoa a ma rapu",
          "dia selalu ~ orang yang benar unang simitang rangoa ma banari",
          "pembatalan ~ simitang pai ra anang"
        ]),
    Kata(
        kataIndonesia: "pijat, memijat",
        kataEjaan: "pi.jat, me.mi.jat",
        kataSahu: "tino",
        labelKata: "v",
        contohPenggunaan: "kakak -- ibu yioro tino ma aringina",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.mi.jat",
          "pi.jat.an"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "tino-tino",
          "motino"
        ],
        contohPenggunaanImbuhan: [
          "Ayah Andi seorang ~ yang pandai Andi ami baba tino-tino ngoa a",
          "~ ibu membuat bayi itu tertidur aringina motino aa mangoa a kiyau mo utu"
        ]),
    Kata(
      kataIndonesia: "pikat, memikat",
      kataEjaan: "pi.kat, me.mi.kat",
      kataSahu: "irousu",
      labelKata: "v",
      contohPenggunaan:
          "ia (P) -- para penonton munang (P) yiding irousu masala",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "pikir",
        kataEjaan: "pi.kir",
        kataSahu: "sidibang",
        labelKata: "n",
        contohPenggunaan: "-- panjang sidibang ki`dang",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.mi.kir",
          "pe.mi.kir.an",
          "pi.kir.an",
          "ter.pi.kir.kan",
          "ber.pi.kir"
        ],
        labelKataImbuhan: [
          "n",
          "n",
          "n",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "warija",
          "opahe",
          "warija",
          "sidibang",
          "sidibang"
        ],
        contohPenggunaanImbuhan: [
          "Dino seorang ~ yang cerdas Dino ngoa a warija",
          "~ anak itu sangat luas ngoa a genage opahe lai ruata",
          "dia (L) pandai menangkap ~ orang lain unang (L) warija cako ngoa a manga",
          "tidak ~ olehku ta sidibang yia ua",
          " dia (L) selalu ~ yang baik unang (L) uma sidibang ma rorousu"
        ]),
    Kata(
        kataIndonesia: "pilih, memilih",
        kataEjaan: "pi.lih, me.mi.lih",
        kataSahu: "pili",
        labelKata: "v",
        contohPenggunaan: "ibu -- baju aringina pili baju",
        isBookmarked: 0,
        kataImbuhan: [
          "me.mi.lih-mi.lih",
          "me.mi.lih.kan",
          "pe.mi.lih.an",
          "ter.pi.lih"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "pili-pili",
          "pili",
          "cumutu",
          "pili"
        ],
        contohPenggunaanImbuhan: [
          "dia (L) selalu ~ pekerjaan unang (L) pai pili-pili ai munara",
          "Dian ~ baju untuk Tini Dian pili ai baju ge Tini",
          "~ ketua RT cumutu RT masae e",
          "dia (L) ~ menjadi ketua kelas unang (L) sanga pili kelas masae e"
        ]),
    Kata(
        kataIndonesia: "pimpin, memimpin",
        kataEjaan: "pim.pin, me.mim.pin.",
        kataSahu: "opimpi",
        labelKata: "v",
        contohPenggunaan: "dia (L) -- rapat unang (L) opimpin lolomu",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.mim.pin",
          "pim.pin.an",
          "ke.pe.mim.pin.an"
        ],
        kataImbuhanIndonesia: [
          "pe.mim.pin",
          "pim.pin.an",
          "ke.pe.mim.pin.an"
        ],
        labelKataImbuhan: [
          "n",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "sae",
          "sae",
          "manyira"
        ],
        contohPenggunaanImbuhan: [
          "~ yang adil sae mala lara",
          "ayah ditunjuk menjadi ~ baba cumutu sae ma sosongi",
          "banyak yang tidak suka dengan ~ kepala desa itu repe di ngafusua manyira ai pareta"
        ]),
    Kata(
        kataIndonesia: "pindah",
        kataEjaan: "pin.dah",
        kataSahu: "sijili",
        labelKata: "v",
        contohPenggunaan: "Dita -- rumah Dita wala sijili",
        isBookmarked: 0,
        kataTurunan: [
          "tangan",
          "buku",
          "darah"
        ],
        terjemahanTurunan: [
          "asipulaa",
          "asipulaa boku",
          "asipulaa ngaunu"
        ],
        kataImbuhan: [
          "ber.pin.dah",
          "me.min.dah.kan",
          "pe.min.dah.an",
          "pin.dah.an"
        ],
        kataImbuhanIndonesia: [
          "berpindah",
          "memindahkan",
          "pemindahan",
          "pindahan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "majili",
          "sijili",
          "sijili",
          "majili"
        ],
        contohPenggunaanImbuhan: [
          "Didi ~ tempat duduk Didi majili tae de tegor",
          "ayah ~ ang baba sijili barang",
          "~ lemari tua itu butuh waktu yang lama sijili lamari sida yorong waktu ti`ar",
          "gadis itu ~ dari luar negeri mosoles ge majili toma luar negeri"
        ]),
    Kata(
        kataIndonesia: "pinggang",
        kataEjaan: "ping.gang",
        kataSahu: "golona",
        labelKata: "v",
        contohPenggunaan: "ibu sakit -- aringina si`di golona",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.ping.gang",
          "se.ping.gang"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "golona",
          "golona"
        ],
        contohPenggunaanImbuhan: [
          "gadis itu ~ ramping mosoles ge mi golona cokom",
          "rambut Ana panjangnya ~ wutuki Ana danga ngadol toma golona"
        ]),
    Kata(
        kataIndonesia: "pinjam, meminjam",
        kataEjaan: "pin.jam, me.min.jam",
        kataSahu: "bau",
        labelKata: "v",
        contohPenggunaan: "Rian -- buku Rian bau oboku",
        isBookmarked: 0,
        kataImbuhan: [
          "me.min.jami",
          "pe.min.jam"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "sibau",
          "mabou"
        ],
        contohPenggunaanImbuhan: [
          "Adi ~ buku kepadaku Adi sibau abi boku",
          "~ uang dikenakan bunga mabou pipis sanga bunga"
        ]),
    Kata(
        kataIndonesia: "pintar",
        kataEjaan: "pin.tar",
        kataSahu: "warija",
        labelKata: "a",
        contohPenggunaan: "anak yang -- ngoa a warija",
        isBookmarked: 0,
        kataImbuhan: [
          "ter.pin.tar",
          "ke.pin.tar.an"
        ],
        kataImbuhanIndonesia: [
          "terpintar",
          "kepintaran"
        ],
        labelKataImbuhan: [
          "a",
          "n"
        ],
        kataSahuImbuhan: [
          "wariIja",
          "awarija"
        ],
        contohPenggunaanImbuhan: [
          "Dini merupakan murid ~ di sekolah Dini ngoa a aiwarija toma sakola",
          "~ boleh diuji aiwarija ngaunna tai i"
        ]),
    Kata(
      kataIndonesia: "pintu",
      kataEjaan: "pin.tu",
      kataSahu: "ngalan",
      labelKata: "n",
      contohPenggunaan: "ibu membuka -- aringina woi i ngalan",
      isBookmarked: 0,
      kataTurunan: ["depan", "gerbang", "keluar", "rezeki"],
      terjemahanTurunan: [
        " ngalan toma biono",
        " ngalan lamo o",
        "ngalan supu",
        "sanga rezeki"
      ],
    ),
    Kata(
      kataIndonesia: "piring",
      kataEjaan: "pi.ring",
      kataSahu: "su`de",
      labelKata: "n",
      contohPenggunaan: "ibu mencuci -- aringina soso o su`de",
      isBookmarked: 0,
      kataTurunan: ["kue", "mangkuk"],
      terjemahanTurunan: ["mamami masu`de", "su`de cope"],
    ),
    Kata(
        kataIndonesia: "pisah",
        kataEjaan: "pi.sah",
        kataSahu: "ma`dagi",
        labelKata: "a",
        contohPenggunaan: "-- rumah ma`dagi wala",
        isBookmarked: 0,
        kataTurunan: [
          "ranjang",
          "tidur"
        ],
        terjemahanTurunan: [
          "ma`utotolaa",
          "masisoii"
        ],
        kataImbuhan: [
          "me.mi.sah.kan",
          "ter.pi.sah"
        ],
        kataImbuhanIndonesia: [
          "memisahkan",
          "terpisah"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "ma`dagi",
          "maeyang"
        ],
        contohPenggunaanImbuhan: [
          "anak itu ~ diri ngoa a ge mo ma`dagi",
          "anak ayam itu ~ dari induknya namo mangoa am maeyang toma mangina"
        ]),
    Kata(
      kataIndonesia: "pisang",
      kataEjaan: "pi.sang",
      kataSahu: "bele",
      labelKata: "n",
      contohPenggunaan: "ibu membeli -- aringina tibo bele",
      isBookmarked: 0,
      kataTurunan: ["ambon", "ijo", "raja"],
      terjemahanTurunan: ["bele ambon", "bele ijo", "bele raja"],
    ),
    Kata(
        kataIndonesia: "pohon",
        kataEjaan: "po.hon",
        kataSahu: "ate",
        labelKata: "n",
        contohPenggunaan: "-- kelapa ate wael malese",
        isBookmarked: 0,
        kataImbuhan: ["pe.po.ho.nan"],
        kataImbuhanIndonesia: ["pepohonan"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["ate"],
        contohPenggunaanImbuhan: ["banyak ~ yang tumbang ate rubu marepe"]),
    Kata(
        kataIndonesia: "pojok",
        kataEjaan: "po.jok",
        kataSahu: "bu`buku",
        labelKata: "n",
        contohPenggunaan:
            "adik duduk di -- rumah nongo’du tegor ge wala ma bu`buku",
        isBookmarked: 0,
        kataImbuhan: [
          "me.mo.jok.kan",
          "ter.po.jok"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "siwuku",
          "siwuku"
        ],
        contohPenggunaanImbuhan: [
          "anak (L) itu selalu ~ orang unang (L) siwuku ngoa a",
          "tikus itu ~ nguti ge siwuku"
        ]),
    Kata(
        kataIndonesia: "potensi",
        kataEjaan: "po.ten.si /poténsi/",
        kataSahu: "majam",
        labelKata: "n",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "po.ten.si"
        ],
        kataImbuhanIndonesia: [
          "potensi"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "majam"
        ],
        contohPenggunaanImbuhan: [
          "gempa yang terjadi ~ tsunami wuwusu majam ngolod ro’du"
        ]),
    Kata(
        kataIndonesia: "potong",
        kataEjaan: "po.tong",
        kataSahu: "tolak",
        labelKata: "n",
        contohPenggunaan: "adik -- rambut ‘nongo`du tolak amiutu",
        isBookmarked: 0,
        kataTurunan: [
          "ayam",
          "kuku",
          "leher"
        ],
        terjemahanTurunan: [
          "tolak namo",
          "tolak kacimi",
          "tolak camal"
        ],
        kataImbuhan: [
          "me.mo.tong",
          "ter.po.tong"
        ],
        kataImbuhanIndonesia: [
          "memotong",
          "terpotong"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "suka",
          "oto"
        ],
        contohPenggunaanImbuhan: [
          "ibu ~ ikan aringina suka nyao o",
          "jarinya ~ giam oto"
        ]),
    Kata(
        kataIndonesia: "pribadi",
        kataEjaan: "pri.ba.di",
        kataSahu: "dirimasireten",
        labelKata: "n",
        contohPenggunaan: "-- sangat baik dirimasireten lai rosu",
        isBookmarked: 0,
        kataImbuhan: ["ke.pri.ba.di.an"],
        kataImbuhanIndonesia: ["kepribadian"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["akal"],
        contohPenggunaanImbuhan: ["~ ganda akal madara"]),
    Kata(
        kataIndonesia: "pucat",
        kataEjaan: "pu.cat",
        kataSahu: "bu`ta",
        labelKata: "a",
        contohPenggunaan: "wajahnya -- biono bu`ta",
        isBookmarked: 0,
        kataTurunan: [
          "lesu"
        ],
        terjemahanTurunan: [
          "mareos"
        ],
        kataImbuhan: [
          "me.mu.cat",
          "ke.pu.cat-pu.ca.tan"
        ],
        kataImbuhanIndonesia: [
          "memucat",
          "kepucat-pucatan"
        ],
        labelKataImbuhan: [
          "v",
          "a"
        ],
        kataSahuImbuhan: [
          "bu`ta",
          "bu`ta-bu`ta"
        ],
        contohPenggunaanImbuhan: [
          "kulitnya ~ karena kurang darah eno bu`ta sababu ngaun kurang",
          "warna ~ warna bu`ta-bu`ta"
        ]),
    Kata(
        kataIndonesia: "puji",
        kataEjaan: "pu.ji",
        kataSahu: "sitoro",
        labelKata: "n",
        contohPenggunaan: "mengucapkan -- dan syukur sibere sitoro sinyingara",
        isBookmarked: 0,
        kataImbuhan: [
          "me.mu.ji",
          "ter.pu.ji"
        ],
        labelKataImbuhan: [
          "v",
          "a"
        ],
        kataSahuImbuhan: [
          "sitoro",
          "lai rousu"
        ],
        contohPenggunaanImbuhan: [
          "ibu ~ masakan kakak aringina sitoro ngongorom yioro",
          "dia (P) bersikap ~ munang ai gaga lai rousu"
        ]),
    Kata(
        kataIndonesia: "pukul",
        kataEjaan: "pu.kul",
        kataSahu: "maututuu",
        labelKata: "n",
        contohPenggunaan:
            "waktu sudah -- satu pagi wakutu du’a maututuu romoi dada ai",
        isBookmarked: 0,
        kataTurunan: [
          "me.mu.kul v"
        ],
        terjemahanTurunan: [
          "maututu mereka ~ anang maututuu"
        ],
        kataImbuhan: [
          "me.mu.kul",
          "me.mu.kuli"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "maututu",
          "maututu",
          "tutu"
        ],
        contohPenggunaanImbuhan: [
          "adik ~ dinding nongo`du maututuu wala",
          "warga ~ maling itu ngoa a repe tutu ngoa a tori-torii"
        ]),
    Kata(
        kataIndonesia: "pulang",
        kataEjaan: "pu.lang",
        kataSahu: "ma`dibo",
        labelKata: "v",
        contohPenggunaan: "-- kampung ma`dibo tomagam",
        isBookmarked: 0,
        kataTurunan: [
          "modal",
          "pergi",
          "pokok"
        ],
        terjemahanTurunan: [
          "modal di’dibo",
          "tagi di’bo",
          " pokok didi’bo"
        ],
        kataImbuhan: [
          "me.mu.lang.kan",
          "ber.pu.lang"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "di`dibo",
          "di`bo"
        ],
        contohPenggunaanImbuhan: [
          "guru ~ semua murid guru di`dibo ai murid-murid",
          "ayah telah ~ baba di`dibo dua a"
        ]),
    Kata(
        kataIndonesia: "raba",
        kataEjaan: "ra.ba",
        kataSahu: "lamus",
        labelKata: "v",
        contohPenggunaan: "dia (L) -- muka saya unang (L) lamus biono ngoi",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ra.ba"
        ],
        kataImbuhanIndonesia: [
          "meraba"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "lalamus"
        ],
        contohPenggunaanImbuhan: [
          "Agung ~ tangan Dini Agung lalamus geam Dini"
        ]),
    Kata(
      kataIndonesia: "rabu",
      kataEjaan: "ra.bu",
      kataSahu: "rabo",
      labelKata: "n",
      contohPenggunaan:
          " anak itu kecelakaan -- dini hari ngoa a bodito toba rabo mawangere",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "racik",
        kataEjaan: "ra.cik",
        kataSahu: "kaluba",
        labelKata: "n",
        contohPenggunaan: "-- bumbu kaluba bumbu",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.ra.cik",
          "me.ra.cik"
        ],
        labelKataImbuhan: [
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "kaluba",
          "kaluba"
        ],
        contohPenggunaanImbuhan: [
          "~ obat kaluba sou u",
          "kakak sedang ~ bumbu untuk dimasak nanti yioro kaluba bumbu daa masa`ai"
        ]),
    Kata(
        kataIndonesia: "racun",
        kataEjaan: "ra.cun",
        kataSahu: "racim",
        labelKata: "n",
        contohPenggunaan: "-- tikus nguti ma racim",
        isBookmarked: 0,
        kataImbuhan: [
          "be.ra.cun",
          "ke.ra.cun.an",
          "me.ra.cuni"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          " pa`dosa",
          "raci",
          "siracim"
        ],
        contohPenggunaanImbuhan: [
          "hewan yang ~ hewani pa`dosa",
          "Adit ~ makanan Adit sanga raci",
          " dia (L) ~ makanan unang (L) siracim ngongorom"
        ]),
    Kata(
        kataIndonesia: "ragam",
        kataEjaan: "ra.gam",
        kataSahu: "marepe",
        labelKata: "n",
        contohPenggunaan: "-- makanan marepe ngongorom",
        isBookmarked: 0,
        kataImbuhan: [
          "be.ra.gam-ra.gam"
        ],
        kataImbuhanIndonesia: [
          "beragam-ragam"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "marepe"
        ],
        contohPenggunaanImbuhan: [
          "bahasa daerah di Indonesia ~ gemo daeraha Indonesia marepe"
        ]),
    Kata(
        kataIndonesia: "ragu",
        kataEjaan: "ra.gu",
        kataSahu: "taka-taka",
        labelKata: "a",
        contohPenggunaan: "aku -- dengannya ngoi taka-taka ngoa a",
        isBookmarked: 0,
        kataTurunan: [
          "ragu"
        ],
        terjemahanTurunan: [
          "taka-taka Andi ~ dengan jawabannya Andi taka-taka sasangoro"
        ],
        kataImbuhan: [
          " ra.gu",
          "me.ra.gu.kan"
        ],
        kataImbuhanIndonesia: [
          " ra.gu",
          "me.ra.gu.kan"
        ],
        labelKataImbuhan: [
          "a",
          "v"
        ],
        kataSahuImbuhan: [
          "taka-taka",
          "taka-taka"
        ],
        contohPenggunaanImbuhan: [
          " Diah ~ pegawainya Diah mo taka-taka",
        ]),
    Kata(
      kataIndonesia: "rahang",
      kataEjaan: "ra.hang",
      kataSahu: "okok",
      labelKata: "n",
      contohPenggunaan: "-- anak itu patah nogaa ma okok irapo o",
      isBookmarked: 0,
      kataTurunan: ["atas", "bawah", "jepit"],
      terjemahanTurunan: ["okok mareu", "okok maa`du", "opilatu"],
    ),
    Kata(
      kataIndonesia: "raib",
      kataEjaan: "ra.ib ",
      kataSahu: "yirang",
      labelKata: "n",
      contohPenggunaan: "uang itu -- pipisi ge nyirang",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "raih",
        kataEjaan: "ra.ih",
        kataSahu: "sanga",
        labelKata: "v",
        contohPenggunaan: "-- cita-citamu 'sanga ai maumau",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ra.ih"
        ],
        kataImbuhanIndonesia: [
          "meraih"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "sanga"
        ],
        contohPenggunaanImbuhan: [
          "anak (L) itu meraih juara satu unang (L) ge sanga nomora"
        ]),
    Kata(
        kataIndonesia: "rajin",
        kataEjaan: "ra.jin",
        kataSahu: "cufala",
        labelKata: "a",
        contohPenggunaan: "-- pangkal pandai cufala duaa nowarija",
        isBookmarked: 0,
        kataImbuhan: [
          "ke.ra.jin.an",
          "peng.ra.jin"
        ],
        kataImbuhanIndonesia: [
          "kerajinan",
          "pengrajin"
        ],
        labelKataImbuhan: [
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "gaga",
          "aa"
        ],
        contohPenggunaanImbuhan: [
          "~ tangan giama gaga",
          " ~ tas kulit aa tohe enoo"
        ]),
    Kata(
        kataIndonesia: "ralat",
        kataEjaan: "ra.lat",
        kataSahu: "sitogum",
        labelKata: "n",
        contohPenggunaan: "dia (P) -- ucapannya munang (P) sitogum kanau",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ra.lat"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "sitogum"
        ],
        contohPenggunaanImbuhan: [
          "dia ~ (P) ucapannya munang (P) sitogum ai kanau"
        ]),
    Kata(
        kataIndonesia: "ramai",
        kataEjaan: "ra.mai",
        kataSahu: "moner",
        labelKata: "a",
        contohPenggunaan: "-- benar suaranya moner modutu mangai i`ding",
        isBookmarked: 0,
        kataImbuhan: [
          "be.ra.mai-ra.mai",
          "me.ra.mai.kan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "moner-monere",
          "simonere"
        ],
        contohPenggunaanImbuhan: [
          "orang datang ~ ngoaa disapol moner-monere",
          "mereka datang untuk ~ pesta anang disapol simonere biya"
        ]),
    Kata(
        kataIndonesia: "rambut",
        kataEjaan: "ram.but",
        kataSahu: "wutu",
        labelKata: "n",
        contohPenggunaan:
            "-- Dina sangat panjang ari Dina ma wutu ki`dang masala",
        isBookmarked: 0,
        kataTurunan: ["akar", "keriting", "lurus"],
        terjemahanTurunan: ["wutu maoner", " wutu kalala", "wutu boloto"],
        kataImbuhan: ["be.ram.but "],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["wutu"],
        contohPenggunaanImbuhan: ["Tia ~ kuning Tia wutu paur"]),
    Kata(
      kataIndonesia: "rambutan",
      kataEjaan: "ram.but.an",
      kataSahu: "rambuta",
      labelKata: "n",
      contohPenggunaan: "saya suka -- ngoi tonyafusu rambuta",
      isBookmarked: 0,
      kataTurunan: ["aceh", "jantan"],
      terjemahanTurunan: ["rambutan aceh", " rambuta mananaru"],
    ),
    Kata(
        kataIndonesia: "rampok",
        kataEjaan: "ram.pok",
        kataSahu: "ngoa a majira",
        labelKata: "n",
        contohPenggunaan: "-- itu tewas ngoa a majira ge osengene",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.ram.pok",
          "me.ram.pok",
          "pe.ram.po.kan"
        ],
        kataImbuhanIndonesia: [
          "perampok",
          "merampok",
          "perampokan"
        ],
        labelKataImbuhan: [
          "n",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "ngoa a majira",
          " ngoa a majira",
          " ngoa a majira"
        ],
        contohPenggunaanImbuhan: [
          "~ itu masuk ke dalam rumah ngoa a majira ge osam toma wala madara",
          "dia (L) ~ tas gadis itu unang (L) ngoa a majira tohe ge ngomosoles",
          "terjadi ~ di balai desa ngoa a majira toma wala desa"
        ]),
    Kata(
      kataIndonesia: "rampung",
      kataEjaan: "ram.pung",
      kataSahu: "silomino",
      labelKata: "a",
      contohPenggunaan:
          "kamus bahasa daerah ini harus -- bokule gemo daeraha silomino",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "rancang, berancang",
        kataEjaan: "ran.cang, be.ran.cang ",
        kataSahu: "rancang",
        labelKata: "v",
        contohPenggunaan:
            "pembunuhan itu sudah -- ngoa a masengen ya rancang duaa",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ran.cang",
          "pe.ran.cang",
          "pe.ran.ca.ngan",
          "ran.ca.ngan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "sigaroo",
          "duduhu",
          "rancang",
          "merancang"
        ],
        contohPenggunaanImbuhan: [
          "ayah ~ alat pancing baba sigaroo mala o",
          "adik bercita-cita menjadi ~ busana nongo`du mamaumau dadi duduhu pakeang",
          "perumahan itu sudah dalam bentuk ~ wala genage maduhi ya rancang duaa",
          " baju kakak sangat bagus baju marancang yioro rai rousu"
        ]),
    Kata(
        kataIndonesia: "rangkai",
        kataEjaan: "rang.kai",
        kataSahu: "siduhu",
        labelKata: "n",
        contohPenggunaan: "-- bunga siduhu saya",
        isBookmarked: 0,
        kataImbuhan: [
          "be.rang.kai ",
          "be.rang.kai-rang.kai",
          "me.rang.kai ",
          "me.rang.kai.kan",
          "rang.kai.an"
        ],
        kataImbuhanIndonesia: [
          "berangkai ",
          "berangkai-rangkai",
          "merangkai ",
          "merangkaikan",
          "rangkaian"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "masiduhu",
          " yasiduhu",
          "siduhu",
          " yafato",
          " masiduhu"
        ],
        contohPenggunaanImbuhan: [
          "pembunuhan itu ~ dengan penyelundupan narkoba masiduhu ngoa a masisengene sigasa narkoba",
          "bunga mawar itu disusun ~ saya mawar ge yasiduhu",
          "adik mengerjakan seni ~ bunga nongo`du siduhu saya",
          "polisi sedang ~ kejadian perampokan polisi yafato ngoa a majira",
          "Lili sedang menyusun ~ tugas sekolahnya Lili masiduhu amimunara toma sakola"
        ]),
    Kata(
      kataIndonesia: "ranting",
      kataEjaan: "ran.ting",
      kataSahu: "menjaga",
      labelKata: "n",
      contohPenggunaan: "-- pohon ate majaga",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "rapi",
        kataEjaan: "ra.pi",
        kataSahu: "ofi",
        labelKata: "a",
        contohPenggunaan: "rambutnya selalu disisir -- amiwutu ku`ba ofi rousu",
        isBookmarked: 0,
        kataImbuhan: [
          "ke.ra.pi.an",
          "me.ra.pi.kan"
        ],
        kataImbuhanIndonesia: [
          "kerapian",
          "merapikan"
        ],
        labelKataImbuhan: [
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "siofi",
          "siofi"
        ],
        contohPenggunaanImbuhan: [
          "pak guru memperhatikan ~ muridnya ma guru siofi ai murid",
          "dia (P) sedang ~ rambutnya munang (P) siofi wutu"
        ]),
    Kata(
        kataIndonesia: "rapuh",
        kataEjaan: "ra.puh",
        kataSahu: "ku`bur",
        labelKata: "a",
        contohPenggunaan: "pohon itu sudah -- ate ge i ku`bur",
        isBookmarked: 0,
        kataTurunan: [
          "hati",
          "iman",
          "mulut"
        ],
        terjemahanTurunan: [
          "sinyingara tolaa",
          "sinyingara iman tolaa",
          "aiu'du matotolaa"
        ],
        kataImbuhan: [
          "pe.ra.puh.an",
          "me.ra.puh.kan"
        ],
        kataImbuhanIndonesia: [
          "perapuhan",
          "merapuhkan"
        ],
        labelKataImbuhan: [
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          " ku`bur",
          " sikangela"
        ],
        contohPenggunaanImbuhan: [
          "ibu mengalami ~ pada tulangnya aringina miobong ri ku`bur",
          "dia (P) telah ~ hatiku munang (P) sikangela akala ngoi"
        ]),
    Kata(
        kataIndonesia: "rasa",
        kataEjaan: "ra.sa",
        kataSahu: "bason",
        labelKata: "n",
        contohPenggunaan: "-- gula manis gula bason bololam",
        isBookmarked: 0,
        kataImbuhan: [
          "be.ra.sa",
          "me.ra.sa.kan",
          "pe.ra.sa",
          "pe.ra.sa.an"
        ],
        kataImbuhanIndonesia: [
          "berasa",
          "merasakan",
          "perasa",
          "perasaan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          " basono",
          " mobasono",
          "bobason",
          " sinyinga"
        ],
        contohPenggunaanImbuhan: [
          "badanku ~ sakit arinese basono sisi`di",
          "Dini ~ sakit demam Dini mabosono gagam",
          "adik menjadi orang yang ~ nongo`du dadi ngoa a bobosono",
          "~ ku campur aduk sinyinga ngoi kaluba"
        ]),
    Kata(
        kataIndonesia: "ratap, meratap",
        kataEjaan: "ra.tap, me.ra.tap",
        kataSahu: "a`di",
        labelKata: "v",
        contohPenggunaan: "adik sedang ~ nongo`du o a`di",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ra.ta.pi",
          "ra.ta.pan"
        ],
        kataImbuhanIndonesia: [
          "meratapi",
          "ratapan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "a`di",
          "a`di"
        ],
        contohPenggunaanImbuhan: [
          "paman ~ nasibnya baba jou a`di ai nasib",
          "~ anak itu membuat iba ngoa a olo o a`di i dadi ngoa a di dadala"
        ]),
    Kata(
        kataIndonesia: "rawat",
        kataEjaan: "ra.wat",
        kataSahu: "sou u",
        labelKata: "v",
        contohPenggunaan: "-- jalan sou u ngoom",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ra.wat",
          "pe.ra.wat",
          "pe.ra.wa.tan",
          "te.ra.wat"
        ],
        kataImbuhanIndonesia: [
          "merawat",
          "perawat",
          "perawatan",
          "terawat"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          " sou u",
          "sousou u",
          "sou u",
          " sidiai"
        ],
        contohPenggunaanImbuhan: [
          "ayah ~ anak burung baba sou u namo di`wang mangoa a",
          "Ani seorang ~ Ani odadi ngoa a sousou u",
          "ayah mendapatkan ~ baba osanga sou u",
          "rumah itu ~ dengan baik wala ge sidiai lala"
        ]),
    Kata(
        kataIndonesia: "rebus",
        kataEjaan: "re.bus",
        kataSahu: "yirum",
        labelKata: "v",
        contohPenggunaan: "ria menjual ubi -- Ria munguun sabi yirum",
        isBookmarked: 0,
        kataImbuhan: [
          "me.re.bus",
          "re.bu.san"
        ],
        kataImbuhanIndonesia: [
          "me.re.bus",
          "re.bu.san"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "teene",
          "yirum"
        ],
        contohPenggunaanImbuhan: [
          "kakak ~ air yioro teene banyo",
          "ayah meminum air ~ obat baba kae sou u yirum"
        ]),
    Kata(
      kataIndonesia: "supir",
      kataEjaan: "su.pir",
      kataSahu: "gasa-gasa",
      labelKata: "n",
      contohPenggunaan: "bapaknya seorang -- ai baba gasa-gasa oto",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "sperma",
      kataEjaan: "sper.ma",
      kataSahu: "gaji",
      labelKata: "n",
      contohPenggunaan:
          "-- berkualitas akan menghasilkan embrio bagus gaji marousu dadi bojo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "spontan",
      kataEjaan: "spon.tan",
      kataSahu: "masi",
      labelKata: "a",
      contohPenggunaan: "Ia (L) -- berteriak unang (L) masi poa a",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "suami",
        kataEjaan: "su.a.mi",
        kataSahu: "nau u",
        labelKata: "n",
        contohPenggunaan: "-- nya lebih muda a mi nau u lai muda",
        isBookmarked: 0,
        kataImbuhan: ["ber.su.a.mi"],
        kataImbuhanIndonesia: ["bersuami"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["molo`ar"],
        contohPenggunaanImbuhan: ["ia (P) baru saja ~ munang aro molo’ar"]),
    Kata(
        kataIndonesia: "suap",
        kataEjaan: "su.ap",
        kataSahu: "towo",
        labelKata: "v",
        contohPenggunaan: "-- anak kambing towo abing mangowa",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nyu.a.pi",
          "me.nyu.ap.kan",
          "su.ap.an"
        ],
        kataImbuhanIndonesia: [
          "menyuapi",
          "menyuapkan",
          "suapan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "matowo",
          "tu’guiti",
          "towo"
        ],
        contohPenggunaanImbuhan: [
          "ibu ~ ku makan aringina matowo to omo",
          "saya ~ nasi ngoi tu’guiti ea",
          "~ terakhir towo si’dogumu"
        ]),
    Kata(
        kataIndonesia: "suara",
        kataEjaan: "su.a.ra",
        kataSahu: "yi`ding",
        labelKata: "n",
        contohPenggunaan:
            "-- kambing mengagetkannya ngoi to sawana abing ma yi’dingi",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.su.a.ra",
          "me.nyu.a.ra.kan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          ""
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ keras sekali unang (L) ai’ding lai si’di",
          "Ia (L) ~ pendapatnya unang (L) osipula a ai pandapata"
        ]),
    Kata(
      kataIndonesia: "suasana",
      kataEjaan: "su.a.sa.na",
      kataSahu: "keadaana",
      labelKata: "n",
      contohPenggunaan: "-- di sini keadaana ane",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "subuh",
      kataEjaan: "su.buh",
      kataSahu: "cori`bi`bin",
      labelKata: "n",
      contohPenggunaan: "-- ini hujan lebat cori’bi’bin ni a besa lamo o",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "subur",
        kataEjaan: "su.bur",
        kataSahu: "gaji",
        labelKata: "a",
        contohPenggunaan: "tanahnya -- tana a lai gaji",
        isBookmarked: 0,
        kataImbuhan: ["me.nyu.bur.kan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["sigadi"],
        contohPenggunaanImbuhan: ["cacing ~ tanah kulubati sigadi tana a"]),
    Kata(
        kataIndonesia: "suci",
        kataEjaan: "su.ci",
        kataSahu: "ofi",
        labelKata: "a",
        contohPenggunaan: "-- hati ofi akal",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nyu.ci.kan",
          "ke.su.ci.an"
        ],
        kataImbuhanIndonesia: [
          "me.nyu.ci.kan",
          "ke.su.ci.an"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sigofi",
          "sigofi"
        ],
        contohPenggunaanImbuhan: [
          "mari kita ~ diri yino ngene sigofi nanga akala sinyingara",
          "~ diri sigofi akal sinyingara"
        ]),
    Kata(
        kataIndonesia: "sudah",
        kataEjaan: "su.dah",
        kataSahu: "du`a",
        labelKata: "adv",
        contohPenggunaan: "saya -- makan ngoi omo du`a",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nyu.dah.i"
        ],
        kataImbuhanIndonesia: [
          "menyudahi"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "asi`dogumu"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ hubungannya unang (L) asi’dogumu ai hubungana"
        ]),
    Kata(
        kataIndonesia: "sudut",
        kataEjaan: "su.dut",
        kataSahu: "bu`bu`ku",
        labelKata: "n",
        contohPenggunaan: "-- rumah bu`bu`ku wala",
        isBookmarked: 0,
        kataTurunan: [
          "pandang",
          "mata"
        ],
        terjemahanTurunan: [
          "la o mangongo`di i",
          "la`o madi`im"
        ],
        kataImbuhan: [
          "ter.su.dut",
          "me.nyu.dut.kan"
        ],
        kataImbuhanIndonesia: [
          "tersudut",
          "menyudutkan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "sipakeri wara",
          "sipakeri wara"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) telah ~ unang (L) sipakeri wara",
          "Ia (P) ~ kami munang sipakeri wara ngomi"
        ]),
    Kata(
        kataIndonesia: "suka",
        kataEjaan: "su.ka",
        kataSahu: "nyafusu",
        labelKata: "a",
        contohPenggunaan:
            "saya -- masakannya ngoi to nyafusu ami sa’ai mongoromo",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nyu.ka.i",
          "ke.su.ka.an"
        ],
        kataImbuhanIndonesia: [
          "me.nyu.ka.i",
          "ke.su.ka.an"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "monyanyai",
          "manyafusu"
        ],
        contohPenggunaanImbuhan: [
          "Sri ~ bunga Sri monyanyai obunga",
          "pisang adalah ~ buah Adi bele genage Adi manyafusu"
        ]),
    Kata(
      kataIndonesia: "suku",
      kataEjaan: "su.ku",
      kataSahu: "suku",
      labelKata: "n",
      contohPenggunaan: "banyak -- di kampungku toma gamo suku-suka lai repe",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "suling",
      kataEjaan: "su.ling",
      kataSahu: "suling",
      labelKata: "n",
      contohPenggunaan: "Ia (L) memainkan -- unang (L) mo wusu suling",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "sulit",
        kataEjaan: "su.lit",
        kataSahu: "kangela",
        labelKata: "a",
        contohPenggunaan: "keadaannya sangat -- maorasa to kangela",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nyu.lit.kan",
          "ke.su.lit.an"
        ],
        kataImbuhanIndonesia: [
          "menyulitkan",
          "kesulitan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sikangela",
          "kangela"
        ],
        contohPenggunaanImbuhan: [
          "jalan ini ~ kegiatan kami ngoom ne sikangela ngomi",
          "Ia (P) ~ merangkai kata munang (P) mobasono kangela materongo demo-demo"
        ]),
    Kata(
      kataIndonesia: "sultan",
      kataEjaan: "sul.tan",
      kataSahu: "sultan",
      labelKata: "n",
      contohPenggunaan: "-- baru saja tiba sultan aro sapolo",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "sumbang",
        kataEjaan: "sum.bang",
        kataSahu: "poini",
        labelKata: "v",
        contohPenggunaan: "suaranya sangat -- ai yi’ding ifalusu",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nyum.bang",
          "sum.bang.an"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "opoini",
          "mangapoipoini"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ banyak uang unang (L) opoini pipis lai repe",
          "~ sudah dikumpulkan mangapoipoini yalomu ua"
        ]),
    Kata(
      kataIndonesia: "sumbing",
      kataEjaan: "sum.bing",
      kataSahu: "leta",
      labelKata: "a",
      contohPenggunaan: "bibirnya -- u’du mabetu’u leta",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "sumbu",
      kataEjaan: "sum.bu",
      kataSahu: "subu",
      labelKata: "n",
      contohPenggunaan: "sudah kuganti -- kompor kompor ma subu tangali du’a",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "sumpah",
        kataEjaan: "sum.pah",
        kataSahu: "",
        labelKata: "n",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.sum.pah",
          "me.nyum.pah",
          "me.nyum.pah.i"
        ],
        kataImbuhanIndonesia: [
          "ber.sum.pah",
          "me.nyum.pah",
          "me.nyum.pah.i"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "sasi",
          "sisumpa",
          "disisasi"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ unang (L) uma sasii"
              "Ia (L) ~ saat marah unang (L) muruta du’a",
          "orang-orang ~ dia ngowa-ngowa a disisasi wunanga"
        ]),
    Kata(
      kataIndonesia: "sumur",
      kataEjaan: "su.mur",
      kataSahu: "parigi",
      labelKata: "n",
      contohPenggunaan: "-- itu sangat dalam parigi ge lai kau u",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "sungai",
      kataEjaan: "su.ngai",
      kataSahu: "sungai",
      labelKata: "n",
      contohPenggunaan: "-- itu meluap sungai babanyo ipa ala",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "sungai",
      kataEjaan: "su.ngai",
      kataSahu: "sungai",
      labelKata: "n",
      contohPenggunaan: "-- itu meluap sungai babanyo ipa ala",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "sungguh",
        kataEjaan: "sung.guh",
        kataSahu: "mode`e",
        labelKata: "a",
        contohPenggunaan: "mereka -- baik anang mode-mode’e di’lala",
        isBookmarked: 0,
        kataImbuhan: [
          "se.sung.guh.nya"
        ],
        labelKataImbuhan: [
          "adv"
        ],
        kataSahuImbuhan: [
          "mode-mode"
        ],
        contohPenggunaanImbuhan: [
          "~ kami sangat senang mode-mode ngomi mabasono sanangi"
        ]),
    Kata(
        kataIndonesia: "suntik",
        kataEjaan: "sun.tik",
        kataSahu: "topo`o",
        labelKata: "v",
        contohPenggunaan: "-- vaksin topo`o vaksin",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nyun.tik",
          "sun.tik.an",
          "me.nyun.tik.kan"
        ],
        kataImbuhanIndonesia: [
          "menyuntik",
          "suntikan",
          "menyuntikkan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "matopo`o",
          "topo`o",
          "sitopo`o"
        ],
        contohPenggunaanImbuhan: [
          "bidan ~ anak itu bidan matopo’o ngowa a genage",
          "~ membuatnya takut topo’o ge mamojono",
          "Ia (L) ~ air unang (L) sitopo’o banyo"
        ]),
    Kata(
      kataIndonesia: "suntuk",
      kataEjaan: "sun.tuk",
      kataSahu: "pastiu",
      labelKata: "adv",
      contohPenggunaan: "rasanya -- sekali ‘abason pastiu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "sunyi",
        kataEjaan: "su.nyi",
        kataSahu: "garura",
        labelKata: "a",
        contohPenggunaan: "-- sekali di sana garura mode-mode da a",
        isBookmarked: 0,
        kataTurunan: [
          "senyap"
        ],
        terjemahanTurunan: [
          "garura madu`tu"
        ],
        kataImbuhan: [
          "ke.su.nyi.an"
        ],
        kataImbuhanIndonesia: [
          "kesunyian"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "garura"
        ],
        contohPenggunaanImbuhan: [
          "Ia (P) menyukai ~ munang (P) onya nyadi ahu toma garura"
        ]),
    Kata(
      kataIndonesia: "supaya",
      kataEjaan: "su.pa.ya",
      kataSahu: "na`onga’um",
      labelKata: "p",
      contohPenggunaan:
          "kami datang -- ini selesai ngomi sapolo momoini ge i’duanga",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "surat",
        kataEjaan: "su.rat",
        kataSahu: "surata",
        labelKata: "n",
        contohPenggunaan: "telah kukirim -- kemarin surata ta’di ngoto aunyigo",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.su.rat",
          "me.nyu.rat.i"
        ],
        kataImbuhanIndonesia: [
          "bersurat",
          "menyurati"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "misurata",
          "dingo surata"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ ke pak camat ngomi misurata ra masangaji",
          "Ia (L) ~ ibuku unang (L) dingo surata remangina"
        ]),
    Kata(
      kataIndonesia: "surga",
      kataEjaan: "sur.ga",
      kataSahu: "ofi-ofi",
      labelKata: "n",
      contohPenggunaan:
          "-- selalu dirindukan orang-orang ngi i ofi-ofi ngoa a ya sieling-eling",
      isBookmarked: 0,
      kataTurunan: ["dunia"],
      terjemahanTurunan: ["ngiofi-ofi toma dunia"],
    ),
    Kata(
        kataIndonesia: "suruh",
        kataEjaan: "su.ruh",
        kataSahu: "soma`a",
        labelKata: "n",
        contohPenggunaan: "-- memetik kelapa soma`a puco wagel",
        isBookmarked: 0,
        kataImbuhan: ["me.nyu.ruh"],
        kataImbuhanIndonesia: ["menyuruh"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["soma’a"],
        contohPenggunaanImbuhan: ["ibu ~nya diam aringina mo soma’a masiogor"]),
    Kata(
      kataIndonesia: "surut",
      kataEjaan: "su.rut",
      kataSahu: "aler uci",
      labelKata: "a",
      contohPenggunaan: "air -- banyo aler",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "susah",
        kataEjaan: "su.sah",
        kataSahu: "kangela",
        labelKata: "a",
        contohPenggunaan: "-- sekali hidupku ari ahu kangela madu`tu",
        isBookmarked: 0,
        kataTurunan: [
          "air",
          "hati"
        ],
        terjemahanTurunan: [
          "kangela banyo",
          "akala kangela"
        ],
        kataImbuhan: [
          "me.nyu.sah.kan",
          "ke.su.sah.an"
        ],
        kataImbuhanIndonesia: [
          "menyusahkan",
          "kesusahan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sisusa",
          " susa"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ orang unang (L) sisusa ngoa a",
          "hidupnya dilanda ~ ma ahu yeta susa"
        ]),
    Kata(
      kataIndonesia: "susu",
      kataEjaan: "su.su",
      kataSahu: "susu",
      labelKata: "n",
      contohPenggunaan: "saya membeli -- ngoi totibo susu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "susu;",
        kataEjaan: "su.sul",
        kataSahu: "siduwu`u",
        labelKata: "v",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: ["me.nyu.sul"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["tosidu wu’u"],
        contohPenggunaanImbuhan: ["saya ~nya ngoi tosidu wu’u"]),
    Kata(
        kataIndonesia: "susun",
        kataEjaan: "su.sun",
        kataSahu: "sifato",
        labelKata: "n",
        contohPenggunaan: "mainannya sudah ia -- ami bi’sa-bi’sa masusun ua",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nyu.sun",
          "pe.nyu.sun"
        ],
        kataImbuhanIndonesia: [
          "menyusun",
          "penyusun"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          " misiaturu",
          "sifato"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ buah ngomi misiaturu bua-bua",
          "~ buku sifato boku"
        ]),
    //huruf T
    Kata(
        kataIndonesia: "tabrak",
        kataEjaan: "ta.brak",
        kataSahu: "tabraka",
        labelKata: "v",
        contohPenggunaan: "-- kandang ayam tabraka namo makurunga",
        isBookmarked: 0,
        kataTurunan: [
          "lari"
        ],
        terjemahanTurunan: [
          "tabrak wi`di"
        ],
        kataImbuhan: [
          "me.na.brak",
          "ter.tab.rak",
          "ta.brak.an",
          "pe.na.brak"
        ],
        kataImbuhanIndonesia: [
          "menabrak",
          "tertabrak",
          "tabrakan",
          "penabrak"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "totabraka",
          "tabraka",
          "disanga tabrak",
          "tabrak"
        ],
        contohPenggunaanImbuhan: [
          "saya ~ kucing ngoi totabraka bo’ki",
          "anjing itu ~ mobil nunu’u ge oto ya tabraka",
          "mereka ~ anang disanga tabrak momoini",
          "~ kucing itu terjatuh ngunang tabrak bo’ki oe ta a"
        ]),
    Kata(
        kataIndonesia: "tabur",
        kataEjaan: "ta.bur",
        kataSahu: "durono",
        labelKata: "v",
        contohPenggunaan: "-- racun ikan durono sohi nyao`o",
        isBookmarked: 0,
        kataImbuhan: [
          "me.na.bur",
          "me.na.bur.i"
        ],
        kataImbuhanIndonesia: [
          "menabur",
          "menaburi"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "todurono",
          "sidurono"
        ],
        contohPenggunaanImbuhan: [
          "saya ~ padi ngoi todurono ea",
          "saya ~ bunga ngoi sidurono obunga"
        ]),
    Kata(
        kataIndonesia: "tagih",
        kataEjaan: "ta.gih",
        kataSahu: "golo`o",
        labelKata: "v",
        contohPenggunaan: "-- utang golo’o banyatoro",
        isBookmarked: 0,
        kataImbuhan: [
          "me.na.gih",
          "ta.gih.an"
        ],
        kataImbuhanIndonesia: [
          "menagih",
          "tagihan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "togolo`o",
          "golo`o"
        ],
        contohPenggunaanImbuhan: [
          "saya ~ utang pada Tomi ngoi togolo’o banyatoro ra Tomi",
          "~ listrik golo`o bea listrik"
        ]),
    Kata(
        kataIndonesia: "tahan",
        kataEjaan: "ta.han",
        kataSahu: "tahan",
        labelKata: "n",
        contohPenggunaan: "-- dulu sebentar tahan notegoro ceka ua",
        isBookmarked: 0,
        kataTurunan: [
          "cuaca",
          "lama",
          "lapar",
          "panas"
        ],
        terjemahanTurunan: [
          "tahan cuaca",
          "tahan diara",
          "tahan sawi`ni",
          "tahan wangere sawu`u"
        ],
        kataImbuhan: [
          "ber.ta.han",
          "me.na.han",
          "ter.ta.han"
        ],
        kataImbuhanIndonesia: [
          "bertahan",
          "menahan",
          "tertahan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "motahan",
          " motahana",
          "sanga tahan"
        ],
        contohPenggunaanImbuhan: [
          "Ia (P) ~ munang (P) motahan",
          "Ia (P) ~ amarah munang (P) motahana meruta",
          "kami ~ di luar ngomi sanga tahan toma du’du’nu"
        ]),
    Kata(
      kataIndonesia: "tahi",
      kataEjaan: "ta.hi",
      kataSahu: " kio`o",
      labelKata: "n",
      contohPenggunaan: "bau sekali -- itu kio`o pokuru masala",
      isBookmarked: 0,
      kataTurunan: [
        "gigi",
        "hidung",
        "kuku",
        "kuping",
        "lalat",
        "mata",
        "minyak"
      ],
      terjemahanTurunan: [
        "ngi`di madomo`o",
        "ngunung makio`o",
        "kalicimi`i makio`o",
        "ngao u makio`o",
        "fara",
        "la`o makio`o",
        "gegesi"
      ],
    ),
    Kata(
        kataIndonesia: "tahu",
        kataEjaan: "ta.hu",
        kataSahu: "waru",
        labelKata: "n",
        contohPenggunaan: "saya -- dia ngoi to waru munang",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nge.ta.hu.i",
          "pe.nge.ta.hu.an",
          "se.pe.nge.ta.hu.an"
        ],
        kataImbuhanIndonesia: [
          "mengetahui",
          "pengetahuan",
          "sepengetahuan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "awaru",
          "manga wowaru",
          "awaru"
        ],
        contohPenggunaanImbuhan: [
          "bapak ~ hal itu baba awaru masala genage",
          "~ orang itu ngoa a manga wowaru",
          "~ kepala desa balasu nyira awaru"
        ]),
    Kata(
        kataIndonesia: "tahun",
        kataEjaan: "ta.hun",
        kataSahu: "masungu",
        labelKata: "n",
        contohPenggunaan:
            "kami menikah -- ini ngomi moloara toma musungu nenane",
        isBookmarked: 0,
        kataTurunan: [
          "baru"
        ],
        terjemahanTurunan: [
          "musungu sunge-sunge"
        ],
        kataImbuhan: [
          "me.na.hun ",
          "se.ta.hun",
          "ta.hun.an"
        ],
        kataImbuhanIndonesia: [
          "menahun ",
          "setahun",
          "tahunan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "masungu",
          "remusungu",
          "musungu"
        ],
        contohPenggunaanImbuhan: [
          "ini adalah penyakit ~ sisi’di’i rema masungu",
          "sudah ~ ia menderita mosisi`di remusungu rimoi",
          "festival ~ di Jailolo festival musungu nenane toma Jaidolo"
        ]),
    Kata(
        kataIndonesia: "tajam",
        kataEjaan: "ta.jam",
        kataSahu: "mangono",
        labelKata: "a",
        contohPenggunaan: "pisau itu sangat -- goloa ge li mangono",
        isBookmarked: 0,
        kataTurunan: [
          "mata",
          "mulut",
          "selera"
        ],
        terjemahanTurunan: [
          "lao meta",
          "udu repe",
          "nyafusu lamo`o"
        ],
        kataImbuhan: [
          "mem.per.ta.jam",
          "me.na.jam.kan",
          "ke.ta.jam.an"
        ],
        kataImbuhanIndonesia: [
          "mempertajam",
          "menajamkan",
          "ketajaman"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "ojoma`a",
          "joma a",
          "mangono"
        ],
        contohPenggunaanImbuhan: [
          "bapak ~ pisaunya baba ojoma’a goloa",
          "bapak ~ pisau dapur baba joma’a goloa",
          "Ia (P) menangis mendengar ~ ucapan temannya munang (P) o a`di isene mangademo mangono"
        ]),
    Kata(
        kataIndonesia: "takut",
        kataEjaan: "ta.kut",
        kataSahu: "mojong",
        labelKata: "a",
        contohPenggunaan: "adik -- pergi sendiri nongo’du mojong tagi matengo",
        isBookmarked: 0,
        kataImbuhan: [
          "me.na.kut.kan",
          "pe.na.kut",
          "ke.ta.kut.an"
        ],
        kataImbuhanIndonesia: [
          "menakutkan",
          "penakut",
          "ketakutan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "ya mojong",
          "panakok",
          "mojong"
        ],
        contohPenggunaanImbuhan: [
          "wajahnya sangat ~ bion ge ngoa a ya mojong",
          "ia memang ~ ngunang genage ngoa a panakok",
          "anak itu sangat ~ ngoa a ge mojong madu`tu u"
        ]),
    Kata(
        kataIndonesia: "tali",
        kataEjaan: "ta.li",
        kataSahu: "gumi",
        labelKata: "n",
        contohPenggunaan: "kuambul -- itu di sana ngoi to oro gumi ada a",
        isBookmarked: 0,
        kataTurunan: [
          "pinggang"
        ],
        terjemahanTurunan: [
          "ga`lata"
        ],
        kataImbuhan: [
          "ber.ta.li.an",
          "ber.ta.li.kan",
          "ta.li te.ma.li"
        ],
        kataImbuhanIndonesia: [
          "bertalian",
          "bertalikan",
          "tali temali"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "gumi-gumi"
        ],
        contohPenggunaanImbuhan: [
          "mereka -- darah anang ngaun romoi",
          "karung itu -- sutera ka`du ge sipiriu sutera",
          "kami belajar -- ngomi madoto o gumi-gumi"
        ]),
    Kata(
        kataIndonesia: "tambah",
        kataEjaan: "tam.bah",
        kataSahu: "dogo",
        labelKata: "n",
        contohPenggunaan:
            "satu tambah satu sama dengan dua rumoi sidogo rumoi matero romdi’di",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nam.bah",
          "me.nam.bah.kan",
          "tam.bah.an"
        ],
        kataImbuhanIndonesia: [
          "menambah",
          "menambahkan",
          "tambahan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "odogo",
          "odogo",
          "sidogo"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ jumlah air unang (L) odogo o banyo",
          "bapak ~ semen baba odogo semen",
          "ada makanan ~ diberikan ngongorom sidogo ia"
        ]),
    Kata(
        kataIndonesia: "tambal",
        kataEjaan: "tam.bal",
        kataSahu: "cipata",
        labelKata: "v",
        contohPenggunaan: "-- panah besi cipata ngami besi",
        isBookmarked: 0,
        kataImbuhan: ["me.nam.bal"],
        kataImbuhanIndonesia: ["menambal"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["cipata"],
        contohPenggunaanImbuhan: ["ayah ~ ban baba cipata ban"]),
    Kata(
        kataIndonesia: "tampak",
        kataEjaan: "tam.pak",
        kataSahu: "bion",
        labelKata: "v",
        contohPenggunaan: "tidak -- wajahnya olehku tao’di ua ai bion",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nam.pak.kan",
          "pe.nam.pak.an",
          "tam.pak.nya"
        ],
        kataImbuhanIndonesia: [
          "menampakkan",
          "penampakan",
          "tampaknya"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "to odi`i",
          "to odi`i",
          "to odi`i"
        ],
        contohPenggunaanImbuhan: [
          "Bambang baru ~ diri Bambang waro to odi’i",
          "~nya kumayan bagus to odi’i irousu masala",
          "~ ia kesal to odi’i omanyasal"
        ]),
    Kata(
      kataIndonesia: "tampan",
      kataEjaan: "tam.pan",
      kataSahu: "jamani",
      labelKata: "a",
      contohPenggunaan: "-- sekali anak itu jamani madu’tu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tampar",
        kataEjaan: "tam.par",
        kataSahu: "sata",
        labelKata: "v",
        contohPenggunaan: "-- mata saya sata ari la`o",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nam.par",
          "ter.tam.par",
          "tam.par.an"
        ],
        kataImbuhanIndonesia: [
          "menampar",
          "tertampar",
          "tamparan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "osata",
          "kokage",
          "sata"
        ],
        contohPenggunaanImbuhan: [
          " Ia (L) ~ pipiku unang (L) osata ari obongolo",
          "saya ~ melihat kejadian itu ngoi kokage o odi`i genage",
          "~ bapak sangat keras baba sata lai si’di"
        ]),
    Kata(
        kataIndonesia: "tampil",
        kataEjaan: "tam.pil ",
        kataSahu: " gaga`a",
        labelKata: "v",
        contohPenggunaan: "-- di rumah kamu gaga`a ngini ningawala",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nam.pil.kan",
          "pe.nam.pil.an"
        ],
        kataImbuhanIndonesia: [
          "menampilkan",
          "penampilan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "siwaiti",
          "mangaga`a"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ tari daerah ngomi siwaiti salai daeraha",
          "~ mereka sangat bagus anang mangaga`a lai rousu"
        ]),
    Kata(
        kataIndonesia: "tampung",
        kataEjaan: "tam.pung",
        kataSahu: "gonyo`o",
        labelKata: "v",
        contohPenggunaan: "-- air ganyo`o banyo",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nam.pung",
          "ter.tam.pung"
        ],
        kataImbuhanIndonesia: [
          "menampung",
          "tertampung"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "ogonyo`o",
          "sigonyo"
        ],
        contohPenggunaanImbuhan: [
          "ayah ~ air baba ogonyo’o banyo",
          "air tidak semua bisa ~ di sini banyo sigonyo lo’du"
        ]),
    Kata(
        kataIndonesia: "tamu",
        kataEjaan: "ta.mu",
        kataSahu: "ioronongo`du",
        labelKata: "n",
        contohPenggunaan: "ada -- di depan rema ioronogo’du",
        isBookmarked: 0,
        kataImbuhan: ["ber.ta.mu"],
        kataImbuhanIndonesia: ["bertamu"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["milawi`i"],
        contohPenggunaanImbuhan: [" kami ingin ~ ngomi milawi’i"]),
    Kata(
        kataIndonesia: "tanah",
        kataEjaan: "ta.nah",
        kataSahu: "tana",
        labelKata: "n",
        contohPenggunaan: "-- itu sudah dijual tanage yawu unu",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.ta.nah",
          "per.ta.nah.an"
        ],
        kataImbuhanIndonesia: [
          "bertanah",
          "pertanahan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "tatana`a",
          "tana"
        ],
        contohPenggunaanImbuhan: [
          "sepatumu ~ capatoge tatana’a",
          "kasus ~ itu belum selesai nali tanage togumonyang"
        ]),
    Kata(
        kataIndonesia: "tanda",
        kataEjaan: "tan.da",
        kataSahu: "gare",
        labelKata: "n",
        contohPenggunaan: "-- rumah kepala suku gare wala suku masae`e",
        isBookmarked: 0,
        kataTurunan: [
          "lahir",
          "mata",
          "kaki",
          "tangan",
          "terima"
        ],
        terjemahanTurunan: [
          "fara",
          "aridinao",
          "roumajilioro",
          "giama gare",
          "tadawongo"
        ],
        kataImbuhan: [
          "me.nan.da.i ",
          "me.nan.da.kan"
        ],
        kataImbuhanIndonesia: [
          "menandai ",
          "menandakan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "osigare"
        ],
        contohPenggunaanImbuhan: [
          "ibu ~ kalender aringina osigare kalender",
          "itu ~ ia tidak baik genage iro usua"
        ]),
    Kata(
        kataIndonesia: "tanding",
        kataEjaan: "tan.ding",
        kataSahu: "lawanga",
        labelKata: "n",
        contohPenggunaan: "-- mendayung sampan lawanga amono oti",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nan.ding.i",
          "ter.tan.ding.i",
          "per.tan.ding.an"
        ],
        kataImbuhanIndonesia: [
          "menandingi",
          "tertandingi",
          "pertandingan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "olawanga",
          "yalawangoa",
          "tagimonere"
        ],
        contohPenggunaanImbuhan: [
          "Lukas mencoba ~ Andi Lukas olawanga Andi",
          "kekuatannya tak ~ ai dede e goa a yalawangoa",
          "~ berjalan seru bisa tagimonere"
        ]),
    Kata(
        kataIndonesia: "tangan",
        kataEjaan: "ta.ngan",
        kataSahu: "giam",
        labelKata: "n",
        contohPenggunaan: "--ku makin gelap warnanya ari giama kotu u",
        isBookmarked: 0,
        kataTurunan: [
          "baju",
          "dingin",
          "gatal",
          "jahil",
          "kanan",
          "kiri",
          "kosong"
        ],
        terjemahanTurunan: [
          "baju magiama",
          "giam alo",
          "giam laor",
          " tori-tori`i",
          "giam makuwi`da",
          " giam maku`bali",
          "giam madaracua"
        ],
        kataImbuhan: [
          "me.na.ngan.i",
          "pe.na.ngan.an"
        ],
        kataImbuhanIndonesia: [
          "menangani",
          "penanganan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "miriono",
          "miriono"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ korban longsor di desa ngomi miriono ngoa a tana tiwa a",
          "~ korban gempa masih terkendala miriono wosu mada a rema dola aku"
        ]),
    Kata(
        kataIndonesia: "tangga",
        kataEjaan: "tang.ga",
        kataSahu: "ngute",
        labelKata: "n",
        contohPenggunaan: "-- di sana banyak sekali ngute ada a repe",
        isBookmarked: 0),
    Kata(
        kataIndonesia: "tangis",
        kataEjaan: "ta.ngis",
        kataSahu: " a`di",
        labelKata: "n",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "me.na.ngis",
          "ta.ngis.an"
        ],
        kataImbuhanIndonesia: [
          "menangis",
          "tangisan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          " a`di",
          " a`di"
        ],
        contohPenggunaanImbuhan: [
          "Ia (P) ~ keras sekali munang (P) a’di siduga",
          "~ anak itu membuatku iba ngoa a olo ge a’di dadi ngoi to dadalara"
        ]),
    Kata(
      kataIndonesia: "tangkai",
      kataEjaan: "tang.kai",
      kataSahu: "menjaga",
      labelKata: "n",
      contohPenggunaan: " ada dua -- ‘aya majaga romdi`di",
      isBookmarked: 0,
      kataTurunan: ["kering", "pena"],
      terjemahanTurunan: [" majaga ngonono", " pena majaga"],
    ),
    Kata(
      kataIndonesia: "tangguh",
      kataEjaan: "tang.guh",
      kataSahu: "made`e",
      labelKata: "v",
      contohPenggunaan: "Ia (L) anak yang -- unang (L) ngoa a made’e",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "tanggung, menanggung",
      kataEjaan: "tang.gung, me.nang.gung",
      kataSahu: "doiti",
      labelKata: "v",
      contohPenggunaan:
          "Ia (L) ~ nasib sendiri unang (L) doiti ai nasib masi retene",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tangkap, menangkap",
        kataEjaan: "tang.kap, me.nang.kap",
        kataSahu: "cako`o",
        labelKata: "v",
        contohPenggunaan: "kami ~ ular besar ngomi cako`o ngoran",
        isBookmarked: 0,
        kataImbuhan: [
          "ter.tang.kap"
        ],
        kataImbuhanIndonesia: [
          "tertangkap"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "cako`o"
        ],
        contohPenggunaanImbuhan: [
          "pencuri ~ di rumahku ngoa a tori-tori sanga cako’o tari wala"
        ]),
    Kata(
      kataIndonesia: "tante",
      kataEjaan: "tan.te",
      kataSahu: "memejojo",
      labelKata: "n",
      contohPenggunaan: "-- baru saja datang memejojo waro sapolo",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tanya",
        kataEjaan: "ta.nya",
        kataSahu: "sano",
        labelKata: "n",
        contohPenggunaan:
            "-- rumah adik dan kakak sano wala ior re ari nongodu",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.ta.nya",
          "me.na.nya.kan"
        ],
        kataImbuhanIndonesia: [
          "bertanya",
          "menanyakan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "osano",
          "misano"
        ],
        contohPenggunaanImbuhan: [
          "Ia (P) ~ padaku munang (P) osano rangoi",
          "kami ~ alamat rumahnya ngomi misano alea ai wala"
        ]),
    Kata(
        kataIndonesia: "tarik",
        kataEjaan: "ta.rik",
        kataSahu: "yi`dal",
        labelKata: "v",
        contohPenggunaan: "-- saja bajunya yi’dal bato ai baju",
        isBookmarked: 0,
        kataTurunan: [
          "muka",
          "suara",
          "tambang",
          "urat"
        ],
        terjemahanTurunan: [
          "ruta-ruta",
          "manyanyi",
          "yi`dal gumi",
          "yi`dal ngu`dot"
        ],
        kataImbuhan: [
          "me.na.rik",
          "pe.na.rik",
          "ter.ta.rik",
          "ke.ter.ta.rik.an"
        ],
        kataImbuhanIndonesia: [
          "menarik",
          "penarik",
          "tertarik",
          "ketertarikan"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "rous",
          "gumi",
          "nyafusu",
          "nyafusu"
        ],
        contohPenggunaanImbuhan: [
          "anak itu sangat ~ ngunang ge rous madu’tu",
          "~nya sudah longgar magumi ri’go al",
          "saya sangat ~ padanya ngoi nyafusu ramunang",
          "~nya di bidang kuliner membuahkan hasil nyafusu toma lilian idadi hasil"
        ]),
    Kata(
        kataIndonesia: "tari",
        kataEjaan: "ta.ri",
        kataSahu: "salai",
        labelKata: "n",
        contohPenggunaan: "-- lalayon Ternate salai lalayon Ternate",
        isBookmarked: 0,
        kataTurunan: [
          "topeng"
        ],
        terjemahanTurunan: [
          "cakaiba"
        ],
        kataImbuhan: [
          "me.na.ri",
          "pe.na.ri",
          "ta.ri.an"
        ],
        kataImbuhanIndonesia: [
          "menari",
          "penari",
          "tarian"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "salai",
          "salai",
          "mimasalai"
        ],
        contohPenggunaanImbuhan: [
          "adik pintar ~ nogo’du moarija salai",
          "~ itu cantik sekali ngoa a salai ge rousu madu’tu",
          "~ kami cukup menghibur ngomi mimasalai ngini nyinyafusu"
        ]),
    Kata(
        kataIndonesia: "taruh",
        kataEjaan: "ta.ruh",
        kataSahu: "sigare",
        labelKata: "n",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.ta.ruh ",
          "me.na.ruh"
        ],
        kataImbuhanIndonesia: [
          "bertaruh ",
          "menaruh"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "sigare",
          "sigare"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ kemarin ngomi sigare aunyigo",
          "ayah ~ parang di meja baba sigare pe’da toma meja"
        ]),
    Kata(
        kataIndonesia: "tatap",
        kataEjaan: "ta.tap",
        kataSahu: "tailako",
        labelKata: "v",
        contohPenggunaan: "--kampung tua itu tailako gamo masaida ge",
        isBookmarked: 0,
        kataImbuhan: [
          "me.na.tap",
          "ta.tap.an"
        ],
        kataImbuhanIndonesia: [
          "menatap",
          "tatapan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "tailako",
          "tailako"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ mataku unang (L) tailako",
          "~ matanya meluluhkan hatiku ngunang tailako dadi ngoi tomara a"
        ]),
    Kata(
        kataIndonesia: "tawa",
        kataEjaan: "ta.wa",
        kataSahu: "nyelo`o",
        labelKata: "n",
        contohPenggunaan: "-- banyak anak nyelo`o ngowa`a repe",
        isBookmarked: 0,
        kataImbuhan: [
          "ter.ta.wa",
          "me.ner.ta.wa.kan"
        ],
        kataImbuhanIndonesia: [
          "tertawa",
          "menertawakan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "onyelo`o",
          "sinyenyelo`o"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ mendengarku unang (L) onyelo`o isene ngoi",
          "mereka ~ anak itu anang sinyenyelo’o ngoa a genage"
        ]),
    Kata(
        kataIndonesia: "tawar",
        kataEjaan: "ta.war",
        kataSahu: "tawar",
        labelKata: "a",
        contohPenggunaan: "-- kapak batu tawar toma`on madi",
        isBookmarked: 0,
        kataTurunan: [
          "hambar"
        ],
        terjemahanTurunan: [
          "banyo-banyo"
        ],
        kataImbuhan: [
          "ta.war.an",
          "me.na.war.kan"
        ],
        kataImbuhanIndonesia: [
          "tawaran",
          "menawarkan"
        ],
        labelKataImbuhan: [
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "sitawar",
          "sitawar"
        ],
        contohPenggunaanImbuhan: [
          "~ yang menarik sitawar marou",
          " Ia (P) ~ tiket murah munang (P) sitawar tiket ma mura"
        ]),
    Kata(
        kataIndonesia: "tebak /tébak/",
        kataEjaan: "te.bak /tébak/",
        kataSahu: "waro-waro",
        labelKata: "v",
        contohPenggunaan: "-- laut yang luas waro-waro ngoloto lamo`o",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.bak /menébak/",
          "te.bak.an /tébakan/"
        ],
        kataImbuhanIndonesia: [
          "menebak /menébak/",
          "tebakan /tébakan/"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "siwaro",
          "waro-waro"
        ],
        contohPenggunaanImbuhan: [
          "saya tak bisa ~nya ngoi to siwaro ua",
          "~nya benar aiwaro-waro itero"
        ]),
    Kata(
        kataIndonesia: "tebang",
        kataEjaan: "te.bang",
        kataSahu: "tawel",
        labelKata: "v",
        contohPenggunaan: "-- kelapa yang besar tawel wagel lamo`o",
        isBookmarked: 0,
        kataImbuhan: [
          "mene.bang",
          "pe.ne.bang"
        ],
        kataImbuhanIndonesia: [
          "menebang",
          "penebang"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "tawel",
          "tawel-tawel"
        ],
        contohPenggunaanImbuhan: [
          "paman ~ pisang babajojo tawel bele",
          "~ pohon berdatangan tawel-tawel ate isapol"
        ]),
    Kata(
        kataIndonesia: "tebal",
        kataEjaan: "te.bal",
        kataSahu: "kapiring",
        labelKata: "a",
        contohPenggunaan: "kabut -- sudah turun saram i uci lai kapiring",
        isBookmarked: 0,
        kataTurunan: [
          "bibir",
          "iman",
          "lidah",
          "muka",
          "semangat",
          "telinga"
        ],
        terjemahanTurunan: [
          "u`du mabetu kapiring",
          "ngangaku kapiring",
          "nyai kapiring",
          "mara ua",
          "samangata kapiring",
          "ngau`u kapiring"
        ],
        kataImbuhan: [
          "ke.te.bal.an",
          "me.ne.bal.kan",
          "mem.per.te.bal",
          "se.te.bal"
        ],
        kataImbuhanIndonesia: [
          "ketebalan",
          "menebalkan",
          "mempertebal",
          "setebal"
        ],
        labelKataImbuhan: [
          "n",
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "kapiring",
          "mu`gare-gare",
          "sikapiringi",
          "kapiring"
        ],
        contohPenggunaanImbuhan: [
          "~ asap memperpendek jarak pandang lowor kapiring nanga mina-mina cocori",
          "Ia (P) sedang ~ alis munang (P) mu’gare-gare guru wutu",
          "Ia (P) ~ halaman bukunya munang (P) sikapiringi ami boku",
          "buku itu ~ roti boku ge kapiring saolo mamami"
        ]),
    Kata(
        kataIndonesia: "teduh",
        kataEjaan: "te.duh",
        kataSahu: "mada`dus",
        labelKata: "a",
        contohPenggunaan: "laut -- ngolot mada`dus",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.te.duh"
        ],
        kataImbuhanIndonesia: [
          "berteduh"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "mada`dus"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ di rumah Ama ngomi mada`dus Ama mi wala"
        ]),
    Kata(
        kataIndonesia: "tegak",
        kataEjaan: "te.gak",
        kataSahu: "boloto",
        labelKata: "a",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.gak.kan"
        ],
        kataImbuhanIndonesia: [
          "menegakkan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "siboloto"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ kepalanya unang (L) siboloto ai sae e"
        ]),
    Kata(
        kataIndonesia: "tegur, menegur",
        kataEjaan: "te.gur, me.ne.gur",
        kataSahu: "ba`ngata",
        labelKata: "v",
        contohPenggunaan: "bapak ~ku semalam baba ba’ngata ngoi awutu",
        isBookmarked: 0,
        kataImbuhan: [
          "te.gur.an"
        ],
        kataImbuhanIndonesia: [
          "teguran"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "ba`ngata"
        ],
        contohPenggunaanImbuhan: [
          "~ datang dari sekolah ba’ngata toma sakola ino"
        ]),
    Kata(
        kataIndonesia: "tekan",
        kataEjaan: "te.kan",
        kataSahu: "bitung",
        labelKata: "v",
        contohPenggunaan: "-- jari bitung raraga",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.kan",
          "ter.te.kan"
        ],
        kataImbuhanIndonesia: [
          "menekan",
          "tertekan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "obitung",
          "kangela"
        ],
        contohPenggunaanImbuhan: [
          "Andri ~ lukanya Andri obitung ai nyabot",
          "hidupnya sangat ~ ahu kangela"
        ]),
    Kata(
      kataIndonesia: "teko /téko/",
      kataEjaan: "te.ko /téko/",
      kataSahu: "cere",
      labelKata: "n",
      contohPenggunaan: "ibu membeli -- aringina tibo cere",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tekun",
        kataEjaan: "te.kun",
        kataSahu: "tomo",
        labelKata: "a",
        contohPenggunaan: " Ia (P) anak yang -- munang (P) ngoa a ma tomo",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.kun.i",
          "ke.te.kun.an"
        ],
        kataImbuhanIndonesia: [
          "menekuni",
          "ketekunan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "matomo",
          "tomo"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ seni beladiri unang (L) matomo silat",
          "~ yang berbuah baik tomo udada lala"
        ]),
    Kata(
        kataIndonesia: "telan",
        kataEjaan: "te.lan",
        kataSahu: "nyamol",
        labelKata: "v",
        contohPenggunaan: "-- obat nyamol sou u",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.lan",
          "ter.te.lan"
        ],
        kataImbuhanIndonesia: [
          "menelan",
          "tertelan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "onyamol",
          "yanyamol"
        ],
        contohPenggunaanImbuhan: [
          "adik ~ permen karet nongo’du onyamol mamami goro",
          "kartu ATM mama ~ di mesin kartu ATM aringina mesin yanyamol"
        ]),
    Kata(
      kataIndonesia: "telanjang",
      kataEjaan: "te.lan.jang",
      kataSahu: "mawatol",
      labelKata: "n",
      contohPenggunaan:
          "adik -- sehabis mandi nongo’du mawatol maori i togum mia",
      isBookmarked: 0,
      kataTurunan: ["bulat"],
      terjemahanTurunan: ["mawatol bu`li-bu`li"],
    ),
    Kata(
      kataIndonesia: "telinga",
      kataEjaan: "te.li.nga",
      kataSahu: "ngau`u",
      labelKata: "n",
      contohPenggunaan: "--nya kemasukan air banyo osam toma ngau’u",
      isBookmarked: 0,
      kataTurunan: ["gajah"],
      terjemahanTurunan: ["ngau`u gajah"],
    ),
    Kata(
      kataIndonesia: "telanjur",
      kataEjaan: "te.lan.jur",
      kataSahu: "palisi`i",
      labelKata: "v",
      contohPenggunaan:
          "saya -- membayar pesanannya ngoi palisi'i tofang berero",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "telat",
      kataEjaan: "te.lat",
      kataSahu: "lati",
      labelKata: "a",
      contohPenggunaan: "saya -- tiba ngoi sapol lati",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "teliti",
        kataEjaan: "te.li.ti",
        kataSahu: " tero-tero",
        labelKata: "a",
        contohPenggunaan: "anak itu ~ sekali ngoa a ge tero-tero",
        isBookmarked: 0,
        kataImbuhan: [
          "pe.ne.li.ti",
          "pe.ne.li.ti.an"
        ],
        kataImbuhanIndonesia: [
          "peneliti",
          "penelitian"
        ],
        labelKataImbuhan: [
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "tero-tero",
          "tero-tero"
        ],
        contohPenggunaanImbuhan: [
          "~ tidak menemukan jawaban ngoa atero-tero sanga ua mademo",
          "~ akan dilaksanakan besok tero-tero sia a dai-daini"
        ]),
    Kata(
        kataIndonesia: "telur",
        kataEjaan: "te.lur",
        kataSahu: "namomagosi",
        labelKata: "n",
        contohPenggunaan: "-- itu pecah namomagosi pici",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.te.lur",
          "me.ne.lur.kan",
          "pe.te.lur"
        ],
        kataImbuhanIndonesia: [
          "bertelur",
          "menelurkan",
          "petelur"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "namoge",
          "sibuoro",
          "wowuoro"
        ],
        contohPenggunaanImbuhan: [
          "ayam itu baru ~ namoge waro iwu ono",
          "sekolah itu sudah ~ alumni hebat sakolage sibuoro ngoa a pande",
          "itu adalah ayam ~ namo genage namo wowuoro"
        ]),
    Kata(
      kataIndonesia: "tema /téma/",
      kataEjaan: "te.ma /téma/",
      kataSahu: "sitolum",
      labelKata: "n",
      contohPenggunaan: "-- kegiatannya bagus masitolum mamunara lai rousu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "tembok /témbok/",
      kataEjaan: "tem.bok /témbok/",
      kataSahu: "gegelo",
      labelKata: "n",
      contohPenggunaan: "-- rumahnya retak-retak wala ma gegelo pingan-pingan",
      isBookmarked: 0,
      kataTurunan: ["besar", "kering"],
      terjemahanTurunan: ["gegelo lamo`o", "gegelo ngonon"],
    ),
    Kata(
        kataIndonesia: "tempuh",
        kataEjaan: "tem.puh",
        kataSahu: "ngadolo",
        labelKata: "v",
        contohPenggunaan:
            "perjalanan panjang ia -- tagi magi’dang omasi ngadolo",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nem.puh"
        ],
        kataImbuhanIndonesia: [
          "menempuh"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "ngadolo"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ jarak yang jauh ngomi masi ngadolo ngoom magi’dang"
        ]),
    Kata(
        kataIndonesia: "tempat",
        kataEjaan: "tem.pat",
        kataSahu: "tegoro",
        labelKata: "n",
        contohPenggunaan: "-- rante mas tegero kalong mas",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nem.pat.kan",
          "ber.tem.pat"
        ],
        kataImbuhanIndonesia: [
          "menempatkan",
          "bertempat"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "tegoro",
          "toma"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ diri di belakang ngomi tegoro toma du’dung",
          "kegiatan itu ~ di gereja munara toma gereja"
        ]),
    Kata(
        kataIndonesia: "temu, bertemu",
        kataEjaan: "te.mu, ber.te.mu",
        kataSahu: "mausanga",
        labelKata: "v",
        contohPenggunaan: "kami ~ pak guru ngomi mausanga maguru",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.mu.i",
          "me.ne.mu.kan"
        ],
        kataImbuhanIndonesia: [
          "menemui",
          "menemukan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "mausanga",
          "tosanga"
        ],
        contohPenggunaanImbuhan: [
          "ibu ~ ayah aringina mausanga a baba",
          "saya ~ uang ngoi tosanga pipis"
        ]),
    Kata(
        kataIndonesia: "ternak",
        kataEjaan: "ter.nak",
        kataSahu: "haiwani",
        labelKata: "n",
        contohPenggunaan: "-- ayam haiwani namo",
        isBookmarked: 0,
        kataImbuhan: ["be.ter.nak"],
        kataImbuhanIndonesia: ["beternak"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["kadihara"],
        contohPenggunaanImbuhan: ["ayah ~ sapi baba kadihara sapi"]),
    Kata(
        kataIndonesia: "tenang",
        kataEjaan: "te.nang ",
        kataSahu: "siogoro",
        labelKata: "a",
        contohPenggunaan: "awal minggu -- migu ma mulaing siogoro",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.nang.kan",
          "ke.te.nang.an"
        ],
        kataImbuhanIndonesia: [
          "menenangkan",
          "ketenangan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "osiogoro",
          "masiogoro"
        ],
        contohPenggunaanImbuhan: [
          "Ari ~ Andi Ari osiogoro Andi",
          "saya butuh ~ ngoi masiogoro"
        ]),
    Kata(
        kataIndonesia: "tendang",
        kataEjaan: "ten.dang",
        kataSahu: "sepa",
        labelKata: "v",
        contohPenggunaan: "-- rumah mereka sepa ngene nangawala",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nen.dang",
          "ter.ten.dang",
          "ten.dang.an"
        ],
        kataImbuhanIndonesia: [
          "menendang",
          "tertendang",
          "tendangan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sepa",
          "sepa",
          "seepage"
        ],
        contohPenggunaanImbuhan: [
          "Doni ~ bola Doni sepa bola",
          "kaki saya ~  olehnya ngunang sepa ari rou",
          "~nya keras sekali sepage si’di madu’tu"
        ]),
    Kata(
        kataIndonesia: "tenggelam",
        kataEjaan: "teng.ge.lam",
        kataSahu: "jala",
        labelKata: "v",
        contohPenggunaan: "orang itu -- ngoa a ge jala",
        isBookmarked: 0,
        kataImbuhan: ["me.neng.ge.lam.kan"],
        kataImbuhanIndonesia: ["menenggelamkan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["osijala"],
        contohPenggunaanImbuhan: ["Ia (L) ~ batu unang (L) osijala ma`di"]),
    Kata(
      kataIndonesia: "tengkurap",
      kataEjaan: "teng.ku.rap",
      kataSahu: "ma`dupolon",
      labelKata: "v",
      contohPenggunaan: "adik tidur -- nongo’du ngotu ma’dupolon",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tengok /téngok/",
        kataEjaan: "te.ngok /téngok/",
        kataSahu: "magalelo",
        labelKata: "v",
        contohPenggunaan: "-- ke kanan gagelo ku wi’da",
        isBookmarked: 0,
        kataImbuhan: ["me.ne.ngok"],
        kataImbuhanIndonesia: ["menengok"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["galelo"],
        contohPenggunaanImbuhan: ["jangan ~ ke sana galelo sisa awa"]),
    Kata(
        kataIndonesia: "tentu",
        kataEjaan: "ten.tu",
        kataSahu: "tantu",
        labelKata: "a",
        contohPenggunaan: "kami -- senang ngomi tantu sanang",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nen.tu.kan",
          "ter.ten.tu",
          "ke.ten.tu.an"
        ],
        kataImbuhanIndonesia: [
          "menentukan",
          "tertentu",
          "ketentuan"
        ],
        labelKataImbuhan: [
          "v",
          "a",
          "n"
        ],
        kataSahuImbuhan: [
          "sitantu",
          "matoto",
          "mamawu"
        ],
        contohPenggunaanImbuhan: [
          "Ani ~ pilihan Ani sitantu ai bibili",
          "pada hari ~ wanger matoto",
          "ikut saja ~ itu mete bato enang mamawu"
        ]),
    Kata(
        kataIndonesia: "tepi",
        kataEjaan: "te.pi ",
        kataSahu: " mau`du",
        labelKata: "n",
        contohPenggunaan: "-- laut ngolot mau’du",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.te.pi",
          "me.ne.pi.kan"
        ],
        kataImbuhanIndonesia: [
          "bertepi",
          "menepikan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "mau`du",
          "sibala bu`u"
        ],
        contohPenggunaanImbuhan: [
          "langit tak ~ didiwang mau’du mabaticua",
          "Ari ~ perahu Ari sibala bu’u ngoti"
        ]),
    Kata(
        kataIndonesia: "tepuk",
        kataEjaan: "te.puk",
        kataSahu: "mapasata",
        labelKata: "v",
        contohPenggunaan: "-- tangan sata giam",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.puk",
          "te.puk.an"
        ],
        kataImbuhanIndonesia: [
          "menepuk",
          "tepukan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sata",
          "sata"
        ],
        contohPenggunaanImbuhan: [
          "~ pundak sata tutolo",
          "~ tangan sata giam"
        ]),
    Kata(
      kataIndonesia: "teras /téras/",
      kataEjaan: "te.ras /téras/",
      kataSahu: "surabi",
      labelKata: "n",
      contohPenggunaan: "-- rumah wala ma surabi",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "terbang",
        kataEjaan: "ter.bang",
        kataSahu: "solor",
        labelKata: "v",
        contohPenggunaan: "kami -- pukul dua ngomi solor ca’ol romdi’di",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ner.bang.kan",
          "be.ter.bang.an",
          "pe.ner.bang",
          "pe.ner.bang.an"
        ],
        kataImbuhanIndonesia: [
          "menerbangkan",
          "beterbangan",
          "penerbang",
          "penerbangan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "sisolor",
          "solor",
          "sisolor",
          "misolor"
        ],
        contohPenggunaanImbuhan: [
          "Ia (L) ~ uang adiknya unang (L) sisolor nongo’du ma pipis",
          "debu ~ urou’u i solor",
          "~ pesawat sisolor kapal",
          "~ kami ditunda misolor sisorong"
        ]),
    Kata(
        kataIndonesia: "terbit",
        kataEjaan: "ter.bit",
        kataSahu: "to`dongo",
        labelKata: "v",
        contohPenggunaan: "matahari -- wenger to’dongoi",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ner.bit.kan",
          "ter.bit.an"
        ],
        kataImbuhanIndonesia: [
          "menerbitkan",
          "terbitan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "susupu",
          "susupu"
        ],
        contohPenggunaanImbuhan: [
          "saya ~ buku ngoi susupu boku",
          "~ majalah susupu majala"
        ]),
    Kata(
        kataIndonesia: "teriak",
        kataEjaan: "te.ri.ak",
        kataSahu: "poa`a",
        labelKata: "v",
        contohPenggunaan: "-- paling besar poa`a lamo`o madutu",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.te.ri.ak",
          "me.ne.ri.ak.kan",
          "te.ri.ak.an"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "poa`a",
          "siboa`a",
          "poa`a"
        ],
        contohPenggunaanImbuhan: [
          "mama ~ keras ngina poa’a siduga",
          "mereka ~ pencuri anang siboa’a totori’i",
          "~ keras poa’a siduga"
        ]),
    Kata(
        kataIndonesia: "terima",
        kataEjaan: "te.ri.ma",
        kataSahu: "dawong",
        labelKata: "v",
        contohPenggunaan: "-- saja dawong bato",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.ri.ma",
          "ber.te.ri.ma"
        ],
        kataImbuhanIndonesia: [
          "menerima",
          "berterima"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "dawong",
          "dawong"
        ],
        contohPenggunaanImbuhan: [
          "~ bantuan dawong bubula’a",
          "tidak ~ dawong ua"
        ]),
    Kata(
        kataIndonesia: "terjun",
        kataEjaan: "ter.jun",
        kataSahu: "masipoini",
        labelKata: "v",
        contohPenggunaan: "-- payung masipoini payung",
        isBookmarked: 0,
        kataImbuhan: ["me.ner.jun.kan"],
        kataImbuhanIndonesia: ["menerjunkan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["masapoini"],
        contohPenggunaanImbuhan: ["kami ~ tim ngomi masapoini dadagimo"]),
    Kata(
      kataIndonesia: "terung",
      kataEjaan: "te.rung",
      kataSahu: "wowoi",
      labelKata: "n",
      contohPenggunaan: "-- sudah berbiah wowoi ri sowo’o",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "terus",
      kataEjaan: "te.rus",
      kataSahu: "masiboloto",
      labelKata: "v",
      contohPenggunaan: "-- saja ke sana siboloto bato sisa",
      isBookmarked: 0,
      kataTurunan: ["terang"],
      terjemahanTurunan: ["gogonuwa"],
    ),
    Kata(
        kataIndonesia: "tetap",
        kataEjaan: "te.tap ",
        kataSahu: "sigare",
        labelKata: "v",
        contohPenggunaan: "-- di sana age bato",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ne.tap",
          "me.ne.tap.kan"
        ],
        kataImbuhanIndonesia: [
          "menetap",
          "menetapkan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "tegor",
          "sitatap"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ di desa ngomi tegor toma gam",
          "kades ~ hari kerja bakti manyira sitatap wakutu"
        ]),
    Kata(
        kataIndonesia: "tetes /tétés/",
        kataEjaan: "te.tes /tétés/",
        kataSahu: "tege",
        labelKata: "v",
        contohPenggunaan: "-- air banyo tege",
        isBookmarked: 0,
        kataImbuhan: ["me.ne.tes"],
        kataImbuhanIndonesia: ["menetes"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["tege"],
        contohPenggunaanImbuhan: ["air ~ di atap banyo tege toma atu"]),
    Kata(
      kataIndonesia: "tewas /téwas/",
      kataEjaan: "te.was /téwas/",
      kataSahu: "sengene",
      labelKata: "v",
      contohPenggunaan: "anaknya -- ai ngoa sengene",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "tiang",
      kataEjaan: "ti.ang",
      kataSahu: "mangasu",
      labelKata: "n",
      contohPenggunaan: "-- rumah wala mangasu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "tiap",
      kataEjaan: "ti.ap",
      kataSahu: "wangimoi",
      labelKata: "a",
      contohPenggunaan: "-- hari wangimoi-wangimo",
      isBookmarked: 0,
      kataTurunan: ["orang"],
      terjemahanTurunan: ["uria ba`to"],
    ),
    Kata(
      kataIndonesia: "tiba",
      kataEjaan: "ti.ba",
      kataSahu: "ngadol",
      labelKata: "v",
      contohPenggunaan: "ayah -- kemarin baba ngadol aunyigo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "tidak",
      kataEjaan: "ti.dak",
      kataSahu: "ua",
      labelKata: "adv",
      contohPenggunaan: "dia (L) -- tahu apa-apa unang (L) waro oru ua",
      isBookmarked: 0,
      kataTurunan: ["apa", "apa-apa", "boleh", "keruan"],
      terjemahanTurunan: ["oru ua", "oru-oru ua", "yo`du", "waro magagare ua"],
    ),
    Kata(
        kataIndonesia: "tidur",
        kataEjaan: "ti.dur",
        kataSahu: "otu",
        labelKata: "v",
        contohPenggunaan: "saya sudah -- ngoi to otu du’a",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ni.dur.kan",
          "ter.ti.dur",
          "ke.ti.dur.an",
          "ti.dur.an"
        ],
        kataImbuhanIndonesia: [
          "menidurkan",
          "tertidur",
          "ketiduran",
          "tiduran"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "siotu",
          "otu",
          "masibatong",
          "otu"
        ],
        contohPenggunaanImbuhan: [
          "ibu ~ adik aringina siotu nongo’du",
          "ia (L) ~ di bangku unang (L) otu toma bako",
          "bapak ~ di lantai baba masibatong toma mesele",
          "ia (P) ~ di rumput munang (P) otu toma rurubu"
        ]),
    Kata(
        kataIndonesia: "tiga",
        kataEjaan: "ti.ga",
        kataSahu: "ngaduange",
        labelKata: "num",
        contohPenggunaan: "rumah Pak Niko tiga buah Pak Niko ai wala du ruange",
        isBookmarked: 0,
        kataTurunan: [
          "besar",
          "puluh",
          "ratus",
          "satu",
          "serangkai"
        ],
        terjemahanTurunan: [
          "roange lamo`o",
          "nyagi roange",
          "latu roange",
          "roange reromoi",
          "nga`du ange"
        ],
        kataImbuhan: [
          "ber.ti.ga",
          "se.per.ti.ga"
        ],
        kataImbuhanIndonesia: [
          "bertiga",
          "sepertiga"
        ],
        labelKataImbuhan: [
          "num",
          "num"
        ],
        kataSahuImbuhan: [
          "ngaaduange",
          "kuaroange"
        ],
        contohPenggunaanImbuhan: [
          "kami datang -- ngomi sapol ngaduange",
          "~ sudah habis kuaroange rimoini"
        ]),
    Kata(
      kataIndonesia: "tikar",
      kataEjaan: "ti.kar",
      kataSahu: "jongutu",
      labelKata: "n",
      contohPenggunaan: "-- itu basah jongutu o’bos",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tikam",
        kataEjaan: "ti.kam",
        kataSahu: "topo`o",
        labelKata: "v",
        contohPenggunaan: "-- anak kambing topo abing mangowa",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ni.kam",
          "ter.ti.kam",
          "pe.ni.kam.an"
        ],
        kataImbuhanIndonesia: [
          "menikam",
          "tertikam",
          "penikaman"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "otopo`o",
          "topo`o",
          "totopo`o"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ temannya unang (L) otopo’o madagilom",
          "Andi ~ pisau Andi topo’o toma golowa",
          "pelaku ~ ditangkap ngoa a totopo’o sanga cako`o"
        ]),
    Kata(
      kataIndonesia: "tikus",
      kataEjaan: "ti.kus",
      kataSahu: "nguti",
      labelKata: "n",
      contohPenggunaan: "-- itu mati nguti ge isingene",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "timba",
        kataEjaan: "tim.ba",
        kataSahu: "gonyo",
        labelKata: "n",
        contohPenggunaan: "-- air gonyo banyo",
        isBookmarked: 0,
        kataImbuhan: ["me.nim.ba"],
        kataImbuhanIndonesia: ["menimba"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["gonyo"],
        contohPenggunaanImbuhan: ["Sari air Sari gonyo banyo"]),
    Kata(
      kataIndonesia: "timbul",
      kataEjaan: "tim.bul",
      kataSahu: "pulungie",
      labelKata: "v",
      contohPenggunaan: "matahari sudah -- wenger palatie",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "timur",
      kataEjaan: "ti.mur",
      kataSahu: "moto",
      labelKata: "n",
      contohPenggunaan: "matahari terbit dari -- wange palata toma moto",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tinggal",
        kataEjaan: "ting.gal",
        kataSahu: "tegor",
        labelKata: "n",
        contohPenggunaan:
            "paman -- di tepi hutan babajojo tegor toma bangan mau`du",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ning.gal.kan",
          "ter.ting.gal"
        ],
        kataImbuhanIndonesia: [
          "meninggalkan",
          "tertinggal"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sisoi`i",
          "sisoi`i:"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ rumah unang (L) sisoi’i wala",
          "bukuku ~ di sekolah ari boku sisoi’i toma sakola"
        ]),
    Kata(
      kataIndonesia: "tinggi",
      kataEjaan: "ting.gi",
      kataSahu: "kau`u",
      labelKata: "a",
      contohPenggunaan: "pohon durian -- sekali durian ma’du kau’u madu’tu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tingkah",
        kataEjaan: "ting.kah",
        kataSahu: "gaga`a",
        labelKata: "n",
        contohPenggunaan: "-- Budi membuat jengkel Budi ai gaga’a dadi toruta",
        isBookmarked: 0,
        kataTurunan: ["laku", "langkah"],
        terjemahanTurunan: ["ai gaga`a", "hele magaga`a"],
        kataImbuhan: ["ber.ting.kah"],
        kataImbuhanIndonesia: ["bertingkah"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["anigaga`a"],
        contohPenggunaanImbuhan: ["jangan ~ aneh awa anigaga’a ane-ane"]),
    Kata(
        kataIndonesia: "tingkat",
        kataEjaan: "ting.kat",
        kataSahu: "tingkat",
        labelKata: "n",
        contohPenggunaan: "-- rumah ayah tingkat baba ai wala",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ning.kat",
          "ting.kat.an",
          "ber.ting.kat"
        ],
        kataImbuhanIndonesia: [
          "meningkat",
          "tingkatan",
          "bertingkat"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "marepe",
          "tingkat",
          "matingkat"
        ],
        contohPenggunaanImbuhan: [
          "angka kelahiran ~ tahun ini sanga ngoa a marepe toma musu nenane",
          "ada tiga ~ rema tingkat roange",
          "rumah ~ tiga wala matingkat roange"
        ]),
    Kata(
      kataIndonesia: "tinja",
      kataEjaan: "tin.ja",
      kataSahu: "kio",
      labelKata: "n",
      contohPenggunaan: "-- bau busuk kio ma pokuru",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tipis",
        kataEjaan: "ti.pis",
        kataSahu: "nyinginar",
        labelKata: "a",
        contohPenggunaan: "rambut -- wutu nyinginar",
        isBookmarked: 0,
        kataTurunan: ["kepercayaan", "telinga"],
        terjemahanTurunan: ["sai tongaku ua", "ngau nginar"],
        kataImbuhan: ["me.ni.pis"],
        kataImbuhanIndonesia: ["menipis"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["nyinginar"],
        contohPenggunaanImbuhan: ["rambut paman ~ babajojo mautu nyinginar"]),
    Kata(
        kataIndonesia: "tipu",
        kataEjaan: "ti.pu",
        kataSahu: "sasakala",
        labelKata: "n",
        contohPenggunaan: "saya -- tipu ngoi sanga sasakala",
        isBookmarked: 0,
        kataTurunan: [
          "daya",
          "muslihat"
        ],
        terjemahanTurunan: [
          "saka sakala",
          "saka sakala"
        ],
        kataImbuhan: [
          "me.ni.pu",
          "pe.ni.pu",
          "pe.ni.pu.an",
          "ter.ti.pu"
        ],
        kataImbuhanIndonesia: [
          "menipu",
          "penipu",
          "penipuan",
          "tertipu"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "sasakala",
          "sasakala",
          "sasakala",
          "sasakala"
        ],
        contohPenggunaanImbuhan: [
          "Bambang ~ orang itu Bambang sasakala ngoa a genage",
          "~ itu ditangkap polisi ngoa a sasakala polisi yau cako’o",
          "hati-hati ~ majaga remangoa sasakala",
          "jangan sampai ~ awasi ngado sanga sasakala"
        ]),
    Kata(
        kataIndonesia: "tiru",
        kataEjaan: "ti.ru",
        kataSahu: "cudu`du",
        labelKata: "v",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ni.ru",
          "me.ni.ru.kan"
        ],
        kataImbuhanIndonesia: [
          "meniru",
          "menirukan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "cudu`du",
          "mocudu`du"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ model rambut bapak unang (L) cudu’du’ baba ai wutu",
          "Reni ~ gambar temannya Reni mocudu’du’ dagelom ma gambar"
        ]),
    Kata(
        kataIndonesia: "titip",
        kataEjaan: "ti.tip",
        kataSahu: "si`dingot",
        labelKata: "v",
        contohPenggunaan: "-- saja uangnya si’dingot bato ma pipis",
        isBookmarked: 0,
        kataImbuhan: ["me.ni.tip"],
        kataImbuhanIndonesia: ["menitip"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["si`dingot"],
        contohPenggunaanImbuhan: ["kami ~ barang ngomi si’dingot barang"]),
    Kata(
        kataIndonesia: "tua",
        kataEjaan: "tu.a",
        kataSahu: "piri`i",
        labelKata: "a",
        contohPenggunaan: "kakek sudah -- ari ete piri’i du’a",
        isBookmarked: 0,
        kataTurunan: ["bangka", "muda"],
        terjemahanTurunan: ["piri`i madu`tu", "piri`i re ngoa olo"],
        kataImbuhan: ["me.nu.a"],
        kataImbuhanIndonesia: ["menua"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["pari`i"],
        contohPenggunaanImbuhan: ["ibu sudah ~ aringina room pari’i"]),
    Kata(
        kataIndonesia: "tuai",
        kataEjaan: "tu.ai",
        kataSahu: "sanga",
        labelKata: "n",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nu.ai"
        ],
        kataImbuhanIndonesia: [
          "menuai"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "osanga"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ hasil perbuatannya unang (L) osanga ai gaga’a"
        ]),
    Kata(
        kataIndonesia: "tuang, menuang",
        kataEjaan: "tu.ang, me.nu.ang",
        kataSahu: "pa`al",
        labelKata: "v",
        contohPenggunaan: "saya ~ air ngoi pa’al banyo",
        isBookmarked: 0,
        kataImbuhan: ["ter.tu.ang"],
        kataImbuhanIndonesia: ["tertuang"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["pa`al"],
        contohPenggunaanImbuhan: ["semua sudah ~ momoi pa’al ua"]),
    Kata(
        kataIndonesia: "tubuh",
        kataEjaan: "tu.buh",
        kataSahu: "lese",
        labelKata: "n",
        contohPenggunaan: "-- besar lese lamo`o",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.se.tu.buh",
          "me.nye.tu.buh.i"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "maupake",
          "omapake"
        ],
        contohPenggunaanImbuhan: [
          "mereka ~ di kebun anang maupake toma gu’da",
          "laki-laki itu ~ gadis nana u’u omapake mosoles"
        ]),
    Kata(
        kataIndonesia: "tudung",
        kataEjaan: "tu.dung",
        kataSahu: "dadamon",
        labelKata: "n",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: ["me.nu.dung.kan"],
        kataImbuhanIndonesia: ["menudungkan"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["madamun"],
        contohPenggunaanImbuhan: ["ibu ~ kain aringina madamun re ba’a"]),
    Kata(
        kataIndonesia: "tugas",
        kataEjaan: "tu.gas",
        kataSahu: "munara",
        labelKata: "n",
        contohPenggunaan: "-- sekolah munara sekola",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nu.gas.i",
          "me.nu.gas.kan",
          "pe.nu.gas.an",
          "ber.tu.gas"
        ],
        kataImbuhanIndonesia: [
          "menugasi",
          "menugaskan",
          "penugasan",
          "bertugas"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "simunara",
          "simunara",
          "munara",
          "umunara"
        ],
        contohPenggunaanImbuhan: [
          "kakak ~ saya menjaga kebun ioro simunara ngoi toma gu’da",
          "saya ~ dia ke daerah ngoi simunara ngunang toma dairaha",
          "~ itu sudah direncanakan munara ge yasi karo du’a",
          "bapak ~ besok baba umunara dadaini"
        ]),
    Kata(
        kataIndonesia: "tuhan",
        kataEjaan: "tu.han",
        kataSahu: "majou",
        labelKata: "n",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.tu.han",
          "me.nu.han.kan",
          "ke.tu.han.an"
        ],
        kataImbuhanIndonesia: [
          "bertuhan",
          "menuhankan",
          "ketuhanan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "remajou",
          "sijou-jou",
          "remajou"
        ],
        contohPenggunaanImbuhan: [
          "setiap orang ~ ngoa a musi remajou",
          "jangan ~ uang awa sijou-jou ninga pipis",
          "jiwa ~ itu penting rasono mabasono remajou renage rousu"
        ]),
    Kata(
        kataIndonesia: "tukar",
        kataEjaan: "tu.kar",
        kataSahu: "biaolo",
        labelKata: "v",
        contohPenggunaan: "-- anting emas biaolo giwang mas",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nu.kar",
          "me.nu.kar.kan",
          "ter.tu.kar"
        ],
        kataImbuhanIndonesia: [
          "menukar",
          "menukarkan",
          "tertukar"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "sibialolo",
          "singali",
          "singali"
        ],
        contohPenggunaanImbuhan: [
          "bibi ~ uang di bank meme sibaolo pipis toma bank",
          "bibi ~ beras meme singali ea malaem",
          "anak itu ~ ngoa genage ya singali"
        ]),
    Kata(
        kataIndonesia: "tujuh",
        kataEjaan: "tu.juh",
        kataSahu: "tumu`ding",
        labelKata: "num",
        contohPenggunaan:
            "-- dikali lima sama dengan tiga puluh lima tumding sikali romtoa idadi nyagi roange re romtoa",
        isBookmarked: 0,
        kataTurunan: [
          "puluh"
        ],
        terjemahanTurunan: [
          "nyagi tumu`ding"
        ],
        kataImbuhan: [
          "ber.tu.juh"
        ],
        kataImbuhanIndonesia: [
          "bertujuh"
        ],
        labelKataImbuhan: [
          "num"
        ],
        kataSahuImbuhan: [
          "ngatumu`ding"
        ],
        contohPenggunaanImbuhan: [
          "kami datang ~ ngomi sapol ngoa a ngatumu’ding"
        ]),
    Kata(
      kataIndonesia: "tulang",
      kataEjaan: "tu.lang",
      kataSahu: "yo`bong",
      labelKata: "n",
      contohPenggunaan: "-- Dodi sakit Dodi ayo’bong sisi’di",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tular",
        kataEjaan: "tu.lar",
        kataSahu: "gasala",
        labelKata: "v",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nu.lar"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "gasala-gasala"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) terkena penyakit ~ ngunang tosanga sisi’di gasala-gasala"
        ]),
    Kata(
      kataIndonesia: "tuli",
      kataEjaan: "tu.li",
      kataSahu: "popongol",
      labelKata: "a",
      contohPenggunaan: "ia (L) -- unang (L) to popongol",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tulis, menulis",
        kataEjaan: "tu.lis, me.nu.lis",
        kataSahu: "lefo",
        labelKata: "v",
        contohPenggunaan: "saya ~ ngoi toma lefo",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nu.lis.kan",
          "pe.nu.lis"
        ],
        kataImbuhanIndonesia: [
          "menuliskan",
          "penulis"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "toma lefo",
          "to tulisi"
        ],
        contohPenggunaanImbuhan: [
          "saya ~ surat ngoi toma lefo surata",
          "saya seorang ~ ngoi yang to tulisi"
        ]),
    Kata(
      kataIndonesia: "tulus",
      kataEjaan: "tu.lus",
      kataSahu: "tulusu",
      labelKata: "a",
      contohPenggunaan: "hatinya -- ai akala i tulusu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "tumbuh",
      kataEjaan: "tum.buh",
      kataSahu: "konyo",
      labelKata: "n",
      contohPenggunaan:
          "durian -- di belakang rumah durian ikonyo toma wala ma’du’dun",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "tumit",
      kataEjaan: "tu.mit",
      kataSahu: "solo`o",
      labelKata: "n",
      contohPenggunaan: "-- saya sakit ari solo’o sisi`di",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tumpah",
        kataEjaan: "tum.pah",
        kataSahu: "pa`ah",
        labelKata: "v",
        contohPenggunaan: "-- sisa makanan pa`ah ngongorom ma jingiangi",
        isBookmarked: 0,
        kataImbuhan: [
          "me.num.pah.kan",
          "ter.tum.pah",
          "per.tum.pah.an",
          "tum.pah.an"
        ],
        kataImbuhanIndonesia: [
          "menumpahkan",
          "tertumpah",
          "pertumpahan",
          "tumpahan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "pa`ah",
          "ipa`ah",
          "pa`ah",
          "ipa`ala"
        ],
        contohPenggunaanImbuhan: [
          "saya ~ air ngoi to pa’ah banyo",
          "air ~ banyo ipa’ah",
          "~ darah ngaon pa’ah",
          "~ minyak tanah borohi ipa’ala"
        ]),
    Kata(
        kataIndonesia: "tumpang",
        kataEjaan: "tum.pang",
        kataSahu: "to palen",
        labelKata: "v",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "me.num.pang",
          "pe.num.pang"
        ],
        kataImbuhanIndonesia: [
          "menumpang",
          "penumpang"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "to palen",
          "dipalen"
        ],
        contohPenggunaanImbuhan: [
          "saya ~ di mobil kades ngoi to palen manyira ai oto",
          "~ yang naik ngoa a yang dipalen"
        ]),
    Kata(
        kataIndonesia: "tumpuk",
        kataEjaan: "tum.puk",
        kataSahu: "totoun",
        labelKata: "n",
        contohPenggunaan: "-- kain batubara totoun ba`a batubaran",
        isBookmarked: 0,
        kataImbuhan: [
          "me.num.puk",
          "tum.puk.an"
        ],
        kataImbuhanIndonesia: [
          "menumpuk",
          "tumpukan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "totoun",
          "matotoun"
        ],
        contohPenggunaanImbuhan: [
          "buku itu ~ boku i totoun",
          "~ buku boku matotoun"
        ]),
    Kata(
      kataIndonesia: "tumpul",
      kataEjaan: "tum.pul",
      kataSahu: "poli",
      labelKata: "a",
      contohPenggunaan: "pisau itu -- goloage i poli",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tunas",
        kataEjaan: "tu.nas",
        kataSahu: "di`mutu",
        labelKata: "n",
        contohPenggunaan:
            "-- pisang di belakang rumah bele ma di’mutu toma wala ma`du`dun",
        isBookmarked: 0,
        kataImbuhan: ["ber.tu.nas"],
        kataImbuhanIndonesia: ["bertunas"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["di’mutu"],
        contohPenggunaanImbuhan: ["pisang itu ~ bele ge re di’mutu"]),
    Kata(
        kataIndonesia: "tunda",
        kataEjaan: "tun.da",
        kataSahu: "idadinyang",
        labelKata: "n",
        contohPenggunaan: "-- pekerjaan kakak idadinyang ari ior mamunara",
        isBookmarked: 0,
        kataImbuhan: ["me.nun.da"],
        kataImbuhanIndonesia: ["menunda"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["tadadinyang"],
        contohPenggunaanImbuhan: ["~ pekerjaan munara ge tadadinyang"]),
    Kata(
        kataIndonesia: "tunduk",
        kataEjaan: "tun.duk",
        kataSahu: "maruku",
        labelKata: "v",
        contohPenggunaan: "beberapa orang -- nganu duo ia maruku",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nun.duk",
          "me.nun.duk.kan"
        ],
        kataImbuhanIndonesia: [
          "menunduk",
          "menundukkan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "momaruku",
          "momaruku"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ malu unang (L) momaruku morasa mora`a",
          "ia (P) ~ kepalanya munang (P) amisae e momaruku"
        ]),
    Kata(
      kataIndonesia: "tungku",
      kataEjaan: "tung.ku",
      kataSahu: "di`di`an",
      labelKata: "n",
      contohPenggunaan: "saya membeli -- baru ngoi tibo di’di’an masusungi",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tunjuk, menunjuk",
        kataEjaan: "tun.juk, me.nun.juk",
        kataSahu: "sijum",
        labelKata: "v",
        contohPenggunaan: "saya ~ dia (P) ngoi to sijum munang a (P)",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nun.juk.kan",
          "per.tun.juk.an"
        ],
        kataImbuhanIndonesia: [
          "menunjukkan",
          "pertunjukan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "mosijum",
          "bu’ba’sa"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ jalan lain munang (P) mosijum ngo’om",
          "~ itu sangat bagus bu’ba’sa genage lai rousu"
        ]),
    Kata(
        kataIndonesia: "tuntut, menuntut",
        kataEjaan: "tun.tut, me.nun.tut",
        kataSahu: "hakawaro",
        labelKata: "v",
        contohPenggunaan: "ia (L) ~ haknya unang to hakawaro ari haku",
        isBookmarked: 0,
        kataImbuhan: [
          "tun.tut.an",
          "pe.nun.tut"
        ],
        kataImbuhanIndonesia: [
          "tuntutan",
          "penuntut"
        ],
        labelKataImbuhan: [
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "hakawaro",
          "sihakawaro"
        ],
        contohPenggunaanImbuhan: [
          "~ itu tidak ada habisnya hakawaro ge imoinua",
          "para ~ diam di sana yang sihakawaro ge masiogor"
        ]),
    Kata(
      kataIndonesia: "tupai",
      kataEjaan: "tu.pai",
      kataSahu: "ngujor",
      labelKata: "n",
      contohPenggunaan:
          "banyak -- di kebun durian ngujor lai repe toma ate durian",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "titip",
        kataEjaan: "ti.tip",
        kataSahu: "dingot",
        labelKata: "v",
        contohPenggunaan: "-- gelang perak dingot galang perak",
        isBookmarked: 0,
        kataImbuhan: [
          "me.ni.tip.kan",
          "ti.tip.an"
        ],
        kataImbuhanIndonesia: [
          "menitipkan",
          "titipan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "ma`dingot",
          "ma`dingot"
        ],
        contohPenggunaanImbuhan: [
          "Rina ~ anak Rina ma’dingot ami ngoa a",
          "semua hanya ~ momoi pa’I ma’dingot"
        ]),
    Kata(
        kataIndonesia: "tiup, meniup",
        kataEjaan: "ti.up, me.ni.up",
        kataSahu: "wusu",
        labelKata: "v",
        contohPenggunaan: "Budi ~ lilin Budi wusu tocak",
        isBookmarked: 0,
        kataImbuhan: [
          "ter.ti.up",
          "ber.ti.up ",
          "ti.up.an",
          "me.ni.up.kan"
        ],
        kataImbuhanIndonesia: [
          "tertiup",
          "bertiup ",
          "tiupan",
          "meniupkan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "v"
        ],
        kataSahuImbuhan: [
          "yawusu",
          "wusu",
          "wusu",
          "towusu"
        ],
        contohPenggunaanImbuhan: [
          "pohon ~ angin ate kuruwiang yawusu",
          "angin ~ kencang kuruwiang wusu lai si’di",
          "ia (L) kena ~ angin unang (L) sanga wusu re kuruwiang",
          "saya ~ matanya ngoi towusu ai lao"
        ]),
    Kata(
      kataIndonesia: "toilet /toilèt/",
      kataEjaan: "to.i.let /toilèt/",
      kataSahu: "dumdum",
      labelKata: "n",
      contohPenggunaan: "saya pergi ke -- ngoi tagi toma dumdum",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tolak",
        kataEjaan: "to.lak",
        kataSahu: "pa`dil",
        labelKata: "v",
        contohPenggunaan: "jangan -- saya awa no pa`dil ngoi",
        isBookmarked: 0,
        kataImbuhan: [
          "me.no.lak",
          "ber.to.lak",
          "to.lak.an"
        ],
        kataImbuhanIndonesia: [
          "menolak",
          "bertolak",
          "tolakan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "apa`dil",
          "tagi",
          "pa`dil"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ datang unang (L) apa’dil sapol",
          "kami ~ ke Ternate ngomi tagi toma Ternate",
          "~nya halus sekali oma pa’dil ngai ceka’a"
        ]),
    Kata(
      kataIndonesia: "tolol",
      kataEjaan: "to.lol",
      kataSahu: "haga",
      labelKata: "a",
      contohPenggunaan: "ia (L) -- sekali unang (L) haga madu’tu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "tolong",
        kataEjaan: "to.long",
        kataSahu: "rion",
        labelKata: "v",
        contohPenggunaan: "-- ibu itu rion ngina genage",
        isBookmarked: 0,
        kataImbuhan: [
          "me.no.long",
          "ter.to.long",
          "pe.no.long",
          "per.to.long.an"
        ],
        kataImbuhanIndonesia: [
          "menolong",
          "tertolong",
          "penolong",
          "pertolongan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "rion",
          "ya`u riono",
          "rioriono",
          "riorion"
        ],
        contohPenggunaanImbuhan: [
          "ayah ~ paman baba rion babajojo",
          "anak itu ~ ngoa genage ya’u riono",
          "~ itu sudah pergi ngoa riorionotagi du’a",
          "kami butuh ~ ngomi sanga riorion"
        ]),
    Kata(
        kataIndonesia: "tongkat",
        kataEjaan: "tong.kat",
        kataSahu: "didi`ki",
        labelKata: "n",
        contohPenggunaan: "-- ayah didi`ki baba",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.tong.kat",
          "me.nong.kat.kan"
        ],
        kataImbuhanIndonesia: [
          "bertongkat",
          "menongkatkan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "aididi`ki",
          "odi`ki"
        ],
        contohPenggunaanImbuhan: [
          "kakek ~ kayu yete ai didi’ki o ate",
          "ia (L) ~ besi itu unang (L) o di’ki besi"
        ]),
    Kata(
        kataIndonesia: "tonton, menonton",
        kataEjaan: "ton.ton, me.non.ton",
        kataSahu: "to uning",
        labelKata: "v",
        contohPenggunaan: "saya ~ TV ngoi to uning TV",
        isBookmarked: 0,
        kataImbuhan: [
          "ton.ton.an",
          "pe.non.ton"
        ],
        kataImbuhanIndonesia: [
          "tontonan",
          "penonton"
        ],
        labelKataImbuhan: [
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "yau nguning-nguning",
          "uning-uning"
        ],
        contohPenggunaanImbuhan: [
          "mereka menjadi ~ warga anang dadi ngoa a yau nguning-nguning",
          "~ ramai sekali ngoa uning-uning moner madu’tu"
        ]),
    Kata(
      kataIndonesia: "topang",
      kataEjaan: "to.pang",
      kataSahu: "madiki",
      labelKata: "v",
      contohPenggunaan: "-- pemberian ayah madiki bubula`a re baba",
      isBookmarked: 0,
      kataImbuhan: ["me.no.pang", "me.no.pang.kan", "pe.no.pang"],
      kataImbuhanIndonesia: ["menopang", "menopangkan", "penopang"],
      labelKataImbuhan: ["v", "v", "n"],
      kataSahuImbuhan: ["madiki", "madiki", "diki-diki"],
      contohPenggunaanImbuhan: [
        "ia (L) ~ dagu unang (L) madiki akok",
        "ia (L) ~ kayu itu unang (L) madiki ate",
        "kayu ~ rusak diki-diki ate ricira"
      ],
    ),
    Kata(
      kataIndonesia: "topi",
      kataEjaan: "to.pi",
      kataSahu: "tolum",
      labelKata: "n",
      contohPenggunaan: "-- saya hilang ari tolum ingirang",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "tradisi",
      kataEjaan: "tra.di.si",
      kataSahu: "ngoasida",
      labelKata: "n",
      contohPenggunaan: "sudah menjadi -- dadi ngoa sida-sida",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "turun",
        kataEjaan: "tu.run",
        kataSahu: "uci",
        labelKata: "v",
        contohPenggunaan: "-- hujan lebat uci besa lamo`o",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nu.run",
          "me.nu.run.kan",
          "tu.run.an"
        ],
        kataImbuhanIndonesia: [
          "menurun",
          "menurunkan",
          "turunan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "uci",
          "siguci",
          "uci"
        ],
        contohPenggunaanImbuhan: [
          "jalan di sana ~ noom da wo uci",
          "saya ~ perahu ngoi to siguci oti",
          "~ itu sangat berbahaya ngoom uci ge mabahaya lamo’o"
        ]),
    Kata(
        kataIndonesia: "turut",
        kataEjaan: "tu.rut",
        kataSahu: "momete’e",
        labelKata: "v",
        contohPenggunaan: "ia (L) -- hadir unang (L) momete’e",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nu.rut",
          "me.nu.rut.kan"
        ],
        kataImbuhanIndonesia: [
          "menurut",
          "menurutkan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "mete",
          "mete`e"
        ],
        contohPenggunaanImbuhan: [
          "~nya itu sangat banyak mete ngunang genage lai repe",
          "mereka ~ kemauannya anang adi mete’e manga akala masi retene"
        ]),
    Kata(
        kataIndonesia: "tusuk",
        kataEjaan: "tu.suk",
        kataSahu: "topo`o",
        labelKata: "v",
        contohPenggunaan: "-- gigi topo`o ngidi",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nu.suk",
          "me.nu.suk.kan",
          "pe.nu.suk.an"
        ],
        kataImbuhanIndonesia: [
          "menusuk",
          "menusukkan",
          "penusukan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "atopo`o",
          "mucumu",
          "mucumu"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ domba itu unang (L) atopo’o domba genage",
          "ia (L) ~ jarum unang (L) mucumu lawe toma jati",
          "ia (L) pelaku ~ unang (L) mucumu"
        ]),
    Kata(
        kataIndonesia: "tutup",
        kataEjaan: "tu.tup",
        kataSahu: "damunu",
        labelKata: "v",
        contohPenggunaan: "-- pintu damunu ngalan",
        isBookmarked: 0,
        kataImbuhan: [
          "me.nu.tup.i"
        ],
        kataImbuhanIndonesia: [
          "menutupi"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "adamunu"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ bekas lukanya munang (P) adamunu ai nyaboto"
        ]),
    //huruf U
    Kata(
        kataIndonesia: "uang",
        kataEjaan: "u.ang",
        kataSahu: "pipis",
        labelKata: "n",
        contohPenggunaan: "--nya banyak sekali munang rema pipisi",
        isBookmarked: 0,
        kataImbuhan: [
          "ke.u.ang.an"
        ],
        kataImbuhanIndonesia: [
          "keuangan"
        ],
        labelKataImbuhan: [
          "n"
        ],
        kataSahuImbuhan: [
          "pipisi"
        ],
        contohPenggunaanImbuhan: [
          "~ kami terbatas minga pipisi pai gena bato"
        ]),
    Kata(
        kataIndonesia: "ubah",
        kataEjaan: "u.bah",
        kataSahu: "ngali",
        labelKata: "v",
        contohPenggunaan: "-- janji ngali jaji",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.u.bah",
          "meng.u.bah"
        ],
        kataImbuhanIndonesia: [
          "berubah",
          "mengubah"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "angali",
          "angali"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ pikiran munang (P) angali ai sinyingar",
          "ia (P) ~ jalan ke rumahnya munang (P) angali ngo’omo toge toma wala"
        ]),
    Kata(
        kataIndonesia: "ucap",
        kataEjaan: "u.cap",
        kataSahu: "terongo",
        labelKata: "v",
        contohPenggunaan: "-- selamat terongo salamata",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.u.cap",
          "ter.u.cap",
          "meng.u.cap.kan",
          "u.cap.an"
        ],
        kataImbuhanIndonesia: [
          "mengucap",
          "terucap",
          "mengucapkan",
          "ucapan"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "materongo",
          "tosango",
          "terongo",
          "jemo"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ salam munang (P) materongo salam",
          "tidak ada kata ~ tosango rua",
          "saya ~ permintaan maaf ngoi to terongo togolo maaf",
          "~nya lembut sekali ami jemo lai halusu"
        ]),
    Kata(
      kataIndonesia: "udang",
      kataEjaan: "u.dang",
      kataSahu: "ngurono",
      labelKata: "n",
      contohPenggunaan: "-- sulit sekali didapat ngurono wosanga lai kangela",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "udara",
      kataEjaan: "u.da.ra",
      kataSahu: "udara",
      labelKata: "n",
      contohPenggunaan: "-- sangat segar udara lai alo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "udel",
      kataEjaan: "u.del",
      kataSahu: "utut",
      labelKata: "n",
      contohPenggunaan: "--mu kelihatan ani ututu yaodi’i",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "ujung",
        kataEjaan: "u.jung",
        kataSahu: "madere",
        labelKata: "n",
        contohPenggunaan: "-- pantai itu tak terlihat jio wawo`di ua",
        isBookmarked: 0,
        kataTurunan: [
          "hidung",
          "jarum",
          "kuku",
          "lidah",
          "mata",
          "panah"
        ],
        terjemahanTurunan: [
          "ngunung matubu",
          "raraga madere",
          "kalicimi`i madere",
          "yai`i madere",
          "lao mamomina",
          "ngami madere"
        ],
        kataImbuhan: [
          "ber.u.jung"
        ],
        kataImbuhanIndonesia: [
          "berujung"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          ""
        ],
        contohPenggunaanImbuhan: [
          "semua ~ malapetaka madu’dogumu idadi masala"
        ]),
    Kata(
        kataIndonesia: "ukur",
        kataEjaan: "u.kur",
        kataSahu: "tuga",
        labelKata: "n",
        contohPenggunaan: "-- beras tuga e`a",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.u.kur",
          "u.kur.an",
          "peng.u.kur.an"
        ],
        kataImbuhanIndonesia: [
          "mengukur",
          "ukuran",
          "pengukuran"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "mituga",
          "maduga",
          "duga"
        ],
        contohPenggunaanImbuhan: [
          "kami ~ jalan ngomi mituga ngo’omo",
          "~ sepatunya tidak pas cepato maduga ipasua",
          "~ kemarin tidak akurat duga nyigoge ipasua"
        ]),
    Kata(
        kataIndonesia: "ulah",
        kataEjaan: "u.lah",
        kataSahu: "ai duhu",
        labelKata: "n",
        contohPenggunaan: "-- mereka ai duhu anang",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.u.lah"
        ],
        kataImbuhanIndonesia: [
          "berulah"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          ""
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ lagi unang (L) ai ga a so’ogena bato"
        ]),
    Kata(
        kataIndonesia: "ulang",
        kataEjaan: "u.lang",
        kataSahu: "dadunu",
        labelKata: "v",
        contohPenggunaan: "-- tahun dadunu masungu",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.u.lang"
        ],
        kataImbuhanIndonesia: [
          "mengulang"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "madadunung"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ kembali hafalannya munang (P) madadunung ami hafalan"
        ]),
    Kata(
      kataIndonesia: "ular",
      kataEjaan: "u.lar ",
      kataSahu: "cuku`u",
      labelKata: "n",
      contohPenggunaan: "ada -- di atap rumah cuku’u dau toma atu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "ulat",
        kataEjaan: "u.lat",
        kataSahu: "gai`i",
        labelKata: "n",
        contohPenggunaan: "-- di padi gai’i toma ea",
        isBookmarked: 0,
        kataImbuhan: ["ber.u.lat"],
        kataImbuhanIndonesia: ["berulat"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["gai`i"],
        contohPenggunaanImbuhan: ["daun padi gai’i toma ea masoa"]),
    Kata(
        kataIndonesia: "ulur",
        kataEjaan: "u.lur",
        kataSahu: "jili",
        labelKata: "v",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.u.lur"
        ],
        kataImbuhanIndonesia: [
          "mengulur"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "masijili"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ waktu unang (L) masijili mawakutu"
        ]),
    Kata(
        kataIndonesia: "umbar",
        kataEjaan: "um.bar",
        kataSahu: "sijum",
        labelKata: "v",
        contohPenggunaan: "-- janji sijum jaji",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.um.bar"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "adisijum"
        ],
        contohPenggunaanImbuhan: [
          "mereka ~ kemesraan anang adisijum manga dadalara"
        ]),
    Kata(
      kataIndonesia: "umpan",
      kataEjaan: "um.pan",
      kataSahu: "mananai",
      labelKata: "n",
      contohPenggunaan: "cacing sebagai -- mananai okulu ba’ti",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "umpat",
        kataEjaan: "um.pat",
        kataSahu: "sipake ua",
        labelKata: "n",
        contohPenggunaan: "",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.um.pat",
          "um.pat.an"
        ],
        kataImbuhanIndonesia: [
          "mengumpat",
          "umpatan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "masipake ua",
          "ngosipake ua"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ di belakangku munang masipake ua ngoi ari du’du’nu",
          "~nya kasar sekali ngosipake ua ngoi mode-mode’e"
        ]),
    Kata(
      kataIndonesia: "umur",
      kataEjaan: "u.mur",
      kataSahu: "musu",
      labelKata: "n",
      contohPenggunaan:
          "-- saya 74 tahun ongi ari musungu nyagi tumding se rata",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "ungkit",
      kataEjaan: "ung.kit",
      kataSahu: "sibaolo",
      labelKata: "v",
      contohPenggunaan:
          "masalah itu kau -- lagi oru yang idadi ma sibaolo ulang",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "untuk",
      kataEjaan: "un.tuk",
      kataSahu: "da`a",
      labelKata: "p",
      contohPenggunaan: "kue ini -- dimakan momami ge da’a wa omo",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "untung",
        kataEjaan: "un.tung",
        kataSahu: "bara untung",
        labelKata: "n",
        contohPenggunaan: "saya ~ hari ini ngoi to bara untung wangar nagene",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.un.tung.kan",
          "ber.un.tung"
        ],
        kataImbuhanIndonesia: [
          "menguntungkan",
          "beruntung"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "bara untung",
          "bara untung"
        ],
        contohPenggunaanImbuhan: [
          "kerja sama yang ~ maromoi toma bara untun",
          "kami ~ dia datang ngomi mi bara untung sebabu ngunang osapolo"
        ]),
    Kata(
      kataIndonesia: "upah",
      kataEjaan: "u.pah",
      kataSahu: "rejeki",
      labelKata: "n",
      contohPenggunaan: "--ku sangat kecil to sanga rejeki ceka ua",
      isBookmarked: 0,
      kataTurunan: ["bersih", "borongan", "harian"],
      terjemahanTurunan: [
        "rejeki ofi",
        "rejeki borongo",
        "rejeki wangere romoi"
      ],
    ),
    Kata(
      kataIndonesia: "urat",
      kataEjaan: "u.rat",
      kataSahu: "ngu`dot",
      labelKata: "n",
      contohPenggunaan: "-- nadi kelihatan ngu`dot lamo`o wa odi`i",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "urut",
        kataEjaan: "u.rut",
        kataSahu: "tino",
        labelKata: "v",
        contohPenggunaan: "-- badan tino ari lese",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.u.rut"
        ],
        kataImbuhanIndonesia: [
          "mengurut"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "motino"
        ],
        contohPenggunaanImbuhan: [
          "dia (P) ~ kakiku munang (P) motino ari rou"
        ]),
    Kata(
        kataIndonesia: "urut",
        kataEjaan: "u.rut",
        kataSahu: "sipato",
        labelKata: "a",
        contohPenggunaan: "-- kepala ayah sipato baba sae",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.u.rut.an",
          "peng.u.rut.an"
        ],
        kataImbuhanIndonesia: [
          "berurutan",
          "pengurutan"
        ],
        labelKataImbuhan: [
          ""
        ],
        kataSahuImbuhan: [
          "mafato-fato",
          "imasifato"
        ],
        contohPenggunaanImbuhan: [
          "mereka berjalan ~ adi tagi mafato-fato",
          "~ yang membuat kami rugi imasifato gena gela mirugi"
        ]),
    Kata(
        kataIndonesia: "usaha",
        kataEjaan: "u.sa.ha",
        kataSahu: "tike",
        labelKata: "n",
        contohPenggunaan: "-- yang bagus tike yang  rousu",
        isBookmarked: 0,
        kataTurunan: [
          "bersama",
          "tani"
        ],
        terjemahanTurunan: [
          "tike maramoi",
          "tike gu`da"
        ],
        kataImbuhan: [
          "ber.u.sa.ha",
          "meng.u.sa.ha.kan",
          "peng.u.sa.ha"
        ],
        kataImbuhanIndonesia: [
          "berusaha",
          "mengusahakan",
          "pengusaha"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "otike",
          "mitike",
          "tike"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ baik munang (P) otike lalaha",
          "kami ~ uang itu untuk sekolah ngomi balaso mitike pipis doha mingangoa sikola",
          "~ itu sangat kaya ai tike idadi ngunang okaya"
        ]),
    Kata(
      kataIndonesia: "usai",
      kataEjaan: "u.sai",
      kataSahu: "duanga",
      labelKata: "v",
      contohPenggunaan: "hidup kita telah -- nanga ahu ingadolo nenane",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "usap",
        kataEjaan: "u.sap",
        kataSahu: "lamus",
        labelKata: "v",
        contohPenggunaan: "-- kepala saya lamusu ari sae",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.u.sap"
        ],
        kataImbuhanIndonesia: [
          "mengusap"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "lamusu"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ rambutku munang (P) lamusu ari wutu"
        ]),
    Kata(
      kataIndonesia: "usia",
      kataEjaan: "u.si.a",
      kataSahu: "musu",
      labelKata: "n",
      contohPenggunaan: "-- saya 4 tahun ngoi ari musungu I tero rata",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "usik",
        kataEjaan: "u.sik",
        kataSahu: "dusu'u",
        labelKata: "n",
        contohPenggunaan: "-- mereka dusu`u anan",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.u.sik",
          "ter.u.sik"
        ],
        kataImbuhanIndonesia: [
          "mengusik",
          "terusik"
        ],
        labelKataImbuhan: [
          ""
        ],
        kataSahuImbuhan: [
          "udusu`u",
          "udusu`u"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ kehidupan kami unang (L) udusu’u ngomi minga ahu",
          "saya ~ dengan kehadirannya ngoi odusu’u ma wakutu ngunanga osapolo"
        ]),
    Kata(
        kataIndonesia: "usir",
        kataEjaan: "u.sir",
        kataSahu: "dusu`u",
        labelKata: "v",
        contohPenggunaan: "-- anjing dusu`u nunu`u",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.u.sir",
          "peng.u.sir.an"
        ],
        kataImbuhanIndonesia: [
          "mengusir",
          "pengusiran"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "odusu`u",
          "nodusu`u"
        ],
        contohPenggunaanImbuhan: [
          " ia (L) ~ anjing unang (L) odusu’u nunu’u",
          "~ anjing nodusu’u nunu’u"
        ]),
    Kata(
        kataIndonesia: "usul",
        kataEjaan: "u.sul",
        kataSahu: "ai usulu",
        labelKata: "v",
        contohPenggunaan:
            "dia (L) punya -- yang bagus unang (L) ai usulu lai rousu",
        isBookmarked: 0,
        kataImbuhan: [
          "meng.u.sul.kan"
        ],
        kataImbuhanIndonesia: [
          "mengusulkan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "ai usulu"
        ],
        contohPenggunaanImbuhan: [
          "ia (P) ~ makanan pada acara itu munang (P) sidangolo ai usulu ngongoromo toma acara genage"
        ]),
    Kata(
        kataIndonesia: "usang",
        kataEjaan: "u.tang",
        kataSahu: "banyatoro",
        labelKata: "n",
        contohPenggunaan: "--nya banyak sekali banyatoro lai repe",
        isBookmarked: 0,
        kataImbuhan: [
          "berutang"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "banyatoro"
        ],
        contohPenggunaanImbuhan: [
          "ia (L) ~ pada ayahku unang (L) ai banyatoro rangoi ari baba"
        ]),
    Kata(
      kataIndonesia: "usus",
      kataEjaan: "u.sus",
      kataSahu: "gagale",
      labelKata: "n",
      contohPenggunaan: "-- babi enak soto ma gagale lai sa`i",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "utara",
      kataEjaan: "u.ta.ra",
      kataSahu: "utara",
      labelKata: "n",
      contohPenggunaan: "kami berjalan ke -- ngomi mi tagi toma utara",
      isBookmarked: 0,
    ),
    //huruf W
    Kata(
      kataIndonesia: "wabah",
      kataEjaan: "wa.bah",
      kataSahu: " sisi.di macimi",
      labelKata: "n",
      contohPenggunaan: "-- corona sisi.di corona macimi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wacana",
      kataEjaan: "wa.ca.na",
      kataSahu: "habari",
      labelKata: "n",
      contohPenggunaan: "-- koran hari ini habari toma koran wangere nangere",
      isBookmarked: 0,
      kataTurunan: [" langsung"],
      terjemahanTurunan: [" habari langsung"],
    ),
    Kata(
        kataIndonesia: "wadah",
        kataEjaan: "wa.dah",
        kataSahu: " ngi`i",
        labelKata: "n",
        contohPenggunaan:
            "menaruh kue ini ke dalam sebuah -- sigae momami ni tema su.de",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.wa.dah.kan",
          "me.wa.dahi",
          "ter.wa.dahi"
        ],
        kataImbuhanIndonesia: [
          "berwadahkan",
          "mewadahi",
          "terwadahi"
        ],
        labelKataImbuhan: [
          "v",
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "masasao",
          "sisao",
          " sisao"
        ],
        contohPenggunaanImbuhan: [
          "kue ~ daun pisang momami masasao bele masoa",
          "daun pisang itu ~ kue bele masoa sisao momami",
          "kue itu ~ daun pisang momami sisao bele masoa"
        ]),
    Kata(
      kataIndonesia: "waduk",
      kataEjaan: "wa.duk",
      kataSahu: " sum",
      labelKata: "n",
      contohPenggunaan: "-- di pinggir jalan sum tomango.om ma`u.du",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wahana",
      kataEjaan: "wa.ha.na",
      kataSahu: " mangabibisa",
      labelKata: "n",
      contohPenggunaan: "-- anak-anak ngowaolo mangabibisa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wahyu",
      kataEjaan: "wah.yu",
      kataSahu: "  ngongodi`i",
      labelKata: "n",
      contohPenggunaan:
          "saya mendapatkan -- dari Tuhan ngoi to sangan ngongodi`i ra majongu madutu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "wajah",
        kataEjaan: "wa.jah",
        kataSahu: " biono",
        labelKata: "n",
        contohPenggunaan: "--nya (L) tampan ai biono lai rousu;",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.wa.jah",
          "per.wa.jah.an"
        ],
        kataImbuhanIndonesia: [
          "berwajah",
          "perwajahan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "biono",
          "sasao"
        ],
        contohPenggunaanImbuhan: [
          "dia (L) ~ tampan unang (L) ai biono lai rousu",
          "~ bukui ini sangat menarik sasao buku masasao lai rousu"
        ]),
    Kata(
      kataIndonesia: "wajan",
      kataEjaan: "wa.jan",
      kataSahu: "  giu`u",
      labelKata: "n",
      contohPenggunaan: "-- miliknya (P) hitam ta munang (P) mi giu`u ikotu`u",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "wajar",
        kataEjaan: "wa.jar",
        kataSahu: "osam akal",
        labelKata: "a",
        contohPenggunaan: "perilakunya (P) masih -- ami duhu osam akal;",
        isBookmarked: 0,
        kataImbuhan: [
          "se.wa.jar",
          "se.wa.jar.nya"
        ],
        kataImbuhanIndonesia: [
          "sewajar",
          "sewajarnya"
        ],
        labelKataImbuhan: [
          "a",
          "adv"
        ],
        kataSahuImbuhan: [
          " matero",
          "balaso"
        ],
        contohPenggunaanImbuhan: [
          "perilakunya ~ dengan rupanya ami duhu matero ami biono",
          "dia (P) ~ tahu kalau dia jelek 'munang (P) balaso momawaru ami cira'"
        ]),
    Kata(
      kataIndonesia: "wajib",
      kataEjaan: "wa.jib",
      kataSahu: "balaso",
      labelKata: "v",
      contohPenggunaan:
          "semua orang -- pajak ngoa momoini balaso pangbalasteng",
      isBookmarked: 0,
      kataTurunan: ["belajar", "pajak", "militer"],
      terjemahanTurunan: ["madoto`o", "pangbalasteng", "sardado"],
    ),
    Kata(
        kataIndonesia: "wakaf",
        kataEjaan: "wa.kaf",
        kataSahu: " sipula`a",
        labelKata: "n",
        contohPenggunaan:
            "tanah -- ini disediakan untuk gereja sipula`a da`a gereja",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.wa.kaf",
          "me.wakaf.kan"
        ],
        kataImbuhanIndonesia: [
          "berwakaf",
          "mewakafkan"
        ],
        labelKataImbuhan: [
          "v",
          "v"
        ],
        kataSahuImbuhan: [
          "masipula`a",
          "masipula`a"
        ],
        contohPenggunaanImbuhan: [
          "dia (P) ~ ke gereja munang masipula`a da`a gereja",
          "dia (P) ~ tanahnya untuk gereja munang masipula`a ami bubula`a toma gereja"
        ]),
    Kata(
      kataIndonesia: "wakil",
      kataEjaan: "wa.kil",
      kataSahu: "ngali",
      labelKata: "n",
      contohPenggunaan: "-- kami ngali ngomi",
      isBookmarked: 0,
      kataTurunan: ["nikah"],
      terjemahanTurunan: [" ngangali"],
    ),
    Kata(
        kataIndonesia: "waktu",
        kataEjaan: "wak.tu",
        kataSahu: "wakutu, orasa",
        labelKata: "n",
        contohPenggunaan: "-- kerja di ladang orasa munara gu`da",
        isBookmarked: 0,
        kataTurunan: [
          "nyata",
          "gerakan",
          "setempat"
        ],
        terjemahanTurunan: [
          "waiti",
          " wakutu macokutu",
          " toma ngi`i nenane"
        ],
        kataImbuhan: [
          "ber.wak.tu",
          "pe.wak.tu",
          "se.wak.tu",
          "se.wak.tu-wak.tu"
        ],
        kataImbuhanIndonesia: [
          "berwaktu",
          "pewaktu",
          "sewaktu",
          "sewaktu-waktu"
        ],
        labelKataImbuhan: [
          "v",
          "n",
          "n",
          "n"
        ],
        kataSahuImbuhan: [
          "oro wakutu",
          "odi`i",
          "na`o",
          "mawakatu"
        ],
        contohPenggunaanImbuhan: [
          "perjalanan ke Desa Taraudu ini ~ satu jam dudagi toma Taraudu ora wakutu jamu romoi",
          "perjalanan ke Desa Taraudu ini memakai ~ matahari dudagi toma taraudu balaso wopake odi`i wangere malao",
          "~ perjalanan ke Desa Taraudu na`o wotagi tomabTaraudu",
          "jembatan ini ~ dapat patah dodo`u ne mawakatu somoi onang iyeta`a"
        ]),
    Kata(
      kataIndonesia: "walah, kewalahan",
      kataEjaan: "wa.lah, ke.wa.lah.an",
      kataSahu: "ngaum riwara",
      labelKata: "v",
      contohPenggunaan: " kepala desa ~ kepala desa omunara ngaum riwara",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "walau, walaupun",
      kataEjaan: "wa.lau, wa.lau.pun",
      kataSahu: "meskena",
      labelKata: "p",
      contohPenggunaan:
          "~ hujan, kita tetap jalan meskena besa`a ngene wasidagi terus",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "wali",
        kataEjaan: "wa.li",
        kataSahu: "bibiri`i mangangali",
        labelKata: "n",
        contohPenggunaan:
            " kepala desa menjadi ~ kepala desa odadi bibiri`i mangangali",
        isBookmarked: 0,
        kataTurunan: [
          "kota"
        ],
        terjemahanTurunan: [
          " limao masae`e"
        ],
        kataImbuhan: [
          "me.wa.li.kan",
          "per.wa.li.an"
        ],
        kataImbuhanIndonesia: [
          "mewalikan",
          "perwalian"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "sibibiri`i",
          "sibibiri`i"
        ],
        contohPenggunaanImbuhan: [
          "kepala desa ~ ke orang lain kepala desa sibibiri`i rengoa`a manga'",
          "~ kawin sibibiri`i mangamolo`ara"
        ]),
    Kata(
        kataIndonesia: "wangi",
        kataEjaan: "wa.ngi",
        kataSahu: "bobounu sa`i",
        labelKata: "a",
        contohPenggunaan:
            "kue ini -- sekali momamine sa`i maduku; dia (L) sekali nao unang ai bobounu lai sa`i",
        isBookmarked: 0,
        kataImbuhan: [
          "wa.ngi-wa.ngi.an ",
          "me.wa.ngi",
          "me.wa.ngi.kan",
          "pe.wa.ngi"
        ],
        kataImbuhanIndonesia: [
          "wangi-wangian ",
          "mewangi",
          "mewangikan",
          "pewangi"
        ],
        labelKataImbuhan: [
          "n",
          "v",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "bobounu",
          "bobounu lai sa`i",
          "sibobounu",
          "bobounua"
        ],
        contohPenggunaanImbuhan: [
          "~ di Desa Taraudu bobounu toma Taraudu",
          "rumah pekuburan ~ toma kubu mawala ma bobounu lai sa`i",
          "daun pandan itu ~ kuburan itu pudaka masoa`a sibobounu o' kubu",
          "saya tidak memakai ~ ngoi topake bobounua'"
        ]),
    Kata(
      kataIndonesia: "wanita, kewanitaan",
      kataEjaan: "wa.ni.ta, ke.wa.ni.ta.an",
      kataSahu: "were`a",
      labelKata: "n",
      contohPenggunaan: "-- yang cantik were`a ge lamorous`u",
      isBookmarked: 0,
      kataTurunan: ["karier", "tunasusila"],
      terjemahanTurunan: ["were`a remanga munara", "were`a sudala"],
    ),
    Kata(
      kataIndonesia: "pewara",
      kataEjaan: "pe.wa.ra",
      kataSahu: " ngale magugu`u",
      labelKata: "n",
      contohPenggunaan: "perempuan itu jadi -- were`a ge modadi ngale magugu`u",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "waralaba",
      kataEjaan: "wa.ra.la.ba",
      kataSahu: " masipi",
      labelKata: "n",
      contohPenggunaan: "-- penjualan padi masipilango imatero",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "warga",
      kataEjaan: "war.ga",
      kataSahu: "gam",
      labelKata: "n",
      contohPenggunaan: "-- desa gam mamanusia",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "waria",
      kataEjaan: "wa.ria",
      kataSahu: "pulia",
      labelKata: "n",
      contohPenggunaan: "jangan jadi -- awa nidadi ngoa pulia",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "waris",
      kataEjaan: "wa.ris",
      kataSahu: "budel",
      labelKata: "n",
      contohPenggunaan: "saya jadi ahli -- ngoi to dadi budel ma gugu`u",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "warna",
        kataEjaan: "war.na",
        kataSahu: " mawarna",
        labelKata: "n",
        contohPenggunaan: "baju saya -- biru ngoi ari baju mawarna biru;",
        isBookmarked: 0,
        kataTurunan: [
          "nada"
        ],
        terjemahanTurunan: [
          "ton"
        ],
        kataImbuhan: [
          "ber.war.na, war.na-war.ni",
          "me.war.na.kan",
          "se.war.na"
        ],
        kataImbuhanIndonesia: [
          "berwarna, warna-warni",
          "mewarnakan",
          "sewarna"
        ],
        labelKataImbuhan: [
          "n",
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "mawarna",
          " maceti",
          "matero"
        ],
        contohPenggunaanImbuhan: [
          "baju -- hija ami baju mawarna iji",
          " dia (P) ~ rambutnya munanga (P) maceti ami utu",
          "baju kades ~ dengan rambutnya nyira ai pakeanga matero ai utu maceti"
        ]),
    Kata(
        kataIndonesia: "warta",
        kataEjaan: "war.ta",
        kataSahu: "habari",
        labelKata: "n",
        contohPenggunaan: "-- hari ini habari wangere nangere",
        isBookmarked: 0,
        kataImbuhan: [
          "me.war.ta.kan",
          "pe.war.ta"
        ],
        kataImbuhanIndonesia: [
          "mewartakan",
          "pewarta"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "musi habari",
          " sigasa habari"
        ],
        contohPenggunaanImbuhan: [
          " joy ~ joy musi habari'",
          " Joy menjadi ~ hari ini 'Joy modadi ngowa`a sigasa habari"
        ]),
    Kata(
      kataIndonesia: "warung",
      kataEjaan: "wa.rung",
      kataSahu: " wuwu`unu",
      labelKata: "n",
      contohPenggunaan: "saya punya -- kopi ngoi ari wuwu`unu kopi",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wasiat",
      kataEjaan: "wa.si.at",
      kataSahu: " bobita reborerong",
      labelKata: "n",
      contohPenggunaan:
          "-- dari orang tua-tua 'bobita reborerong rengomi minga bibiri`i",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wasit",
      kataEjaan: "wa.sit",
      kataSahu: "wasiti",
      labelKata: "n",
      contohPenggunaan: "hari ini saya jadi -- nangene ngoi to dadi wasiti",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "waspada",
      kataEjaan: "was.pa.da",
      kataSahu: "waspada",
      labelKata: "a",
      contohPenggunaan:
          "-- terjadi gempa Desa Taraudu Desa Taraudu ni waspada wakutu kie tubolo'",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "watak",
        kataEjaan: "wa.tak",
        kataSahu: " mangaduhu",
        labelKata: "n",
        contohPenggunaan: "-- anak itu lucu mangaduhu ngoa-ngoa aanyelo`o'",
        isBookmarked: 0,
        kataImbuhan: ["ber.wa.tak"],
        kataImbuhanIndonesia: ["berwatak"],
        labelKataImbuhan: ["n"],
        kataSahuImbuhan: ["maduhu"],
        contohPenggunaanImbuhan: ["anak -- buruk ngoa maduhu cira"]),
    Kata(
      kataIndonesia: "wawancara",
      kataEjaan: "wa.wan.cara",
      kataSahu: " ma`u sano",
      labelKata: "n",
      contohPenggunaan: "-- dengan kades ma`u sano i`a reino re manyira",
      isBookmarked: 0,
      kataTurunan: ["kelompok"],
      terjemahanTurunan: ["lolom"],
    ),
    Kata(
      kataIndonesia: "wawasan",
      kataEjaan: "wa.wa.san",
      kataSahu: "akala sinyingara",
      labelKata: "n",
      contohPenggunaan: "-- kepala desa akala sinyingara re manyira",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wayang",
      kataEjaan: "wa.yang",
      kataSahu: "wayang",
      labelKata: "n",
      contohPenggunaan: "saya punya -- ngoi ari wayang",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "wejang, wejangan",
        kataEjaan: "we.jang, wej.ang.an",
        kataSahu: " bobita reborerong",
        labelKata: "n",
        contohPenggunaan: "-- orang tua bobita reborerong bibiri`i",
        isBookmarked: 0,
        kataImbuhan: ["me.we.jang"],
        kataImbuhanIndonesia: ["mewejang"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: [" sibirerong"],
        contohPenggunaanImbuhan: ["orang tua -- bibiri`i sibirerong"]),
    Kata(
      kataIndonesia: "wenang, wewenang",
      kataEjaan: "we.nang, we.we.nang ",
      kataSahu: "ai haku",
      labelKata: "n",
      contohPenggunaan: "dia punya -- unang ai haku",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wereng",
      kataEjaan: "we.reng",
      kataSahu: "sasaba",
      labelKata: "n",
      contohPenggunaan: "banyak -- di atas meja sasaba gere toma wala ma dudun",
      isBookmarked: 0,
      kataTurunan: ["hijau"],
      terjemahanTurunan: ["ijo"],
    ),
    Kata(
      kataIndonesia: "wesel",
      kataEjaan: "we.sel",
      kataSahu: "wesel",
      labelKata: "n",
      contohPenggunaan: "-- di Desa Taraudu wesel toma taraudu",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wibawa",
      kataEjaan: "wi.ba.wa",
      kataSahu: "regugasa",
      labelKata: "n",
      contohPenggunaan: "-- seseorang seri`i regugasa",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "widyawisata",
      kataEjaan: "wid.ya.wi.sa.ta ",
      kataSahu: "taggi-tagi toma",
      labelKata: "n",
      contohPenggunaan: "-- ke Jailolo widyawisata ke Jaidolo",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wihara",
      kataEjaan: "wi.ha.ra",
      kataSahu: "wihara",
      labelKata: "n",
      contohPenggunaan: "-- berwarna hijau wihara mawarna ijo",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "wijik (cuci kaki)",
        kataEjaan: "wi.jik (cuci kaki)",
        kataSahu: "soso`o rou",
        labelKata: "n",
        contohPenggunaan: "sebelum tidur harus -- otu nyang balasu soso`o rou",
        isBookmarked: 0,
        kataImbuhan: ["wi.jik.an"],
        kataImbuhanIndonesia: ["wi.jik.an"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["sawo`o"],
        contohPenggunaanImbuhan: ["~ di atas meja sawo`o toma meja mare`u "]),
    Kata(
      kataIndonesia: "wilayah",
      kataEjaan: "wi.la.yah",
      kataSahu: "daeraha",
      labelKata: "n",
      contohPenggunaan: "-- Taraudu daeraha gam Taraudu",
      isBookmarked: 0,
      kataTurunan: ["kerja"],
      terjemahanTurunan: ["gu`uno"],
    ),
    Kata(
      kataIndonesia: "wisata",
      kataEjaan: "wi.sa.ta",
      kataSahu: "tagi",
      labelKata: "n",
      contohPenggunaan: "-- ke pantai tagi ma ori`i toma pantai",
      isBookmarked: 0,
    ),
    Kata(
      kataIndonesia: "wisma",
      kataEjaan: "wis.ma",
      kataSahu: " wala ngi`i rame-rame",
      labelKata: "n",
      contohPenggunaan: "-- di Desa Taraudu wala ngi`i rame-rame toma taraudu",
      isBookmarked: 0,
    ),
    Kata(
        kataIndonesia: "wisuda",
        kataEjaan: "wi.su.da",
        kataSahu: "wisuda",
        labelKata: "n",
        contohPenggunaan: "-- di Desa Taraudu wisuda toma Taraudu",
        isBookmarked: 0,
        kataImbuhan: [
          "me.wi.su.da"
        ],
        kataImbuhanIndonesia: [
          "mewisuda"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          " osiwisuda"
        ],
        contohPenggunaanImbuhan: [
          "rektor ~ seratus sarjana rektor osi wisuda sarjana ngalatumoi"
        ]),
    Kata(
        kataIndonesia: "wujud",
        kataEjaan: "wu.jud",
        kataSahu: "duhu",
        labelKata: "n",
        contohPenggunaan: "-- rumah kepala suku duhu wala suku masae'e",
        isBookmarked: 0,
        kataImbuhan: ["ber.wu.jud"],
        kataImbuhanIndonesia: ["berwujud"],
        labelKataImbuhan: ["v"],
        kataSahuImbuhan: ["maduhu"],
        contohPenggunaanImbuhan: ["anjing ~ jelek hunu`u maduhu cira"]),
    Kata(
        kataIndonesia: "yakin, meyakini",
        kataEjaan: "ya.kin, me.ya.kini",
        kataSahu: " ngaku",
        labelKata: "n",
        contohPenggunaan: "-- kepada Tuhan ngaku majongu madutu",
        isBookmarked: 0,
        kataImbuhanIndonesia: [
          "meyakinkan"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "osiyakini"
        ],
        contohPenggunaanImbuhan: [
          "pendeta ~ jemaat pendeta osi yakini toma jamaata"
        ]),
    Kata(
      kataIndonesia: "zaman",
      kataEjaan: "za.man",
      kataSahu: " zaman",
      labelKata: "n",
      contohPenggunaan:
          "-- dahulu Desa Taraudu suka berburu zaman masida toma taraudu o suru'u tau-taunu",
      isBookmarked: 0,
      kataTurunan: [" batu", "dahulu"],
      terjemahanTurunan: ["ma.di", "masida"],
    ),
    Kata(
        kataIndonesia: "ziarah",
        kataEjaan: "zi.a.rah ",
        kataSahu: " tutumu kubu",
        labelKata: "n",
        contohPenggunaan:
            " saya -- ke makam bapak ngoi to tutumu ari baba ma kubu",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.zi.a.rah"
        ],
        kataImbuhanIndonesia: [
          "berziarah"
        ],
        labelKataImbuhan: [
          "v"
        ],
        kataSahuImbuhan: [
          "tutumu"
        ],
        contohPenggunaanImbuhan: [
          "saya ikut berziarah ke makam bapak ngoi tomete`e tutumu ari baba ma kubu"
        ]),
    Kata(
        kataIndonesia: "zina",
        kataEjaan: "zi.na",
        kataSahu: " ga`a rous sua",
        labelKata: "n",
        contohPenggunaan: "jangan -- ami ga`a rous sua",
        isBookmarked: 0,
        kataImbuhan: [
          "ber.zi.na",
          "per.zi.na.an"
        ],
        kataImbuhanIndonesia: [
          "berzina",
          "perzinaan"
        ],
        labelKataImbuhan: [
          "v",
          "n"
        ],
        kataSahuImbuhan: [
          "mangaga`a rous sua",
          "ga`a rous sua"
        ],
        contohPenggunaanImbuhan: [
          "riko dan nila ~ riko rengo nila mangaga`a rous sua",
          "niko ~ nila niko ai ga`a rous sua rengo nila"
        ])
  ];

  Future<void> insertKataIfNotExists(Kata kata) async {
    // Check if a Kata with the same id already exists in the database
    final existingKata = await dbHelper.getKataById(kata.id);

    // If the Kata does not exist in the database, insert it
    if (existingKata == null) {
      await dbHelper.insertKata(kata);
    }
  }

// Insert the list of Kata into the database
  for (final kata in kataList) {
    // Call the insertKataIfNotExists function to insert each Kata
    await insertKataIfNotExists(kata);
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white), // Set the light theme
      darkTheme: ThemeData.dark(), // Set the dark theme
      themeMode: ThemeMode.system, debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
