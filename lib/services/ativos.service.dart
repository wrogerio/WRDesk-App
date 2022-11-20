import 'dart:convert';

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

  Future<List<ChamadoViewModel>> getAdministrativos() async {
    String url = '$urlbase/administrativos';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> decodedJson = jsonDecode(response.body);
      final List<ChamadoViewModel> administrativos = decodedJson.map((e) => ChamadoViewModel.fromJson(e)).toList();
      return administrativos;
    } else {
      throw Exception('Erro ao carregar os administrativos');
    }
  }
}
