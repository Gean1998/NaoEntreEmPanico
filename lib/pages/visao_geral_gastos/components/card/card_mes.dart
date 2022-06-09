import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardVisaoGeralMes extends StatelessWidget {
  const CardVisaoGeralMes({Key? key}) : super(key: key);

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
              'Mês',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
            Observer(
              builder: (_) {
                return Text('Jun: R\$0');
              },
            ),
            Observer(
              builder: (_) {
                return Text('Mai: R\$0');
              },
            ),
          ],
        ),
      ),
    );
  }
}
