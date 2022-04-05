import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inicio/objects/product.dart';
import 'package:inicio/pages/product_new_page.dart';

import '../widgets/side_bar_widget.dart';

class ProductsPage extends StatefulWidget {
  static String id = 'products_page';
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

final productReference = FirebaseDatabase.instance.reference().child('dulces');

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 20.0,
        title: Text(
          'Dulces GR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: SideBarWidget(),
      body: Center(),
      floatingActionButton: FloatingActionButton(
          child: Icon(FontAwesomeIcons.plus),
          backgroundColor: Colors.black,
          elevation: 15.0,
          onPressed: () => _createNewProduct(context),
          ),
    );
  }


  void _createNewProduct(BuildContext context) async{
    await Navigator.push(context, 
      MaterialPageRoute(builder: 
        (context) => ProductNewScreen(Product(null, '', 0, 0, ''),),
      ),
    );
  }
}
