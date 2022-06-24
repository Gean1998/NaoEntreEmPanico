import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nao_entre_em_panico/pages/home/home_store.dart';
import 'app.dart';
import 'app_store.dart';

void main() {
  runApp(const App());

  GetIt.I.registerSingleton(HomeStore());
  GetIt.I.registerSingleton(AppStore());
}
