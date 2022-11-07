// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefa_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Tarefa on _Tarefa, Store {
  late final _$situacaoAtom = Atom(name: '_Tarefa.situacao', context: context);

  @override
  bool get situacao {
    _$situacaoAtom.reportRead();
    return super.situacao;
  }

  @override
  set situacao(bool value) {
    _$situacaoAtom.reportWrite(value, super.situacao, () {
      super.situacao = value;
    });
  }

  late final _$_TarefaActionController =
      ActionController(name: '_Tarefa', context: context);

  @override
  dynamic setSituacao(bool situacao) {
    final _$actionInfo =
        _$_TarefaActionController.startAction(name: '_Tarefa.setSituacao');
    try {
      return super.setSituacao(situacao);
    } finally {
      _$_TarefaActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
situacao: ${situacao}
    ''';
  }
}
