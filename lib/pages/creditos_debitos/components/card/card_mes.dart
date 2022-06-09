import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardCreditosDebitosMes extends StatelessWidget {
  const CardCreditosDebitosMes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              'Mês',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Observer(
              builder: (_) {
                return Text('Crédito: R\$25');
              },
            ),
            Observer(
              builder: (_) {
                return Text('Débito: R\$2');
              },
            ),
          ],
        ),
      ),
    );
  }
}
