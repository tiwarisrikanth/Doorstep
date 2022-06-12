import 'dart:convert';

import 'package:doorstep/constant/apiconstants.dart';
import 'package:doorstep/home/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future userLogin(String email, String password, context) async {
  SharedPreferences _sharedToken = await SharedPreferences.getInstance();

  String apiUrl = login;
  final response = await http.post(
    Uri.parse(apiUrl),
    headers: {"Content-Type": "application/x-www-form-urlencoded"},
    body: {"email": email, "password": password},
  );
  // print(userId);
  if (response.statusCode == 200) {
    String token = jsonDecode(response.body)['token'].toString();
    _sharedToken.setString('token', token);

    Fluttertoast.showToast(msg: token);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
    return jsonDecode(response.body);
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

Future getLockerAddress() async {
  var headers = {
    'Cookie': 'ci_session=c6c97a4dbf3d14451c1a8ee8a012cb8b45a49bb4'
  };
  var request = http.Request('GET', Uri.parse(getAddress));

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    Fluttertoast.showToast(msg: request.body.toString());
    return jsonDecode(request.body)['data'];
  } else if (response.statusCode == 400) {
    Fluttertoast.showToast(msg: request.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: request.body.toString());
  } else if (response.statusCode == 412) {
    Fluttertoast.showToast(msg: request.body.toString());
  } else if (response.statusCode == 500) {
    Fluttertoast.showToast(msg: request.body.toString());
  } else if (response.statusCode == 401) {
    Fluttertoast.showToast(msg: request.body.toString());
  } else if (response.statusCode == 403) {
    Fluttertoast.showToast(msg: request.body.toString());
  }
  throw 'Exception';

  // print(userId);
}
