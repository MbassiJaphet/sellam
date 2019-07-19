import 'package:sellam/models/product.dart';

class User{
  final String name;
  final String id;
  final String mail;
  final String password;
  final String logintype;
  final String phone;
  final String address;
  final List<Product> favorites;

  const User({this.name, this.id, this.mail, this.password, this.logintype, this.phone, this.address, this.favorites});
}