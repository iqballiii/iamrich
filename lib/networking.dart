import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/');
  var urlPost =
      Uri.parse("http://dev.eosinfotech.com:5000/auth/login/validateotp");
  Future<dynamic> getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else
      print(response.statusCode);
  }

  Future<dynamic> postData(String loginID, String pass, String token) async {
    http.Response response = await http.post(
      urlPost,
      headers: {'x-access-token': token},
      body: jsonEncode(
        {
          'otp': 8888,
        },
      ),
    );
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else
      print(response.statusCode);
  }
}
