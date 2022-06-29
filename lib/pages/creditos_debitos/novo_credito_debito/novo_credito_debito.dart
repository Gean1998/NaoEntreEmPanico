import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/novo_credito_debito/credito_debito_store.dart';

class NovoCreditoDebitoView extends StatefulWidget {
  const NovoCreditoDebitoView({Key? key}) : super(key: key);

  @override
  State<NovoCreditoDebitoView> createState() => _NovoCreditoDebitoViewState();
}

class _NovoCreditoDebitoViewState extends State<NovoCreditoDebitoView> {
  final store = CreditoDebitoStore();
  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Crédito'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: store.controllerValor,
                decoration: const InputDecoration(hintText: 'Valor'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: store.controllerDescricao,
                decoration: const InputDecoration(hintText: 'Descrição'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text('Data'),
                  IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2030),
                        fieldLabelText: 'Data',
                      ).then((value) {
                        store.data = value;
                      });
                    },
                    icon: const Icon(
                      Icons.date_range,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Débito'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: store.controllerValor,
                decoration: const InputDecoration(hintText: 'Valor'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: store.controllerDescricao,
                decoration: const InputDecoration(hintText: 'Descrição'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text('Data'),
                  IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2030),
                        fieldLabelText: 'Data',
                      ).then((value) {
                        store.data = value;
                      });
                    },
                    icon: const Icon(
                      Icons.date_range,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lançar Crédito/Débito'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await store.salvar();

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Lançamento salvo!')),
          );
        },
        child: Visibility(
          visible: !store.salvando,
          replacement: const CircularProgressIndicator(),
          child: const Icon(Icons.save, size: 32.0),
        ),
      ),
      body: Center(
        child: Observer(
          builder: (_) {
            return _widgetOptions.elementAt(store.index);
          },
        ),
      ),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.attach_money),
                label: 'Crédito',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.money_off),
                label: 'Débito',
              ),
            ],
            currentIndex: store.index,
            onTap: store.mudarIndex,
          );
        },
      ),
    );
  }
}
