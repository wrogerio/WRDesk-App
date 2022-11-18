import 'package:flutter/material.dart';
import 'package:wrdesk_app/drawer/header_drawer.dart';
import 'package:wrdesk_app/pages/adm_page.dart';
import 'package:wrdesk_app/pages/analistas_page.dart';
import 'package:wrdesk_app/pages/canais_page.dart';
import 'package:wrdesk_app/pages/empresas_page.dart';
import 'package:wrdesk_app/pages/encerrados_page.dart';
import 'package:wrdesk_app/pages/status_page.dart';
import 'package:wrdesk_app/pages/tasks_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _initialIndex = DrawerSectionsEnum.tasks.index;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      TasksPage(),
      AdmPage(),
      EncerradosPage(),
      EmpresasPage(),
      CanaisPage(),
      AnalistasPage(),
      StatusPage(),
    ];
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
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                HeaderDrawer(),
                ListDrawer(),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: telas[_initialIndex],
      ),
      //bottomNavigationBar: BottomNavigationContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black54,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget ListDrawer() {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListDrawerItem(0, "Tasks", "assets/images/cog.png"),
          ListDrawerItem(1, "Adm", "assets/images/adm.png"),
          ListDrawerItem(2, "Encerrados", "assets/images/done.png"),
          ListDrawerItem(3, "Empresas", "assets/images/company.png"),
          ListDrawerItem(4, "Canais", "assets/images/tv.png"),
          ListDrawerItem(5, "Analistas", "assets/images/users.png"),
          ListDrawerItem(6, "Status", "assets/images/clock.png"),
        ],
      ),
    );
  }

  Widget ListDrawerItem(int index, String title, String iconPath) {
    return Container(
      margin: EdgeInsets.only(bottom: 4),
      child: ListTile(
        tileColor: Colors.grey[200],
        leading: ImageIcon(AssetImage(iconPath), size: 22),
        title: Text(title, style: TextStyle(fontSize: 18)),
        onTap: () {
          setState(() {
            _initialIndex = index;
          });
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget BottomNavigationContent() {
    return Container(
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
        iconSize: 22,
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
        ],
      ),
    );
  }
}

enum DrawerSectionsEnum {
  tasks,
  adm,
  encerrados,
  empresas,
  analistas,
  canais,
  status,
}
