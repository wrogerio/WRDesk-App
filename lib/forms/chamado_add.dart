import 'package:flutter/material.dart';
import 'package:wrdesk_app/models/chamado.model.dart';

class ChamadoAdd extends StatefulWidget {
  const ChamadoAdd({super.key});

  @override
  State<ChamadoAdd> createState() => _ChamadoAddState();
}

class _ChamadoAddState extends State<ChamadoAdd> {
  // controllers
  final assuntoController = TextEditingController(text: '');
  final solicitanteController = TextEditingController(text: '');
  final dataSoliciacaoController = TextEditingController(text: '');
  final prazoController = TextEditingController(text: '');
  final entregaController = TextEditingController(text: '');
  final descricaoController = TextEditingController(text: '');

  int canalId = 0;
  int statusId = 0;
  int analistaId = 0;
  int empresaId = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Chamado'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              TextField(
                controller: assuntoController,
                decoration: const InputDecoration(
                  labelText: 'Assunto',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: solicitanteController,
                decoration: const InputDecoration(
                  labelText: 'Solicitante',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: dataSoliciacaoController,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: 'Data Solicitação',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: prazoController,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: 'Prazo',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: entregaController,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: 'Entrega',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: descricaoController,
                keyboardType: TextInputType.multiline,
                minLines: 7,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: 'Descrição',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              DropdownButton(
                isExpanded: true,
                value: canalId,
                itemHeight: 80,
                items: const [
                  DropdownMenuItem(
                    child: Text('Selecione o canal'),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text('Telefone'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('E-Mail'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('WhatsApp'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Reunião'),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text('Teams'),
                    value: 5,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    canalId = value!;
                  });
                },
                hint: const Text('Selecione o canal'),
              ),
              const SizedBox(height: 8),
              DropdownButton(
                isExpanded: true,
                value: statusId,
                itemHeight: 80,
                items: const [
                  DropdownMenuItem(
                    child: Text('Selecione o Status'),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text('Novo'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Ação'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Feito'),
                    value: 4,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    statusId = value!;
                  });
                },
                hint: const Text('Selecione'),
              ),
              const SizedBox(height: 8),
              DropdownButton(
                isExpanded: true,
                value: analistaId,
                itemHeight: 80,
                items: const [
                  DropdownMenuItem(
                    child: Text('Selecione o Analista'),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text('Wellington'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Moisés'),
                    value: 2,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    analistaId = value!;
                  });
                },
                hint: const Text('Selecione'),
              ),
              const SizedBox(height: 8),
              DropdownButton(
                isExpanded: true,
                value: empresaId,
                itemHeight: 80,
                items: const [
                  DropdownMenuItem(
                    child: Text('Selecione a Empresa'),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text('Focus'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('FEI'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Cetek'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Contabilidade'),
                    value: 5,
                  ),
                  DropdownMenuItem(
                    child: Text('WRSoftware'),
                    value: 6,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    empresaId = value!;
                  });
                },
                hint: const Text('Selecione'),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    final chamado = ChamadoModel(
                      assunto: assuntoController.text,
                      solicitante: solicitanteController.text,
                      dtSolicitacao: dataSoliciacaoController.text,
                      prazo: prazoController.text,
                      dtEntrega: entregaController.text,
                      descricao: descricaoController.text,
                      canalId: canalId,
                      statusId: statusId,
                      analistaId: analistaId,
                      empresaId: empresaId,
                    );
                    // popup message
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Chamado'),
                          content: Text(chamado.toJson().toString()),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Salvar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
