import 'package:estacionamentoSaoRoque/pages/avisos_page.dart';
import 'package:estacionamentoSaoRoque/pages/pontos_estacionamento.dart';
import 'package:estacionamentoSaoRoque/pages/pontos_venda.dart';
import 'package:flutter/material.dart';
import 'package:estacionamentoSaoRoque/pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estacionamento São Roque',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AvisosPage(),
    );
  }
}
