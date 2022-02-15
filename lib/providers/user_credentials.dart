import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserModel {
  final String? id, phoneNumber, callFolioNumber, name, gender, picture;

  UserModel({
    @required this.id,
    @required this.phoneNumber,
    @required this.callFolioNumber,
    @required this.name,
    @required this.gender,
    @required this.picture,
  });
}

class User with ChangeNotifier {
  List<UserModel> _user = [];

  List<UserModel> get user {
    return [..._user];
  }

  Future<void> addUser(UserModel user) async {
    const url = 'https://callfolio-default-rtdb.firebaseio.com/user.json';
    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode({
          'id': user.id,
          'phoneNumber': user.phoneNumber,
          'callFolioNumber': user.callFolioNumber,
          'name': user.name,
          'gender': user.gender,
          'picture': user.picture,
        }),
      );
      final newUser = UserModel(
        id: user.id,
        phoneNumber: user.phoneNumber,
        callFolioNumber: user.callFolioNumber,
        name: user.name,
        gender: user.gender,
        picture: user.picture,
        // id: json.decode(response.body)['name'],
      );
      _user.add(newUser);
      // _items.insert(0, newProduct); // at the start of the list
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> fetchAndSetProducts(String userId) async {
    const url = 'https://callfolio-default-rtdb.firebaseio.com/user.json';
    try {
      final response = await http.get(Uri.parse(url));
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      final List<UserModel> loadedUser = [];
      extractedData.forEach((UId, userData) {
        loadedUser.add(UserModel(
          id: userData['id'],
          callFolioNumber: userData['callFolioNumber'],
          gender: userData['gender'],
          name: userData['name'],
          phoneNumber: userData['phoneNumber'],
          picture: userData['picture'],
        ));
      });
      _user = loadedUser;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
