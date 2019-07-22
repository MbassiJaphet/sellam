import 'package:sellam/models/product.dart';

class User{
  String name;
  String id;
  String mail;
  String password;
  String logintype;
  String phone;
  String address;
  List<Product> favorites;

  User({this.name, this.id, this.mail, this.password, this.logintype, this.phone, this.address, this.favorites});
}

List<User> USERS = [
  User(
    name: 'Mbassi Japhet',
    id: 'id',
    mail: 'mbassijaphet@gmail.com',
    password: 'password',
    logintype: 'Normal',
    phone: '+237 6 94 97 96 67',
    address: 'Molyko, Buea',
    favorites: <Product>[]
  ),
];

User USER = USERS[0];
