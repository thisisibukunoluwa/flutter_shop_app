import 'package:flutter/material.dart';
import 'package:flutter_shop_app/screens/product_detail_screen.dart';
import 'package:flutter_shop_app/screens/products_overview_screen.dart';
import 'providers/products.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // only the widgets that are listening will be rebuilt 
      create: (ctx) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            surface: Colors.white,
            onSurface: Colors.black,
            onPrimary: Colors.purple,
            error: Colors.red,
            onError: Colors.red,
            onBackground: Colors.white,
            background: Colors.white,
            primary: Colors.purple,
            secondary: Colors.deepOrange,
            onSecondary: Colors.deepOrange,
          ),
          useMaterial3: true,
        ),
        home: ProductsOverviewScreen(),
        routes: {ProductDetailScreen.routeName: (ctx) => ProductDetailScreen()},
      ),
    );
  }
}
