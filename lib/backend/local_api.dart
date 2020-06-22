import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class LocalAPI {
  Future<dynamic> parseJsonFromAssets(String assetpath) async {
    return await rootBundle
        .loadString(assetpath)
        .then((jsonStr) => jsonDecode(jsonStr));
    ;
  }
}
