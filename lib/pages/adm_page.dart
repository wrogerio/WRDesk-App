import 'package:flutter/material.dart';

class AdmPage extends StatefulWidget {
  const AdmPage({super.key});

  @override
  State<AdmPage> createState() => _AdmPageState();
}

class _AdmPageState extends State<AdmPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Adm Page',
          style: TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}
