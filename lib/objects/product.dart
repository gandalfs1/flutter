import 'package:firebase_database/firebase_database.dart';

class Product {
  String? _id;
  String? _name;
  int? _price;
  int? _cuanttity;
  String? _descriptions;

  Product(
      this._id, this._name, this._price, this._cuanttity, this._descriptions);

  Product.map(dynamic obj) {
    this._name = obj['name'];
    this._price = obj['price'];
    this._cuanttity = obj['cuantity'];
    this._descriptions = obj['description'];
  }

  String? get id => _id;
  String? get name => _name;
  int? get price => _price;
  int? get cuantity => _cuanttity;
  String? get description => _descriptions;

  Product.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key!;
    _name = (snapshot.value as Map)['name']; 
    _price = (snapshot.value as Map)['price'];
    _cuanttity = (snapshot.value as Map)['cuantity'];
    _descriptions = (snapshot.value as Map)['description'];
  }
}
