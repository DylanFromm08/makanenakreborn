import 'package:flutter/material.dart';

class FoodDrinkCard extends StatelessWidget {
  final item;
  final bool isFavorite;
  final Function onFavorite;

  FoodDrinkCard({required this.item, required this.isFavorite, required this.onFavorite});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(item.imageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(item.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(item.description, style: TextStyle(color: Colors.grey)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border, // Changes based on favorite status
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
                onPressed: () => onFavorite(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
