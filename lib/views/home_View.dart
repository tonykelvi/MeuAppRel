import 'package:flutter/material.dart';
import 'package:meuapp/views/tarefas_View.dart';
import 'package:meuapp/views/anual_View.dart';
import 'package:meuapp/views/login_View.dart';
import 'package:meuapp/views/mes_View.dart';
import 'package:meuapp/views/perfil_View.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  final String title = 'Home Page';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Anual'),
    Text('Tarefas'),
    Text('Perfil'),
    Text('Compartilhar'),
  ];

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AnualView()));
          break;
        }
      case 1:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TarefasView()));

          break;
        }
      case 2:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PerfilView()));
          break;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    List itens = List<String>.generate(1, (index) => 'Item$index');

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
        children: <Widget>[
          SizedBox(
            width: 128,
            height: 400,
            child: Image.asset("assets/campo.jpg"),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Text('Perfil'),
            ),
            ListTile(
              title: const Text('Ajuda'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Enviar opinião'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Configurações'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Relatório Mês'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MesView()));
              },
            ),
            ListTile(
              title: const Text('Fazer Login'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginView()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('App Meu Relatorio'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart_outlined, color: Colors.indigo),
            label: 'Anual',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_task, color: Colors.indigo),
            label: 'Tarefas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.indigo),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share, color: Colors.indigo),
            label: 'Compartilhar',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}