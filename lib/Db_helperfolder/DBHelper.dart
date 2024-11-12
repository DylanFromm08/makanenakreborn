import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/models.dart';

class DBHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'culinary_favorites.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE favorite_foods(
            id INTEGER PRIMARY KEY,
            title TEXT,
            imageUrl TEXT,
            description TEXT
          )
        ''');
        await db.execute('''
          CREATE TABLE favorite_drinks(
            id INTEGER PRIMARY KEY,
            title TEXT,
            imageUrl TEXT,
            description TEXT
          )
        ''');
      },
    );
  }

  Future<void> addFavoriteFood(FoodModel food) async {
    final db = await database;
    await db.insert(
      'favorite_foods',
      food.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> removeFavoriteFood(int id) async {
    final db = await database;
    await db.delete(
      'favorite_foods',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<FoodModel>> getFavoriteFoods() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('favorite_foods');
    return List.generate(maps.length, (i) {
      return FoodModel.fromMap(maps[i]);
    });
  }

  Future<void> addFavoriteDrink(DrinkModel drink) async {
    final db = await database;
    await db.insert(
      'favorite_drinks',
      drink.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> removeFavoriteDrink(int id) async {
    final db = await database;
    await db.delete(
      'favorite_drinks',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<DrinkModel>> getFavoriteDrinks() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('favorite_drinks');
    return List.generate(maps.length, (i) {
      return DrinkModel.fromMap(maps[i]);
    });
  }
}
