import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class BuyTicket extends StatefulWidget {
  const BuyTicket({super.key});

  @override
  State<BuyTicket> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<BuyTicket> {
  String? acaoSelecionada;

  final List<String> acoes = ['Ativar Ticket', 'Comprar Crédito'];

  List<String> placasCadastradas = ['ABC-1234', 'XYZ-5678', 'DEF-9876'];
  String? placaSelecionada;

  String? tempoSelecionado;
  String validade = "14:30";

  List<String> formasPagamento = [
    'Cartão de Crédito',
    'Cartão de Débito',
    'Pix',
  ];
  String? formaPagamentoSelecionada;

  TextEditingController valorCreditoController = TextEditingController();

  void _mostrarModalPagamento() {
    if (formaPagamentoSelecionada == 'Pix') {
      showDialog(
        context: context,
        builder:
            (_) => AlertDialog(
              title: const Text('Pagamento via Pix'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.grey[300],
                     child: const Center(child: Image(image: AssetImage('lib/assets/img/qrcode.jpeg'))),
                  ),
                  const SizedBox(height: 20),
                  const Text('Escaneie o código com seu app bancário.'),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Fechar', style: TextStyle(color: Colors.purple),),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _mostrarConfirmacao();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                  ),
                  child: const Text('Concluir', style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ],
            ),
      );
    } else {
      showDialog(
        context: context,
        builder:
            (_) => AlertDialog(
              title: const Text('Dados do Cartão'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome do Titular',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                labelText: 'Número do Cartão',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    
                    decoration: InputDecoration(
                      labelText: 'Validade (MM/AA)',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: TextField(
                
                    decoration: InputDecoration(
                      labelText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Fechar', style: TextStyle(color: Colors.purple),),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _mostrarConfirmacao();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                  ),
                  child: const Text('Concluir', style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ],
            ),
      );
    }
  }

  void _mostrarConfirmacao() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            icon: const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 50,
            ),
            title: const Text('Pagamento realizado!'),
            content: const Text('Seu ticket foi adquirido com sucesso.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Fechar', style: TextStyle(color: Colors.purple)),
              ),
            ],
          ),
    );
  }


  @override
  void dispose() {
    valorCreditoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle Financeiro'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Saldo: R\$0,00',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Selecione opção',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
              value: acaoSelecionada,
              hint: Text('Selecione uma ação'),
              onChanged: (String? novaAcao) {
                setState(() {
                  acaoSelecionada = novaAcao;
                  placaSelecionada = null;
                  tempoSelecionado = null;
                  formaPagamentoSelecionada = null;
                  valorCreditoController.clear();
                });
              },
              items: acoes.map((acao) {
                return DropdownMenuItem<String>(
                  value: acao,
                  child: Text(acao),
                );
              }).toList(),
            ),
            SizedBox(height: 24),
            Expanded(child: _buildConteudo()),
          ],
        ),
      ),
    );
  }

  Widget _buildConteudo() {
    if (acaoSelecionada == 'Ativar Ticket') {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Escolha uma placa',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 12, vertical: 16),
                    ),
                    value: placaSelecionada,
                    hint: Text('Selecione uma placa'),
                    onChanged: (String? novaPlaca) {
                      setState(() {
                        placaSelecionada = novaPlaca;
                      });
                    },
                    items: placasCadastradas.map((placa) {
                      return DropdownMenuItem<String>(
                        value: placa,
                        child: Text(placa),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  height: 58,
                  child: ElevatedButton(
                    onPressed: _mostrarModalAdicionarPlaca,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Adicionar Placa'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Horário de Permanência',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                        ),
                        value: tempoSelecionado,
                        hint: Text('Selecione o tempo'),
                        onChanged: (String? novoTempo) {
                          setState(() {
                            tempoSelecionado = novoTempo;
                          });
                        },
                        items: ['1 hora', '2 horas', '3 horas'].map((tempo) {
                          return DropdownMenuItem<String>(
                            value: tempo,
                            child: Text(tempo),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Validade',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 100,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(validade, style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              'Formas de Pagamento',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                    ),
                    value: formaPagamentoSelecionada,
                    hint: Text('Metodo de Pagamento'),
                    onChanged: (value) {
                      setState(() {
                        formaPagamentoSelecionada = value;
                      });
                    },
                    items: formasPagamento.map((fp) {
                      return DropdownMenuItem<String>(
                        value: fp,
                        child: Text(fp),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _mostrarModalCadastrarCartao,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: Text('Cadastrar Cartão'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: _mostrarModalPagamento,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Ativar Ticket'),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (acaoSelecionada == 'Comprar Crédito') {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informe o valor do crédito',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: valorCreditoController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                MoneyInputFormatter(
                  leadingSymbol: 'R\$',
                  useSymbolPadding: true,
                  thousandSeparator: ThousandSeparator.Period,
                  mantissaLength: 2,
                ),
              ],
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'R\$0,00',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Formas de Pagamento',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    ),
                    value: formaPagamentoSelecionada,
                    hint: Text('Selecione o pagamento'),
                    onChanged: (value) {
                      setState(() {
                        formaPagamentoSelecionada = value;
                      });
                    },
                    items: formasPagamento.map((fp) {
                      return DropdownMenuItem<String>(
                        value: fp,
                        child: Text(fp),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  height: 58,
                  child: ElevatedButton(
                    onPressed: _mostrarModalCadastrarCartao,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: Text('Cadastrar Cartão'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: _mostrarModalPagamento,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Comprar Crédito'),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Center(
        child: Text(
          'Por favor, selecione uma opção acima.',
          style: TextStyle(fontSize: 16),
        ),
      );
    }
  }


  void _mostrarModalAdicionarPlaca() {
  TextEditingController placaController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Text('Adicionar Nova Placa'),
      content: TextField(
        controller: placaController,
        decoration: InputDecoration(
          hintText: 'Digite a placa (ex: ABC-1234)',
          border: OutlineInputBorder(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            String novaPlaca = placaController.text.trim();
            if (novaPlaca.isNotEmpty) {
              setState(() {
                placasCadastradas.add(novaPlaca);
                placaSelecionada = novaPlaca;
              });
            }
            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
          ),
          child: Text('Salvar'),
        ),
      ],
    ),
  );
}

void _mostrarModalCadastrarCartao() {
  TextEditingController nomeTitularController = TextEditingController();
  TextEditingController numeroCartaoController = TextEditingController();
  TextEditingController validadeController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Text('Cadastrar Cartão'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nomeTitularController,
              decoration: InputDecoration(
                labelText: 'Nome do Titular',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: numeroCartaoController,
              decoration: InputDecoration(
                labelText: 'Número do Cartão',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: validadeController,
                    decoration: InputDecoration(
                      labelText: 'Validade (MM/AA)',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: cvvController,
                    decoration: InputDecoration(
                      labelText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            // Aqui você pode salvar os dados se quiser.
            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
          ),
          child: Text('Salvar'),
        ),
      ],
    ),
  );
}




}
