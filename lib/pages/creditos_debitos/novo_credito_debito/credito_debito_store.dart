import 'package:mobx/mobx.dart';
part 'credito_debito_store.g.dart';

class CreditoDebitoStore = _CreditoDebitoStoreBase with _$CreditoDebitoStore;

abstract class _CreditoDebitoStoreBase with Store {
  @observable
  int index = 0;

  @action
  void mudarIndex(int value) => index = value;
}
