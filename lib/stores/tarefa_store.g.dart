// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefa_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TarefaStore on _TarefaStore, Store {
  Computed<bool>? _$isCarregandoComputed;

  @override
  bool get isCarregando =>
      (_$isCarregandoComputed ??= Computed<bool>(() => super.isCarregando,
              name: '_TarefaStore.isCarregando'))
          .value;

  late final _$listaDeTarefasAtom =
      Atom(name: '_TarefaStore.listaDeTarefas', context: context);

  @override
  ObservableList<Tarefa> get listaDeTarefas {
    _$listaDeTarefasAtom.reportRead();
    return super.listaDeTarefas;
  }

  @override
  set listaDeTarefas(ObservableList<Tarefa> value) {
    _$listaDeTarefasAtom.reportWrite(value, super.listaDeTarefas, () {
      super.listaDeTarefas = value;
    });
  }

  late final _$obsFutureAtom =
      Atom(name: '_TarefaStore.obsFuture', context: context);

  @override
  ObservableFuture<List<Tarefa>> get obsFuture {
    _$obsFutureAtom.reportRead();
    return super.obsFuture;
  }

  @override
  set obsFuture(ObservableFuture<List<Tarefa>> value) {
    _$obsFutureAtom.reportWrite(value, super.obsFuture, () {
      super.obsFuture = value;
    });
  }

  late final _$carregarTarefasAsyncAction =
      AsyncAction('_TarefaStore.carregarTarefas', context: context);

  @override
  Future<void> carregarTarefas() {
    return _$carregarTarefasAsyncAction.run(() => super.carregarTarefas());
  }

  late final _$salvarTarefaAsyncAction =
      AsyncAction('_TarefaStore.salvarTarefa', context: context);

  @override
  Future<void> salvarTarefa(String titulo) {
    return _$salvarTarefaAsyncAction.run(() => super.salvarTarefa(titulo));
  }

  late final _$excluirTarefaAsyncAction =
      AsyncAction('_TarefaStore.excluirTarefa', context: context);

  @override
  Future<void> excluirTarefa(Tarefa tarefa) {
    return _$excluirTarefaAsyncAction.run(() => super.excluirTarefa(tarefa));
  }

  @override
  String toString() {
    return '''
listaDeTarefas: ${listaDeTarefas},
obsFuture: ${obsFuture},
isCarregando: ${isCarregando}
    ''';
  }
}
