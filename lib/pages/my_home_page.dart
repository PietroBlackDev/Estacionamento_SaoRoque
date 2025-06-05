import 'package:estacionamentoSaoRoque/componentes/botao_voltar.dart';
import 'package:estacionamentoSaoRoque/componentes/header.dart';
import 'package:estacionamentoSaoRoque/pages/PlacasECartoesUm.dart';
import 'package:estacionamentoSaoRoque/pages/PoliticasPrivacidade.dart';
import 'package:estacionamentoSaoRoque/pages/perguntas_frequente.dart';
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
          spacing: 30,
          children: <Widget>[
            Header(texto: 'Placas e Cartões'),
            SizedBox(height: 10),
            BotaoVoltar(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Placasecartoesum(title: 'title'),
                    ),
                  );
                },
                child: Text('Fluxo Placas e Cartoes'),
              ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PerguntasFrequentesTela(),
                    ),
                  );
                },
                child: Text('Fluxo Perguntas Frequentes'),
              ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PoliticasPrivacidadeTela(),
                    ),
                  );
                },
                child: Text('Fluxo Políticas'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
