import 'package:flutter/material.dart';
import 'package:inicio/pages/products_pages.dart';
import 'package:inicio/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: ProductsPage.id,
        routes: {
          ProductsPage.id: (context) => ProductsPage(),
        });
  }
}
