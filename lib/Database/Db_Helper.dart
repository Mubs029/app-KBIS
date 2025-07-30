import 'dart:math';

import 'package:kamus_indonesia_sahu/Models/Model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final String path = join(await getDatabasesPath(), 'kamus_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE kamus(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            kata_indonesia TEXT NOT NULL,
            kata_ejaan TEXT NOT NULL,
            kata_sahu TEXT NOT NULL,
            label_kata TEXT NOT NULL,
            contoh_penggunaan TEXT NOT NULL,
            kata_turunan TEXT,
            terjemahan_turunan TEXT,
            kata_imbuhan TEXT,
            label_kata_imbuhan TEXT,
            kata_sahu_imbuhan TEXT,
            contoh_penggunaan_imbuhan TEXT,
            is_bookmarked INTEGER,
            kata_imbuhan_indonesia TEXT
          )
        ''');
      },
    );
  }

  Future<int> insertKata(Kata kata) async {
    final db = await database;
    return await db.insert(
      'kamus',
      kata.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Kata?> getKataById(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'kamus',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Kata.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Kata>> getAllKata() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('kamus');
    return List.generate(maps.length, (i) {
      return Kata.fromMap(maps[i]);
    });
  }

  Future<int> updateKata(Kata kata) async {
    final db = await database;
    return await db.update(
      'kamus',
      kata.toMap(),
      where: 'id = ?',
      whereArgs: [kata.id],
    );
  }

  Future<int> deleteKata(int id) async {
    final db = await database;
    return await db.delete(
      'kamus',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteDatabase(String path) async {
    final String path = join(await getDatabasesPath(), 'kamus_database.db');
    await deleteDatabase(path);
    _database = null;
  }

  Future<String?> getDatabasePath() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'kamus_database.db');
    return path;
  }

  Future<List<Kata>> searchKata(String query) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'kamus',
      where: 'kata_indonesia LIKE ? OR kata_imbuhan_indonesia LIKE ?',
      whereArgs: ['%$query%'],
    );

    return List.generate(maps.length, (i) {
      return Kata.fromMap(maps[i]);
    });
  }

  Future<List<Kata>> getBookmarkedKata() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'kamus',
      where: 'is_bookmarked = ?',
      whereArgs: [1],
    );

    return List.generate(maps.length, (i) {
      return Kata.fromMap(maps[i]);
    });
  }

  Future<List<Kata>> getKataByCategory(String category) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'kamus',
      where: 'label_kata = ?',
      whereArgs: [category], // Fetch entries based on the provided category
    );

    return List.generate(maps.length, (i) {
      return Kata.fromMap(maps[i]);
    });
  }

  Future<void> updateBookmarkStatus(int id, int isBookmarked) async {
    final db = await database;
    await db.update(
      'kamus',
      {'is_bookmarked': isBookmarked},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<Kata?> recommendWordOfTheDay() async {
    final db = await database;
    final List<Map<String, dynamic>> allWords = await db.query('kamus');

    if (allWords.isEmpty) {
      return null; // Return null if there are no words in the database
    }

    // Get a random index to select a word from the database
    final int randomIndex = Random().nextInt(allWords.length);
    final Map<String, dynamic> randomWord = allWords[randomIndex];

    return Kata.fromMap(randomWord); // Return the random word as a Kata object
  }

  Future<List<Kata>> updateBookmarkStatusAndGetBookmarkedKata(
      int id, int isBookmarked) async {
    await updateBookmarkStatus(id, isBookmarked);
    return await getBookmarkedKata();
  }
}
