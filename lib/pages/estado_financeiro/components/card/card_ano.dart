import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardEstadoFinanceiroAno extends StatelessWidget {
  const CardEstadoFinanceiroAno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataHoje = DateTime.now();
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
            Observer(
              builder: (_) {
                return Text('${dataHoje.year}: Superávit');
              },
            ),
            Observer(
              builder: (_) {
                return Text('${dataHoje.year - 1}: Superávit');
              },
            ),
          ],
        ),
      ),
    );
  }
}
