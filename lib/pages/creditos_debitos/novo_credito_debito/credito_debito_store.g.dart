// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credito_debito_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreditoDebitoStore on _CreditoDebitoStoreBase, Store {
  late final _$indexAtom =
      Atom(name: '_CreditoDebitoStoreBase.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$controllerValorAtom =
      Atom(name: '_CreditoDebitoStoreBase.controllerValor', context: context);

  @override
  TextEditingController get controllerValor {
    _$controllerValorAtom.reportRead();
    return super.controllerValor;
  }

  @override
  set controllerValor(TextEditingController value) {
    _$controllerValorAtom.reportWrite(value, super.controllerValor, () {
      super.controllerValor = value;
    });
  }

  late final _$controllerDescricaoAtom = Atom(
      name: '_CreditoDebitoStoreBase.controllerDescricao', context: context);

  @override
  TextEditingController get controllerDescricao {
    _$controllerDescricaoAtom.reportRead();
    return super.controllerDescricao;
  }

  @override
  set controllerDescricao(TextEditingController value) {
    _$controllerDescricaoAtom.reportWrite(value, super.controllerDescricao, () {
      super.controllerDescricao = value;
    });
  }

  late final _$idAtom =
      Atom(name: '_CreditoDebitoStoreBase.id', context: context);

  @override
  String? get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String? value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$descricaoAtom =
      Atom(name: '_CreditoDebitoStoreBase.descricao', context: context);

  @override
  String? get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String? value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  late final _$valorAtom =
      Atom(name: '_CreditoDebitoStoreBase.valor', context: context);

  @override
  double? get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(double? value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  late final _$tipoAtom =
      Atom(name: '_CreditoDebitoStoreBase.tipo', context: context);

  @override
  String? get tipo {
    _$tipoAtom.reportRead();
    return super.tipo;
  }

  @override
  set tipo(String? value) {
    _$tipoAtom.reportWrite(value, super.tipo, () {
      super.tipo = value;
    });
  }

  late final _$dataAtom =
      Atom(name: '_CreditoDebitoStoreBase.data', context: context);

  @override
  DateTime? get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(DateTime? value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$salvandoAtom =
      Atom(name: '_CreditoDebitoStoreBase.salvando', context: context);

  @override
  bool get salvando {
    _$salvandoAtom.reportRead();
    return super.salvando;
  }

  @override
  set salvando(bool value) {
    _$salvandoAtom.reportWrite(value, super.salvando, () {
      super.salvando = value;
    });
  }

  late final _$salvarAsyncAction =
      AsyncAction('_CreditoDebitoStoreBase.salvar', context: context);

  @override
  Future<void> salvar() {
    return _$salvarAsyncAction.run(() => super.salvar());
  }

  late final _$_CreditoDebitoStoreBaseActionController =
      ActionController(name: '_CreditoDebitoStoreBase', context: context);

  @override
  void mudarIndex(int value) {
    final _$actionInfo = _$_CreditoDebitoStoreBaseActionController.startAction(
        name: '_CreditoDebitoStoreBase.mudarIndex');
    try {
      return super.mudarIndex(value);
    } finally {
      _$_CreditoDebitoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index},
controllerValor: ${controllerValor},
controllerDescricao: ${controllerDescricao},
id: ${id},
descricao: ${descricao},
valor: ${valor},
tipo: ${tipo},
data: ${data},
salvando: ${salvando}
    ''';
  }
}
