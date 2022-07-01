import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:nao_entre_em_panico/pages/visao_geral_gastos/visao_geral_gastos_store.dart';

class CardVisaoGeralDia extends StatelessWidget {
  const CardVisaoGeralDia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final store = GetIt.I.get<VisaoGeralGastosStore>();

    return Material(
      elevation: 1.5,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: 300.0,
        height: 100.0,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Dia',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
            Observer(
              builder: (_) {
                return Text('Hoje: R\$${store.valorDia}');
              },
            ),
            Observer(
              builder: (_) {
                return Text('Ontem: R\$${store.valorDiaAnterior}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
