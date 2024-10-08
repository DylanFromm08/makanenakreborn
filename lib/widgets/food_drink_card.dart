import 'package:flutter/material.dart';

class FoodDrinkCard extends StatelessWidget {
  final item;
  final bool isFavorite;
  final Function onFavorite;
  final double imageHeight;
  final double imageWidth;
  final EdgeInsets imagePadding;
  final double borderRadius; // New property to control border radius

  FoodDrinkCard({
    required this.item,
    required this.isFavorite,
    required this.onFavorite,
    this.imageHeight = 180.0,
    this.imageWidth = 1000.0,
    this.imagePadding = const EdgeInsets.all(8.0),
    this.borderRadius = 16.0, 
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: const Color.fromARGB(255, 218, 218, 218),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: imagePadding,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius), // Apply rounded corners
              child: SizedBox(
                height: imageHeight,
                width: imageWidth,
                child: Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.name,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 71, 71, 71),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              item.description,
              style: TextStyle(
                color: const Color.fromARGB(255, 119, 119, 119),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
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
