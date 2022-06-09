import 'package:flutter/material.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/components/card/card_ano.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/components/card/card_dia.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/components/card/card_mes.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/novo_credito_debito/novo_credito_debito.dart';

class CreditosDebitosView extends StatelessWidget {
  const CreditosDebitosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const NovoCreditoDebitoView()),
          );
        },
        child: const Icon(Icons.add, size: 32.0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CardCreditosDebitosDia(),
            CardCreditosDebitosMes(),
            CardCreditosDebitosAno(),
          ],
        ),
      ),
    );
  }
}
