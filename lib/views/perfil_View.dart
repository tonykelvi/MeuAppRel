import 'package:flutter/material.dart';

class PerfilView extends StatefulWidget {
  const PerfilView({Key? key}) : super(key: key);
  final String title = 'Selecionar Perfil';

  @override
  State<PerfilView> createState() => _PerfilViewState();
}

enum Perfil { Publicador, PioneiroAuxiliar, PioneiroRegular }

class _PerfilViewState extends State<PerfilView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                margin: EdgeInsets.only(bottom: 40),
                child: const Text(
                  'Perfil',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Radio(
                        hoverColor: Colors.blue,
                        activeColor: Colors.red,
                        value: Perfil.Publicador,
                        groupValue: Perfil,
                        onChanged: (Perfil) {
                          print(Perfil);
                        }),
                  ),
                  const Text('Publicador (10 Horas)'),
                ],
              ),
              Row(
                children: [
                  Radio(
                      hoverColor: Colors.blue,
                      activeColor: Colors.red,
                      value: Perfil.PioneiroAuxiliar,
                      groupValue: Perfil,
                      onChanged: (Perfil) {
                        print(Perfil);
                      }),
                  const Text('Pioneiro Auxiliar (50 Horas)'),
                ],
              ),
              Row(
                children: [
                  Radio(
                      hoverColor: Colors.blue,
                      activeColor: Colors.red,
                      value: Perfil.PioneiroRegular,
                      groupValue: Perfil,
                      onChanged: (Perfil) {
                        print(Perfil);
                      }),
                  const Text('Pioneiro Regular (70 Horas)'),
                ],
              ),
              const TextField(
                minLines: 2,
                maxLines: 6,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Observações'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancelar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}