import 'package:flutter/material.dart';
import 'package:wrdesk_app/components/chamadoListView.dart';
import 'package:wrdesk_app/models/chamadoView.model.dart';
import 'package:wrdesk_app/services/ativos.service.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  Future<List<ChamadoViewModel>> _getAtivos() async {
    List<ChamadoViewModel> chamados = await AtivosService().getAtivos();
    return chamados;
  }

  @override
  Widget build(BuildContext context) {
    _getAtivos();

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
              future: _getAtivos(),
              key: UniqueKey(),
            ),
          )
        ],
      ),
    );
  }
}
