import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(List<String> args) async {
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
  var res = await http.get(url);
  
  if (res.statusCode == 200) {
    var dataJson = convert.jsonDecode(res.body);
    print(dataJson['items'][0]['volumeInfo']['title']);
    for (var book in dataJson['items']) {
      print(book['volumeInfo']['title']);
    }
  }
}
