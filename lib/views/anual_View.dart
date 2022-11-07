import 'package:flutter/material.dart';

class AnualView extends StatefulWidget {
  const AnualView({Key? key}) : super(key: key);
  final String title = 'AnualPage';

  @override
  State<AnualView> createState() => _AnualViewState();
}

class _AnualViewState extends State<AnualView> {
  List itens = List<String>.generate(1, (index) => 'Item$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatório anual de campo'),
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 20),
          itemCount: itens.length,
          itemBuilder: (BuildContext context, int index) {
            return DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Mês',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Horas',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Pub',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Rev.',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Est.',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Set')),
                    DataCell(Text('72')),
                    DataCell(Text('32')),
                    DataCell(Text('24')),
                    DataCell(Text('3')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Out')),
                    DataCell(Text('67')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('3')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Nov')),
                    DataCell(Text('66')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('3')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Dez')),
                    DataCell(Text('77')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('3')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Jan')),
                    DataCell(Text('80')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('3')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Fev')),
                    DataCell(Text('59')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('3')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Mar')),
                    DataCell(Text('70')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('4')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Abr')),
                    DataCell(Text('71')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('4')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Mai')),
                    DataCell(Text('82')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('5')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Jun')),
                    DataCell(Text('54')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('5')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Jul')),
                    DataCell(Text('73')),
                    DataCell(Text('16')),
                    DataCell(Text('19')),
                    DataCell(Text('5')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Ago')), //Mês
                    DataCell(Text('70')), //Hora
                    DataCell(Text('18')), //Publicações
                    DataCell(Text('21')), //Revisitas
                    DataCell(Text('5')), //Estudos
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}