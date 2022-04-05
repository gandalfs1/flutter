import 'package:flutter/material.dart';
import 'package:inicio/objects/product.dart';
import 'package:inicio/widgets/side_bar_widget.dart';

class ProductNewScreen extends StatefulWidget {
  final Product product;

  ProductNewScreen(this.product);

  @override
  State<StatefulWidget> createState() => _ProductNewScreenState();
}

class _ProductNewScreenState extends State<ProductNewScreen> {
  List<Product>? items;
  TextEditingController? _name;
  TextEditingController? _price;
  TextEditingController? _cuanttity;
  TextEditingController? _descriptions;

  @override
  void initState() {
    _name = TextEditingController(text: widget.product.name);
    _price = TextEditingController(text: widget.product.price.toString());
    _cuanttity =
        TextEditingController(text: widget.product.cuantity.toString());
    _descriptions = TextEditingController(text: widget.product.description);
    super.initState();
  }

  @override
  void dispose() {
    _name?.dispose();
    _price?.dispose();
    _cuanttity?.dispose();
    _descriptions?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          elevation: 20.0,
          title: Text(
            'Agregar Dulces GR',
            style: TextStyle(color: Colors.white),
          ),
        ),
        drawer: SideBarWidget(),
        body: Container(
          height: 400.0,
          color: Colors.amber,
          child: Card(
            shape: RoundedRectangleBorder(),
          ),
        ),
      ),
    );
  }
}
