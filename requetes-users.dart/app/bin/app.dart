import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> arguments) async {
  await getUsersInfos();
}


Future getUsersInfos() async {

  try {

    var url = 'https://jsonplaceholder.typicode.com/users';
    var reponse = await http.get(url);
    List body_result = json.decode(reponse.body);
  if (reponse.statusCode == 200) {
    
    var ville = 'Gwenborough';
      
    var r = body_result.where((element) => element['address']['city'] == ville).toList();
    r.forEach((elements) {
      print("je m'appelle ${elements['name']} je vie à ${elements['address']['city']}");
    });
    
  }

  } catch (e) {
    print('Page not found try again $e');
  }

}