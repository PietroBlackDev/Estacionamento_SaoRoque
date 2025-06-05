import 'package:accordion/accordion.dart';
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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 40,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    spacing: 20,
                    children: [
                      Text(
                        "Abaixo estão dúvidas e esclarecimentos mais frequentes sobre o aplicativo.",
                        style: TextStyle(fontSize: 22),
                      ),
                      Column(
                        children: [
                          Accordion(
                            headerBorderColor: Colors.grey[700],
                            headerBorderColorOpened: Colors.transparent,
                            headerBackgroundColor: Colors.grey[400],

                            children: [
                              AccordionSection(
                                isOpen: false,
                                contentVerticalPadding: 10,
                                headerPadding: EdgeInsets.all(10),
                                rightIcon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                header: const Text(
                                  'Quais as formas de pagamento permitidas?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                content: const Text("AAAAAAAAAAAAAAAAAA"),
                              ),
                            ],
                          ),

                          Accordion(
                            headerBorderColor: Colors.grey[700],
                            headerBorderColorOpened: Colors.transparent,
                            headerBackgroundColor: Colors.grey[400],

                            children: [
                              AccordionSection(
                                isOpen: false,
                                contentVerticalPadding: 20,
                                headerPadding: EdgeInsets.all(10),
                                rightIcon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                header: const Text(
                                  'Quais as formas de pagamento permitidas?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                content: const Text("AAAAAAAAAAAAAAAAAA"),
                              ),
                            ],
                          ),

                          Accordion(
                            headerBorderColor: Colors.grey[700],
                            headerBorderColorOpened: Colors.transparent,
                            headerBackgroundColor: Colors.grey[400],

                            children: [
                              AccordionSection(
                                isOpen: false,
                                contentVerticalPadding: 20,
                                headerPadding: EdgeInsets.all(10),
                                rightIcon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                header: const Text(
                                  'Quais as formas de pagamento permitidas?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                content: const Text("AAAAAAAAAAAAAAAAAA"),
                              ),
                            ],
                          ),

                          Accordion(
                            headerBorderColor: Colors.grey[700],
                            headerBorderColorOpened: Colors.transparent,
                            headerBackgroundColor: Colors.grey[400],

                            children: [
                              AccordionSection(
                                isOpen: false,
                                contentVerticalPadding: 20,
                                headerPadding: EdgeInsets.all(10),
                                rightIcon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                header: const Text(
                                  'Quais as formas de pagamento permitidas?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                content: const Text("AAAAAAAAAAAAAAAAAA"),
                              ),
                            ],
                          ),

                          Accordion(
                            headerBorderColor: Colors.grey[700],
                            headerBorderColorOpened: Colors.transparent,
                            headerBackgroundColor: Colors.grey[400],

                            children: [
                              AccordionSection(
                                isOpen: false,
                                contentVerticalPadding: 20,
                                headerPadding: EdgeInsets.all(10),
                                rightIcon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                header: const Text(
                                  'Quais as formas de pagamento permitidas?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                content: const Text("AAAAAAAAAAAAAAAAAA"),
                              ),
                            ],
                          ),

                          Accordion(
                            headerBorderColor: Colors.grey[700],
                            headerBorderColorOpened: Colors.transparent,
                            headerBackgroundColor: Colors.grey[400],

                            children: [
                              AccordionSection(
                                isOpen: false,
                                contentVerticalPadding: 20,
                                headerPadding: EdgeInsets.all(10),
                                rightIcon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                header: const Text(
                                  'Quais as formas de pagamento permitidas?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                content: const Text("AAAAAAAAAAAAAAAAAA"),
                              ),
                            ],
                          ),

                          Accordion(
                            headerBorderColor: Colors.grey[700],
                            headerBorderColorOpened: Colors.transparent,
                            headerBackgroundColor: Colors.grey[400],

                            children: [
                              AccordionSection(
                                isOpen: false,
                                contentVerticalPadding: 20,
                                headerPadding: EdgeInsets.all(10),
                                rightIcon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                header: const Text(
                                  'Quais as formas de pagamento permitidas?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                content: const Text("AAAAAAAAAAAAAAAAAA"),
                              ),
                            ],
                          ),

                          Accordion(
                            headerBorderColor: Colors.grey[700],
                            headerBorderColorOpened: Colors.transparent,
                            headerBackgroundColor: Colors.grey[400],

                            children: [
                              AccordionSection(
                                isOpen: false,
                                contentVerticalPadding: 20,
                                headerPadding: EdgeInsets.all(10),
                                rightIcon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                header: const Text(
                                  'Quais as formas de pagamento permitidas?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                content: const Text("AAAAAAAAAAAAAAAAAA"),
                              ),
                            ],
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
