import 'package:http/http.dart' as http;
import 'dart:convert';

class NetWorkHelper {

  NetWorkHelper(this.url);
  
  final String url;

  Future getData() async {
    var link = Uri.parse(url);
    http.Response response = await http.get(link);

    if (response.statusCode == 200) {

      var data = jsonDecode(response.body);
      return data;
      
    }else {
      print(response.statusCode);
    }
  }
  
}