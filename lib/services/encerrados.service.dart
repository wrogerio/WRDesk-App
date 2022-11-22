import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wrdesk_app/models/chamadoView.model.dart';
import 'package:wrdesk_app/services/constants.dart';

class EncerradosService {
  Future<List<ChamadoViewModel>> getEncerrados() async {
    String url = '$urlbase/encerrados';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> decodedJson = jsonDecode(response.body);
      final List<ChamadoViewModel> encerrados = decodedJson.map((e) => ChamadoViewModel.fromJson(e)).toList();
      return encerrados;
    } else {
      throw Exception('Erro ao carregar os encerrados');
    }
  }
}
