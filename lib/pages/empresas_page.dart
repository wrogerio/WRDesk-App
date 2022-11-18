import 'package:flutter/material.dart';

class EmpresasPage extends StatefulWidget {
  const EmpresasPage({super.key});

  @override
  State<EmpresasPage> createState() => _EmpresasPageState();
}

class _EmpresasPageState extends State<EmpresasPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Empresas Page',
          style: TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}
