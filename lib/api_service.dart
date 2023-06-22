import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ServisAPI {
  //lokasi api json file
  static const String _baseUrl =
      'https://4c0b-114-10-19-255.ngrok-free.app/api/';

  //untuk mengambil value yg adanya nanti, (terhalang jaringan, load time /saat ini value blm ada)maka pakai future
  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.parse('$_baseUrl/photos'));

    //karena menggunakan http, maka kita tangkap saja statuscode dari http- nya
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Gagal Load');
    }
  }
}
