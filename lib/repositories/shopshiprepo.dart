import 'dart:convert';

import 'package:doorstep/constant/apiconstants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

Future<List> getListOfPlatforms() async {
  String apiUrl = shopshipAPI;
  final response = await http.get(Uri.parse(apiUrl)
      // body: {"id": widget.urlID},
      );
  // print(userId);
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['data'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: response.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: response.body.toString());
  }
  throw 'Exception';
}
