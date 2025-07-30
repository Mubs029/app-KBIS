class Kata {
  static int _currentId = 0;
  int id;
  String kataIndonesia;
  String kataEjaan;
  String kataSahu;
  String labelKata;
  String contohPenggunaan;
  List<String> kataTurunan;
  List<String> terjemahanTurunan;
  List<String> kataImbuhan;
  List<String> labelKataImbuhan;
  List<String> kataSahuImbuhan;
  List<String> contohPenggunaanImbuhan;
  int isBookmarked;
  List<String> kataImbuhanIndonesia;

  Kata({
    required this.kataIndonesia,
    required this.kataEjaan,
    required this.kataSahu,
    required this.labelKata,
    required this.contohPenggunaan,
    this.kataTurunan = const [],
    this.terjemahanTurunan = const [],
    this.kataImbuhan = const [],
    this.labelKataImbuhan = const [],
    this.kataSahuImbuhan = const [],
    this.contohPenggunaanImbuhan = const [],
    required this.isBookmarked,
    this.kataImbuhanIndonesia = const [],
  }) : id = ++_currentId;

  factory Kata.fromMap(Map<String, dynamic> map) {
    final kata = Kata(
        kataIndonesia: map['kata_indonesia'],
        kataEjaan: map['kata_ejaan'],
        kataSahu: map['kata_sahu'],
        labelKata: map['label_kata'],
        contohPenggunaan: map['contoh_penggunaan'],
        kataTurunan: map['kata_turunan']
            .split(','), // Jika kata turunan adalah string terpisah oleh koma
        terjemahanTurunan: map['terjemahan_turunan'].split(
            ','), // Jika terjemahan turunan adalah string terpisah oleh koma
        kataImbuhan: map['kata_imbuhan']
            .split(','), // Jika kata imbuhan adalah string terpisah oleh koma
        labelKataImbuhan: map['label_kata_imbuhan'].split(
            ','), // Jika label kata imbuhan adalah string terpisah oleh koma
        kataSahuImbuhan: map['kata_sahu_imbuhan'].split(
            ','), // Jika kata Sahu imbuhan adalah string terpisah oleh koma
        contohPenggunaanImbuhan: map['contoh_penggunaan_imbuhan'].split(
            ','), // Jika contoh penggunaan imbuhan adalah string terpisah oleh koma
        isBookmarked: map['is_bookmarked'],
        kataImbuhanIndonesia: map['kata_imbuhan_indonesia'].split(','));

    kata.id = map['id']; // Set the id based on the value retrieved from the map
    return kata;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'kata_indonesia': kataIndonesia,
      'kata_Ejaan': kataEjaan,
      'kata_sahu': kataSahu,
      'label_kata': labelKata,
      'contoh_penggunaan': contohPenggunaan,
      'kata_turunan': kataTurunan.join(
          ','), // Menggabungkan kata turunan menjadi string terpisah oleh koma
      'terjemahan_turunan': terjemahanTurunan.join(
          ','), // Menggabungkan terjemahan turunan menjadi string terpisah oleh koma
      'kata_imbuhan': kataImbuhan.join(
          ','), // Menggabungkan kata imbuhan menjadi string terpisah oleh koma
      'label_kata_imbuhan': labelKataImbuhan.join(
          ','), // Menggabungkan label kata imbuhan menjadi string terpisah oleh koma
      'kata_sahu_imbuhan': kataSahuImbuhan.join(
          ','), // Menggabungkan kata Sahu imbuhan menjadi string terpisah oleh koma
      'contoh_penggunaan_imbuhan': contohPenggunaanImbuhan.join(
          ','), // Menggabungkan contoh penggunaan imbuhan menjadi string terpisah oleh koma
      'is_bookmarked': isBookmarked,
      'kata_imbuhan_indonesia': kataImbuhanIndonesia.join(','),
    };
  }
}
