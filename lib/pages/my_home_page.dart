import 'package:estacionamentoSaoRoque/componentes/botao_voltar.dart';
import 'package:estacionamentoSaoRoque/componentes/header.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Header(texto: 'Placas e Cartões'),
            SizedBox(height: 10),
            BotaoVoltar(),
          ],
        ),
      ),
    );
  }
}
