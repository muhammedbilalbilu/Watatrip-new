import 'package:http/http.dart' as http;
import 'package:watatrip/backend/Apidata.dart';

getName() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/1');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}
