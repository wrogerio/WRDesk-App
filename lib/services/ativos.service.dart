import 'dart:convert';

import 'package:wrdesk_app/models/chamado.model.dart';
import 'package:wrdesk_app/models/chamadoView.model.dart';
import 'package:wrdesk_app/services/constants.dart';
import 'package:http/http.dart' as http;

class AtivosService {
  Future<List<ChamadoViewModel>> getAtivos() async {
    String url = '$urlbase/ativos';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> decodedJson = jsonDecode(response.body);
      final List<ChamadoViewModel> ativos = decodedJson.map((e) => ChamadoViewModel.fromJson(e)).toList();
      return ativos;
    } else {
      throw Exception('Erro ao carregar os ativos');
    }
  }

  Future<bool> postChamado(ChamadoModel chamado) async {
    String url = '$urlbase/ativos';

    var body = jsonEncode(chamado.toJson());

    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: body,
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Erro ao criar o chamado');
    }
  }
}
