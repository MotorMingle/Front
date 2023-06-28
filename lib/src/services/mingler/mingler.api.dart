import 'dart:convert';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

import 'entity/MinglerItem.dart';

class MinglerApi {
  Future<MinglerTag> getMinglerTag() async {
    final idToken = await FirebaseAuth.instance.currentUser!.getIdToken();
    final response = await http.get(
      Uri.parse(
          'http://localhost:8080/motor-mingle/api/v1/mingler/${FirebaseAuth.instance.currentUser!.uid}/tag'),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $idToken',
      },
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body) as Map<String, dynamic>;
      final minglerTag = MinglerTag.fromJson(responseBody);

      return minglerTag;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
