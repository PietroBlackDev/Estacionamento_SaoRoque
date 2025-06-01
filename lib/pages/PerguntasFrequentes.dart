import 'package:estacionamentoSaoRoque/componentes/header.dart';
import 'package:flutter/material.dart';

class PerguntasFrequentesTela extends StatefulWidget {
  const PerguntasFrequentesTela({super.key});

  @override
  State<PerguntasFrequentesTela> createState() =>
      _PerguntasFrequentesTelaState();
}

class _PerguntasFrequentesTelaState extends State<PerguntasFrequentesTela> {
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
                Header(texto: "Dúvidas e Informações"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    spacing: 20,
                    children: [
                      Text(
                        "Abaixo estão dúvidas e esclarecimentos mais frequentes sobre o aplicativo.",
                        style: TextStyle(fontSize: 25),
                      ),
                      Column(
                        spacing: 20,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.1,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Quais as formas de pagamentos permitidas?",
                                  style: TextStyle(fontSize: 17),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Color.fromRGBO(8, 55, 101, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.1,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Quais as formas de pagamentos permitidas?",
                                  style: TextStyle(fontSize: 17),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Color.fromRGBO(8, 55, 101, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.1,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Quais as formas de pagamentos permitidas?",
                                  style: TextStyle(fontSize: 17),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Color.fromRGBO(8, 55, 101, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.1,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Quais as formas de pagamentos permitidas?",
                                  style: TextStyle(fontSize: 17),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Color.fromRGBO(8, 55, 101, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.1,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Quais as formas de pagamentos permitidas?",
                                  style: TextStyle(fontSize: 17),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Color.fromRGBO(8, 55, 101, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.1,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Quais as formas de pagamentos permitidas?",
                                  style: TextStyle(fontSize: 17),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: Color.fromRGBO(8, 55, 101, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
