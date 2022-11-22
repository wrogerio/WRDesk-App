import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wrdesk_app/models/chamadoView.model.dart';
import 'package:wrdesk_app/services/constants.dart';

class AdmService {
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

  // post chamado

}
