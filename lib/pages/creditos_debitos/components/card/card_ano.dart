import 'package:flutter/material.dart';

class CardCreditosDebitosAno extends StatelessWidget {
  const CardCreditosDebitosAno({Key? key}) : super(key: key);

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
              'Ano',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text('Crédito: R\$25'),
            Text('Débito: R\$1'),
          ],
        ),
      ),
    );
  }
}
