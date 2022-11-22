import 'package:flutter/material.dart';
import 'package:wrdesk_app/components/chamadoListView.dart';
import 'package:wrdesk_app/models/chamadoView.model.dart';
import 'package:wrdesk_app/services/encerrados.service.dart';

class EncerradosPage extends StatefulWidget {
  const EncerradosPage({super.key});

  @override
  State<EncerradosPage> createState() => _EncerradosPageState();
}

class _EncerradosPageState extends State<EncerradosPage> {
  Future<List<ChamadoViewModel>> _getEncerrados() async {
    List<ChamadoViewModel> chamados = await EncerradosService().getEncerrados();
    return chamados;
  }

  @override
  Widget build(BuildContext context) {
    _getEncerrados();

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[400],
      ),
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
              future: _getEncerrados(),
              key: UniqueKey(),
            ),
          )
        ],
      ),
    );
  }
}
