import 'package:flutter/material.dart';
import 'package:nao_entre_em_panico/pages/home.dart';

import 'core/tema/tema.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: tema(),
      title: 'Não Entre Em Pânico',
      home: HomeView(),
    );
  }
}
