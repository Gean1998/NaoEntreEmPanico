import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:nao_entre_em_panico/app_store.dart';
import 'package:nao_entre_em_panico/pages/visao_geral_gastos/components/card/card_ano.dart';
import 'package:nao_entre_em_panico/pages/visao_geral_gastos/components/card/card_dia.dart';
import 'package:nao_entre_em_panico/pages/visao_geral_gastos/components/card/card_mes.dart';

class VisaoGeralGastos extends StatefulWidget {
  const VisaoGeralGastos({Key? key}) : super(key: key);

  @override
  State<VisaoGeralGastos> createState() => _VisaoGeralGastosState();
}

class _VisaoGeralGastosState extends State<VisaoGeralGastos> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appStore = GetIt.I.get<AppStore>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Visibility(
          visible: !_tecladoEstaVisivel(),
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => SimpleDialog(
                  title: const Text('Definir o nome de usuário(a)'),
                  titleTextStyle:
                      const TextStyle(fontSize: 16.0, color: Colors.black38),
                  contentPadding: const EdgeInsets.all(16.0),
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Definir nome...',
                      ),
                      initialValue: appStore.nome,
                      onChanged: (String? value) {
                        appStore.nome = value ?? '';
                      },
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        if (appStore.nome.trim().isNotEmpty) {
                          appStore.definirNome(appStore.nome);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('O nome não pode estar vazio!'),
                            ),
                          );
                        }
                      },
                      child: const Text('Salvar'),
                    ),
                  ],
                ),
              );
            },
            child: Observer(
              builder: (_) {
                return Text(
                    appStore.nome.isEmpty ? 'Digite seu nome' : appStore.nome);
              },
            ),
          ),
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Crédito atual'),
            ),
            Observer(
              builder: (_) {
                return Text(
                  'R\$20',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: 20 > 0 ? Colors.green : Colors.red,
                  ),
                );
              },
            ),
          ],
        ),
        _linha(),
        const CardVisaoGeralDia(),
        const CardVisaoGeralMes(),
        const CardVisaoGeralAno(),
      ],
    );
  }

  Widget _linha() {
    return Container(
      height: 1.0,
      width: double.maxFinite,
      color: Colors.black,
      margin: const EdgeInsets.symmetric(horizontal: 32.0),
    );
  }

  bool _tecladoEstaVisivel() {
    return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
  }
}
