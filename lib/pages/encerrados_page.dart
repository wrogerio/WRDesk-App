import 'package:flutter/material.dart';

class EncerradosPage extends StatefulWidget {
  const EncerradosPage({super.key});

  @override
  State<EncerradosPage> createState() => _EncerradosPageState();
}

class _EncerradosPageState extends State<EncerradosPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Encerrados Page',
          style: TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}
