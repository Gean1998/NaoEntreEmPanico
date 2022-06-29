import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/models/creditos_debitos_model.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/repositorio/creditos_debitos_repositorio.dart';
import 'package:uuid/uuid.dart';
part 'credito_debito_store.g.dart';

class CreditoDebitoStore = _CreditoDebitoStoreBase with _$CreditoDebitoStore;

abstract class _CreditoDebitoStoreBase with Store {
  final repositorio = CreditosDebitosRepositorio();

  @observable
  int index = 0;

  @action
  void mudarIndex(int value) => index = value;

  _CreditoDebitoStoreBase() {
    id = const Uuid().v4();
    data = DateTime.now();
    tipo = index == 0 ? 'Crédito' : 'Débito';

    controllerValor.addListener(() {
      if (controllerValor.text.isNotEmpty) {
        valor = double.tryParse(controllerValor.text);
      }
    });

    controllerDescricao.addListener(() {
      descricao = controllerDescricao.text;
    });
  }

  @observable
  TextEditingController controllerValor = TextEditingController();

  @observable
  TextEditingController controllerDescricao = TextEditingController();

  @observable
  String? id;

  @observable
  String? descricao;

  @observable
  double? valor;

  @observable
  String? tipo;

  @observable
  DateTime? data;

  @observable
  bool salvando = false;

  @action
  Future<void> salvar() async {
    salvando = true;
    await repositorio.salvarCreditoDebito(toModel());
    salvando = false;
  }

  CreditosDebitosModel toModel() => CreditosDebitosModel(
        id: id,
        data: data,
        valor: valor,
        tipo: tipo,
        descricao: descricao,
      );
}
