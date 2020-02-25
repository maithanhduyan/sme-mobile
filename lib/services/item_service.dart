import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sme_mobile/utilites/common.dart';

class ItemService {

  List items;
  int item_length = 0;
  Future<String> getAll() async {
    var response = await http.get(
        Uri.encodeFull('${URLS.BASE_URL}/Items/GetAll'),
        headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      items = json.decode(response.body);
    } else {
      throw Exception('Failed to load post');
    }

    item_length = items.length;
    return "Success!";
  }
}
