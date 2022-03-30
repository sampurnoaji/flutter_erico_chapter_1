import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String id;
  String firstName;
  String lastName;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      firstName: object['first_name'],
      lastName: object['last_name'],
    );
  }

  static Future<User> getUser(String id) async {
    String apiUrl = 'https://reqres.in/api/users/$id';

    var apiResult = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(apiResult.body);

    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }

  static Future<List<User>> getUsers(String page) async {
    String apiUrl = 'https://reqres.in/api/users?page=$page';

    var apiResult = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(apiResult.body);

    List<dynamic> usersData = (jsonObject as Map<String, dynamic>)['data'];
    List<User> users = [];
    for (int i = 0; i < usersData.length; i++) {
      users.add(User.createUser(usersData[i]));
    }

    return users;
  }
}
