// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo.png', height: 24),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black54,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 7,
            blurRadius: 15,
            offset: const Offset(0, 10),
          ),
        ]),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          elevation: 10,
          unselectedItemColor: Colors.black,
          fixedColor: Colors.black,
          iconSize: 25,
          selectedFontSize: 18,
          unselectedFontSize: 18,
          currentIndex: _initialIndex,
          onTap: (value) {
            setState(() {
              _initialIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/cog.png')),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/adm.png')),
              label: 'Adm',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/bin.png')),
              label: 'Encerrados',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/database.png')),
              label: 'Cadastros',
            ),
          ],
        ),
      ),
    );
  }
}
