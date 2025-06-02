import 'package:estacionamentoSaoRoque/componentes/header.dart';
import 'package:flutter/material.dart';

class PoliticasPrivacidadeTela extends StatefulWidget {
  const PoliticasPrivacidadeTela({super.key});

  @override
  State<PoliticasPrivacidadeTela> createState() =>
      _PoliticasPrivacidadeTelaState();
}

class _PoliticasPrivacidadeTelaState extends State<PoliticasPrivacidadeTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 40,
              children: [
                Header(texto: "Políticas de Privacidade"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    spacing: 20,
                    children: [
                      Text(
                        "Políticas de Privacidade do App",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
