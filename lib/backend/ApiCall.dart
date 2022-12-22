import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:watatrip/backend/Apidata.dart';

getId1() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/1');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}

getId2() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/2');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}

getId3() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/3');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}

getId4() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/4');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}

getId5() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/5');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}

getId6() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/6');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}

getId7() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/7');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}

getId8() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/8');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}
