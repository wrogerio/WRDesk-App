import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrdesk_app/models/chamadoView.model.dart';

Widget ChamadosListView(List<ChamadoViewModel> chamados) {
  return ListView.builder(
    itemCount: chamados.length,
    itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.fromLTRB(5, 7, 5, 0),
        child: Card(
          elevation: 5,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chamados[index].assunto,
                          style: GoogleFonts.ubuntu(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${chamados[index].razaosocial} (${chamados[index].solicitante})",
                          style: GoogleFonts.ubuntu(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    getUser(chamados[index].analista)
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 5),
                        Text(
                          chamados[index].dtsolicitacao,
                          style: GoogleFonts.ubuntu(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Colors.red,
                        ),
                        SizedBox(width: 5),
                        Text(
                          chamados[index].prazo,
                          style: GoogleFonts.ubuntu(
                            fontSize: 16,
                            color: Colors.red[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  chamados[index].descricao,
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      chamados[index].status,
                      style: GoogleFonts.ubuntu(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit_note_outlined, color: Colors.red[700], size: 30),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
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
      color: status == "Ação" ? Colors.green : Colors.black,
    ),
  );
}

Widget getUser(String user) {
  if (user == "Wellington") {
    // create image rounded
    return CircleAvatar(
      backgroundImage: Image.asset("assets/users/gerio_user.png").image,
      radius: 25,
    );
  } else {
    return CircleAvatar(
      backgroundImage: Image.asset("assets/users/moiza_user.png").image,
      radius: 25,
    );
  }
}
