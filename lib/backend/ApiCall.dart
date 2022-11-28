import 'package:http/http.dart' as http;
import 'package:watatrip/backend/Apidata.dart';

// what i did
// 1  paste the link in (quick type.io)-web
// 2 get json.decode data forme the -web
// 3 i pasted the data in Apidata.dart page
// 4 call http

getName() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/1');
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    // body convert to json
    var data = welcomeFromJson(response.body);

    return data.data;
  }
}
// 5 Go to Home page