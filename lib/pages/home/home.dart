import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../creditos_debitos/creditos_debitos.dart';
import '../estado_financeiro/estado_financeiro.dart';
import '../visao_geral_gastos/visao_geral_gastos.dart';
import 'home_store.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I.get<HomeStore>();
    final telas = <Widget>[
      VisaoGeralGastosView(),
      CreditosDebitosView(),
      EstadoFinanceiroView(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: ((context) => Text(store.textoAppBar()))),
        centerTitle: true,
      ),
      body: Observer(
        builder: ((context) => telas.elementAt(store.index)),
      ),
      bottomNavigationBar: Observer(
        builder: (context) => BottomNavigationBar(
          currentIndex: store.index,
          onTap: store.mudarIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.savings),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
