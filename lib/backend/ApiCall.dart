import 'package:http/http.dart' as http;

import 'Apidata.dart';

getName() async {
  var client = http.Client();

  var uri = Uri.parse('https://appsara.in/watartrip/?id=1');
  var response = await client.get(uri);
  if (response.statusCode == 200) {
    print(response.body);
    var data = apidataFromJson(response.body);
    print(data.fb);

    return data;
  }
}
