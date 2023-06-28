import 'dart:convert';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

import 'entity/ManufacturerItem.dart';

class ManufacturerApi {
  Future<List<ManufacturerItem>> getManufacturerItemList() async {
    final idToken = await FirebaseAuth.instance.currentUser!.getIdToken();
    final response = await http.get(
      Uri.parse('http://localhost:8080/motor-mingle/api/v1/manufacturer/items'),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $idToken',
      },
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body) as List<dynamic>;
      final manufacturerItems = responseBody
          .map(
              (manufacturerItem) => ManufacturerItem.fromJson(manufacturerItem))
          .toList();

      return manufacturerItems;
    } else {
      throw Exception('Failed to load manufacturer list');
    }
  }
}
