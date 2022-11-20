import 'package:flutter/material.dart';
import 'package:wrdesk_app/models/chamadoView.model.dart';

Widget ChamadosListView(List<ChamadoViewModel> chamados) {
  return ListView.builder(
    itemCount: chamados.length,
    itemBuilder: (context, index) {
      return Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chamados[index].assunto,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  getColor(chamados[index].status),
                ],
              ),
              SizedBox(height: 10),
              Text(
                chamados[index].descricao,
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

Widget getColor(String status) {
  return Text(
    status,
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: status == "Andamento" ? Colors.green : Colors.black,
    ),
  );
}
