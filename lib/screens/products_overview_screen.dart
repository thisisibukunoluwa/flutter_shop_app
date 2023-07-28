import 'package:flutter/material.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_shop_app/widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
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
      description: 'Red Shirt',
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
 ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("My Shop")
      ),
      body:GridView.builder(
        padding:const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3 / 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      )
    );
  }
}
