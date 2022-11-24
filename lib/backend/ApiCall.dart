import 'package:http/http.dart' as http;
import 'package:watatrip/flutter_flow/flutter_flow_util.dart';

import 'Apidata.dart';

// 1 for changing data go to details page - widget name ( MobileScreenLayout )
getName() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/1');
  var response = await client.get(uri);
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = welcomeFromJson(response.body);
    return data.data;
  }
}
