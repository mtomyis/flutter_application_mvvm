import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id;
  String email;
  String firstname;
  String lastname;
  String avatar;

  User({this.id, this.email, this.firstname, this.lastname, this.avatar});

  //membuat user dari hasil map json menggunakan factory
  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        email: object['email'],
        firstname: object['firstname'],
        lastname: object['lastname'],
        avatar: object['avatar']);
  }

  //method untuk mengambil json dari api menggunakan future http
  // static future<User>
}
