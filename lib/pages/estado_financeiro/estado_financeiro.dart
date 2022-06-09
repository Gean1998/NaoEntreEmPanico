import 'package:flutter/material.dart';
import 'package:nao_entre_em_panico/pages/estado_financeiro/components/card/card_ano.dart';
import 'package:nao_entre_em_panico/pages/estado_financeiro/components/card/card_dia.dart';
import 'package:nao_entre_em_panico/pages/estado_financeiro/components/card/card_mes.dart';

class EstadoFinanceiroView extends StatelessWidget {
  const EstadoFinanceiroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CardEstadoFinanceiroDia(),
        CardEstadoFinanceiroMes(),
        CardEstadoFinanceiroAno(),
      ],
    );
  }
}
