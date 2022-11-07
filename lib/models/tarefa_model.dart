import 'package:mobx/mobx.dart';

//flutter pub run build_runner build
part 'tarefa_model.g.dart';

class Tarefa = _Tarefa with _$Tarefa;

abstract class _Tarefa with Store {

  _Tarefa(this.titulo);

  String id = '';
  String titulo = '';

  @observable
  bool situacao = false;

  @action
  setSituacao(bool situacao){
    this.situacao = situacao;
  }
}

