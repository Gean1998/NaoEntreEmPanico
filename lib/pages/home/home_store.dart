import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  int index = 0;

  @action
  void mudarIndex(int value) => index = value;

  String textoAppBar() {
    switch (index) {
      case 0:
        return 'Visão Geral De Gastos';
      case 1:
        return 'Créditos e Débitos';
      case 2:
        return 'Estado Financeiro';
      default:
        return 'Não Entre Em Pânico';
    }
  }
}
