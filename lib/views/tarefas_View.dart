import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../models/tarefa_model.dart';
import '../stores/tarefa_store.dart';


class TarefasView extends StatelessWidget {
  final String title = 'Tarefas';
  TarefaStore tarefaStore = TarefaStore();
  final txtTarefaController = TextEditingController();

  TarefasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void adicionarTarefa() async {
      if (txtTarefaController.text.trim().isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Informe a tarefa..."),
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }
      tarefaStore.salvarTarefa(txtTarefaController.text);
      txtTarefaController.clear();
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Observer(
        builder: (_) {
          if (tarefaStore.isCarregando) {
            return const Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (tarefaStore.listaDeTarefas.isEmpty) {
            return const Center(
              child: Text("Sem tarefas.",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.only(top: 10.0),
            itemCount: tarefaStore.listaDeTarefas.length,
            itemBuilder: (context, index) {
              Tarefa tarefa = tarefaStore.listaDeTarefas[index];

              return Observer(
                builder: (_) {
                  return ListTile(
                    title: Text(tarefa.titulo),
                    leading: CircleAvatar(
                      backgroundColor: tarefa.situacao ? Colors.green : Colors
                          .blue,
                      foregroundColor: Colors.white,
                      child: Icon(tarefa.situacao ? Icons.check : Icons.error),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                            value: tarefa.situacao,
                            onChanged: (situacao) async {
                              tarefa.setSituacao(situacao!);
                              tarefaStore.atualizar(tarefa);
                            }),
                        IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.blue,
                          ),
                          onPressed: () async {
                            tarefaStore.excluirTarefa(tarefa);
                          },
                        )
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 40),
        onPressed: () async {
          showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  title: const Text("Cadastrar"),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        controller: txtTarefaController,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancelar'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            adicionarTarefa();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    )
                  ],
                );
              });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blueGrey,
        child: SizedBox(height: 50),
      ),
    );
  }
}
