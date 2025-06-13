import 'package:estacionamentoSaoRoque/componentes/header.dart';
import 'package:flutter/material.dart';

class PerguntasFrequentesTela extends StatefulWidget {
  const PerguntasFrequentesTela({super.key});

  @override
  State<PerguntasFrequentesTela> createState() =>
      _PerguntasFrequentesTelaState();
}

class _PerguntasFrequentesTelaState extends State<PerguntasFrequentesTela> {
  bool _clicado = false;
  bool _clicado2 = false;
  bool _clicado3 = false;
  bool _clicado4 = false;
  bool _clicado5 = false;
  bool _clicado6 = false;
  bool _clicado7 = false;
  bool _clicado8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 40,
              children: [
                Header(texto: 'Perguntas Frequentes'),
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
                        spacing: 30,
                        children: [
                          _clicado
                              ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 41,
                                  left: 41,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.005,
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                      ),
                                    ),

                                    const SizedBox(height: 26),
                                    Text(
                                      'As formas de pagamento utilizadas e permitidas para o Estacionamento Fácil incluem o uso de PIX, por meio de um código QR ou uso de um código de pagamento; e por cartão, ficando à sua escolha entre débito ou crédito.',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                    ),
                                    const SizedBox(height: 20),

                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.05,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                              209,
                                              10,
                                              10,
                                              1,
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _clicado = false;
                                            });
                                          },
                                          child: Text(
                                            'Voltar',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _clicado = true;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Quais as formas de pagamento\npermitidas?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Icon(Icons.add, size: 30),
                                    ],
                                  ),
                                ),
                              ),

                          _clicado2
                              ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 41,
                                  left: 41,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.005,
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                      ),
                                    ),

                                    const SizedBox(height: 26),
                                    Text(
                                      'Você pode adicionar saldo acessando a seção “Minha Conta” no aplicativo e selecionando a opção “Adicionar Saldo”. Escolha o método de pagamento e siga as instruções para concluir a transação.',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                    ),
                                    const SizedBox(height: 20),

                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.05,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                              209,
                                              10,
                                              10,
                                              1,
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _clicado2 = false;
                                            });
                                          },
                                          child: Text(
                                            'Voltar',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _clicado2 = true;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Como faço para adicionar\nsaldo na minha conta?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Icon(Icons.add, size: 30),
                                    ],
                                  ),
                                ),
                              ),

                          _clicado3
                              ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 41,
                                  left: 41,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.005,
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                      ),
                                    ),

                                    const SizedBox(height: 26),
                                    Text(
                                      'Sim! O aplicativo permite que você cadastre múltiplas placas de veículos na sua conta. Basta ir até a opção “Minhas Placas” e adicionar um novo veículo com os dados necessários.',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                    ),
                                    const SizedBox(height: 20),

                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.05,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                              209,
                                              10,
                                              10,
                                              1,
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _clicado3 = false;
                                            });
                                          },
                                          child: Text(
                                            'Voltar',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _clicado3 = true;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Posso cadastrar mais de\numa placa de carro?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Icon(Icons.add, size: 30),
                                    ],
                                  ),
                                ),
                              ),

                          _clicado4
                              ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 41,
                                  left: 41,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.005,
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                      ),
                                    ),

                                    const SizedBox(height: 26),
                                    Text(
                                      'Não, o saldo que você adiciona à conta permanece disponível até ser utilizado. Não há prazo de expiração.',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                    ),
                                    const SizedBox(height: 20),

                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.05,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                              209,
                                              10,
                                              10,
                                              1,
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _clicado4 = false;
                                            });
                                          },
                                          child: Text(
                                            'Voltar',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _clicado4 = true;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'O saldo na minha conta expira?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Icon(Icons.add, size: 30),
                                    ],
                                  ),
                                ),
                              ),

                          _clicado5
                              ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 41,
                                  left: 41,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.005,
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                      ),
                                    ),

                                    const SizedBox(height: 26),
                                    Text(
                                      'Sempre que você estaciona, basta selecionar a placa do veículo e confirmar a zona de estacionamento. O valor correspondente será automaticamente debitado do seu saldo.',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                    ),
                                    const SizedBox(height: 20),

                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.05,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                              209,
                                              10,
                                              10,
                                              1,
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _clicado5 = false;
                                            });
                                          },
                                          child: Text(
                                            'Voltar',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _clicado5 = true;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Como funciona o pagamento\ndo estacionamento?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Icon(Icons.add, size: 30),
                                    ],
                                  ),
                                ),
                              ),

                          _clicado6
                              ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 41,
                                  left: 41,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.005,
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                      ),
                                    ),

                                    const SizedBox(height: 26),
                                    Text(
                                      'Em geral, os pagamentos não podem ser cancelados após a confirmação. No entanto, se houver um problema, recomendamos entrar em contato com o suporte para verificar a melhor solução.',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                    ),
                                    const SizedBox(height: 20),

                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.05,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                              209,
                                              10,
                                              10,
                                              1,
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _clicado6 = false;
                                            });
                                          },
                                          child: Text(
                                            'Voltar',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _clicado6 = true;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'É possível cancelar um\npagamento de\nestacionamento?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Icon(Icons.add, size: 30),
                                    ],
                                  ),
                                ),
                              ),

                          _clicado7
                              ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 41,
                                  left: 41,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.005,
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                      ),
                                    ),

                                    const SizedBox(height: 26),
                                    Text(
                                      'O aplicativo está disponível apenas para a cidade de São Roque. Por isso, ele não funcionará se quiser estacionar em outra cidade.',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                    ),
                                    const SizedBox(height: 20),

                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.05,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                              209,
                                              10,
                                              10,
                                              1,
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _clicado7 = false;
                                            });
                                          },
                                          child: Text(
                                            'Voltar',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _clicado7 = true;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'O aplicativo funciona em\ntodas as cidades?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Icon(Icons.add, size: 30),
                                    ],
                                  ),
                                ),
                              ),

                          _clicado8
                              ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 41,
                                  left: 41,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.005,
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                      ),
                                    ),

                                    const SizedBox(height: 26),
                                    Text(
                                      'Caso tenha qualquer dificuldade, você pode acessar a seção de suporte no aplicativo ou entrar em contato diretamente com a equipe de atendimento ao cliente.',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                    ),
                                    const SizedBox(height: 20),

                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.05,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                              209,
                                              10,
                                              10,
                                              1,
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _clicado8 = false;
                                            });
                                          },
                                          child: Text(
                                            'Voltar',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _clicado8 = true;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'O que fazer em caso de\nproblemas com o saldo ou\ncadastro de placa?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Icon(Icons.add, size: 30),
                                    ],
                                  ),
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
