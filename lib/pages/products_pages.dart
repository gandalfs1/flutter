import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  static String id = 'products_page';
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 20.0,
        title: Text('Dulces GR', style: TextStyle(color: Colors.white),),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('hola yo', style: TextStyle(color: Colors.white),),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Center(),
    );
  }
}
