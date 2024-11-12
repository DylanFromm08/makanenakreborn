class FoodModel {
  int? id;
  String title;
  String description;
  String imageUrl;
  bool isFavorite;

  FoodModel({
    this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'description': description,
      'isFavorite': isFavorite ? 1 : 0,
    };
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      id: map['id'],
      title: map['title'],
      imageUrl: map['imageUrl'],
      description: map['description'],
      isFavorite: map['isFavorite'] == 1,
    );
  }
}


class DrinkModel {
  int? id;
  String title;
  String description;
  String imageUrl;
  bool isFavorite;

  DrinkModel({
    this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'description': description,
      'isFavorite': isFavorite ? 1 : 0,
    };
  }

  factory DrinkModel.fromMap(Map<String, dynamic> map) {
    return DrinkModel(
      id: map['id'],
      title: map['title'],
      imageUrl: map['imageUrl'],
      description: map['description'],
      isFavorite: map['isFavorite'] == 1,
    );
  }
}
