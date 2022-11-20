import 'package:flutter/material.dart';
import 'package:wrdesk_app/components/chamadoListView.dart';
import 'package:wrdesk_app/models/chamadoView.model.dart';
import 'package:wrdesk_app/services/ativos.service.dart';

class AdmPage extends StatefulWidget {
  const AdmPage({super.key});

  @override
  State<AdmPage> createState() => _AdmPageState();
}

class _AdmPageState extends State<AdmPage> {
  Future<List<ChamadoViewModel>> _getAdministrativos() async {
    List<ChamadoViewModel> chamados = await AtivosService().getAdministrativos();
    return chamados;
  }

  @override
  Widget build(BuildContext context) {
    _getAdministrativos();
    return Container(
      child: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<ChamadoViewModel>>(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ChamadosListView(snapshot.data!);
                } else if (snapshot.hasError) {
                  return Text('Erro ao carregar os dados');
                }
                return Center(child: CircularProgressIndicator());
              },
              future: _getAdministrativos(),
              key: UniqueKey(),
            ),
          )
        ],
      ),
    );
  }
}
