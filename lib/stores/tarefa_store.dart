import 'package:mobx/mobx.dart';

import '../models/tarefa_model.dart';
import '../repositories/tarefa_repository.dart';

//flutter pub run build_runner build
part 'tarefa_store.g.dart';

class TarefaStore = _TarefaStore with _$TarefaStore;

abstract class _TarefaStore with Store {

  TarefaRepository repository = TarefaRepository();

  _TarefaStore(){
    carregarTarefas();
  }

  @observable
  ObservableList<Tarefa> listaDeTarefas = ObservableList();

  @observable
  ObservableFuture<List<Tarefa>> obsFuture = ObservableFuture.value([]);

  @computed
  bool get isCarregando {
    return obsFuture.status == FutureStatus.pending;
  }

  @action
  Future<void> carregarTarefas() async {
    final futureList = repository.listarTarefas();
    obsFuture = ObservableFuture(futureList);
    final tarefas = await futureList;
    listaDeTarefas.addAll(tarefas);
  }

  @action
  Future<void> salvarTarefa(String titulo) async {
    final tarefa = await repository.salvarTarefa(Tarefa(titulo));
    if (tarefa != null) {
      listaDeTarefas.add(tarefa);
    }
  }

  @action
  Future<void> excluirTarefa(Tarefa tarefa) async {
    final foiExcluido = await repository.excluirTarefa(tarefa);
    if (foiExcluido) {
      listaDeTarefas.removeWhere((element) => element == tarefa);
    }
  }

  void atualizar(Tarefa tarefa) {
    repository.salvarTarefa(tarefa);
  }
}


