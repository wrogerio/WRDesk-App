import 'package:flutter/material.dart';

class CanaisPage extends StatefulWidget {
  const CanaisPage({super.key});

  @override
  State<CanaisPage> createState() => _CanaisPageState();
}

class _CanaisPageState extends State<CanaisPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Canais Page',
          style: TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}
