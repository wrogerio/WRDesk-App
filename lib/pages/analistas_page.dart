import 'package:flutter/material.dart';

class AnalistasPage extends StatefulWidget {
  const AnalistasPage({super.key});

  @override
  State<AnalistasPage> createState() => _AnalistasPageState();
}

class _AnalistasPageState extends State<AnalistasPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Analistas Page',
          style: TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}
