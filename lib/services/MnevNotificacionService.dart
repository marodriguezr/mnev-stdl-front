import 'dart:convert';

import 'package:http/http.dart' as http;

class MnevNotificacionService {
  static null  findAllNotificacionesByCedula(
      {required String cedula}) async {
    var response = await http.get(
        Uri.parse('http://localhost:8088/api/notificaciones?cedula=$cedula'));
    Map data = jsonDecode(response.body);
    print(data);
    return null;
  }
}
