import 'package:flutter/material.dart';

import 'package:sellam/models/product_category.dart';

class Product{
  final int id;
  final String name;
  final ProductCategory category;
  final double price;
  final double quantity;
  final Widget picture;
  final String publicationDate;
  final String description;

  const Product({@required this.id, @required this.name, @required this.category, @required this.price, this.quantity, this.picture, this.publicationDate, this.description});
}

var PRODUCTS = [
  Product(
    id: 1,
    name: 'Black beans',
    category: ProductCategory(id: 0, name: 'Food', description: ''),
    price: 1499,
    quantity: 53,
    picture: Image.asset('assets/1_popular.jpg'),
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
  ),
  Product(
    id: 2,
    name: 'Wafers',
    category: ProductCategory(id: 0, name: 'Food', description: ''),
    price: 599,
    quantity: 200,
    picture: Image.asset('assets/2_popular.jpg'),
    description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  ),
  Product(
    id: 3,
    name: 'Chicken & Spaghetti',
    category: ProductCategory(id:3, name: 'Food', description: ''),
    price: 2849,
    quantity: 4,
    picture: Image.asset('assets/3_popular.jpg'),
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
  ),
  Product(
    id: 4,
    name: 'Potatoes Crackers',
    category: ProductCategory(id: 4, name: 'Food', description: ''),
    price: 999,
    quantity: 300,
    picture: Image.asset('assets/4_popular.jpg'),
    description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  ),
];