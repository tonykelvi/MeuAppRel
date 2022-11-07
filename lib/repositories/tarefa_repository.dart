
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import '../models/tarefa_model.dart';

class TarefaRepository {

  Future<Tarefa?> salvarTarefa(Tarefa tarefa) async {
    final parser = ParseObject('Tarefa')
      ..set('titulo', tarefa.titulo)
      ..set('situacao', tarefa.situacao);

    if (tarefa.id.isNotEmpty){
      parser.objectId = tarefa.id;
    }

    final ParseResponse response = await parser.save();
    if (response.success && response.result != null) {
      final object = response.result as ParseObject;
      tarefa.id = object.objectId!;
      return tarefa;
    }
    return null;
  }

  Future<bool> excluirTarefa(Tarefa tarefa) async {
    var parser = ParseObject('Tarefa')..objectId = tarefa.id;
    final ParseResponse response = await parser.delete();
    if (response.success) {
      return true;
    }
    return false;
  }

  Future<List<Tarefa>> listarTarefas() async {

    QueryBuilder<ParseObject> queryTarefa = QueryBuilder<ParseObject>(ParseObject('Tarefa'));
    final ParseResponse apiResponse = await queryTarefa.query();

    List<Tarefa> listaDeTarefas = [];
    if (apiResponse.success && apiResponse.results != null) {

      for (ParseObject object in apiResponse.results!){
        final varId = object.objectId;
        final varTitulo = object.get<String>('titulo')!;
        final varSituacao =  object.get<bool>('situacao')!;

        Tarefa tarefa = Tarefa(varTitulo);
        tarefa.id = varId!;
        tarefa.situacao = varSituacao;
        listaDeTarefas.add(tarefa);
      }
      return listaDeTarefas;
    } else {
      return [];
    }
  }
}