import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      description: 'Red Shirt',
      title: ' A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/13/14/08/apparel-162192_1280.png',
    ),
    Product(
      id: 'p2',
      description: 'Blue Shirt',
      title: ' A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/13/14/08/apparel-162192_1280.png',
    ),
    Product(
      id: 'p3',
      description: 'Red Shirt',
      title: ' A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/13/14/08/apparel-162192_1280.png',
    ),
    Product(
      id: 'p5',
      description: 'Red Shirt',
      title: ' A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/13/14/08/apparel-162192_1280.png',
    ),
  ];
  var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }
  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
