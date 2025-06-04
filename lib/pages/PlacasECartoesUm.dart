import 'package:estacionamentoSaoRoque/componentes/botao_voltar.dart';
import 'package:estacionamentoSaoRoque/componentes/header.dart';
import 'package:estacionamentoSaoRoque/pages/Cartoes.dart';
import 'package:estacionamentoSaoRoque/pages/Placas.dart';
import 'package:flutter/material.dart';

class Placasecartoesum extends StatefulWidget {
  const Placasecartoesum({super.key, required this.title});

  final String title;

  @override
  State<Placasecartoesum> createState() => _PlacasecartoesumState();
}

class _PlacasecartoesumState extends State<Placasecartoesum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(texto: 'Placas e Cartões'),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: BotaoVoltar(),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.31,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue.shade100, // Cor da borda
                      width: 2, // Largura da borda
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Placas',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 1.5),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: MediaQuery.of(context).size.height * 0.190,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 59, 224),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 20,
                              children: [
                                Icon(
                                  Icons.car_crash_outlined,
                                  color: Color.fromRGBO(244, 244, 244, 1),
                                  size: 110,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.13,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.016,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                          244,
                                          244,
                                          244,
                                          1,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          120,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.13,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.016,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                          244,
                                          244,
                                          244,
                                          1,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          120,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                padding: WidgetStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero,
                                ),
                                backgroundColor: WidgetStateProperty.all(
                                  Color.fromRGBO(8, 55, 101, 1),
                                ),
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Placas(title: ''),
                                  ),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Acessar',
                                    style: TextStyle(
                                      color: Color.fromRGBO(244, 244, 244, 1),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.31,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue.shade100, // Cor da borda
                          width: 2, // Largura da borda
                        ),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Cartões',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 1.5),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.55,
                                height:
                                    MediaQuery.of(context).size.height * 0.190,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 0, 59, 224),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 20,
                                  children: [
                                    Icon(
                                      Icons.credit_score,
                                      color: Color.fromRGBO(244, 244, 244, 1),
                                      size: 120,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      spacing: 10,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.13,
                                          height:
                                              MediaQuery.of(
                                                context,
                                              ).size.height *
                                              0.016,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                              244,
                                              244,
                                              244,
                                              1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              120,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.13,
                                          height:
                                              MediaQuery.of(
                                                context,
                                              ).size.height *
                                              0.016,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                              244,
                                              244,
                                              244,
                                              1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              120,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.55,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    padding:
                                        WidgetStateProperty.all<EdgeInsets>(
                                          EdgeInsets.zero,
                                        ),
                                    backgroundColor: WidgetStateProperty.all(
                                      Color.fromRGBO(8, 55, 101, 1),
                                    ),
                                    shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Cartoes(title: ''),
                                  ),
                                );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Acessar',
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                            244,
                                            244,
                                            244,
                                            1,
                                          ),
                                          fontSize: 19,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
