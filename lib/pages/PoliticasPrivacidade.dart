import 'package:estacionamentoSaoRoque/componentes/header.dart';
import 'package:flutter/material.dart';

class PoliticasPrivacidadeTela extends StatefulWidget {
  const PoliticasPrivacidadeTela({super.key});

  @override
  State<PoliticasPrivacidadeTela> createState() =>
      _PoliticasPrivacidadeTelaState();
}

class _PoliticasPrivacidadeTelaState extends State<PoliticasPrivacidadeTela> {
  Widget _buildSection(String title, List<String> clauses) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...clauses.map(
          (clause) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(clause, style: const TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Header(texto: "Políticas de Privacidade"),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Políticas de Privacidade do App",
                        style: TextStyle(fontSize: 25),
                      ),
                      _buildSection("1. Disposições Gerais", [
                        "1.1. O presente instrumento estabelece os Termos e Condições de Uso do aplicativo Estacione Fácil...",
                        "1.2. Ao utilizar o Aplicativo, o usuário declara ter lido, compreendido e aceito integralmente...",
                        "1.3. O Aplicativo é de titularidade da Prefeitura Municipal de São Roque...",
                      ]),
                      _buildSection("2. Definições", [
                        "2.1. Usuário: Pessoa física ou jurídica que realiza o cadastro...",
                        "2.2. e-Tíquete: Documento digital que comprova o direito de uso...",
                        "2.3. Zona Azul: Sistema de estacionamento rotativo público...",
                      ]),
                      _buildSection("3. Cadastro e Acesso", [
                        "3.1. Para utilizar o Aplicativo, o Usuário deverá realizar cadastro...",
                        "3.2. O Usuário é responsável por manter seus dados atualizados...",
                        "3.3. O uso do Aplicativo por terceiros com os dados do Usuário...",
                      ]),
                      _buildSection("4. Aquisição e Uso de Créditos", [
                        "4.1. Os créditos para estacionamento poderão ser adquiridos...",
                        "4.2. Após a aquisição, o Usuário deverá ativar o e-Tíquete...",
                        "4.3. A não ativação do e-Tíquete ou a ativação com dados incorretos...",
                      ]),
                      _buildSection("5. Regras de Utilização do Estacionamento", [
                        "5.1. O horário de funcionamento da Zona Azul é: Segunda a sexta das 09h às 18h; Sábados das 09h às 13h.",
                        "5.2. O valor da tarifa é de R\$ 2,00 por hora...",
                        "5.3. É proibido: Exceder o tempo máximo, utilizar e-Tíquete de outro município...",
                      ]),
                      _buildSection("6. Fiscalização e Penalidades", [
                        "6.1. A fiscalização será realizada por agentes de trânsito municipais.",
                        "6.2. O descumprimento das regras poderá resultar em multa, remoção do veículo...",
                      ]),
                      _buildSection("7. Privacidade e Proteção de Dados", [
                        "7.1. Os dados pessoais fornecidos pelo Usuário serão tratados conforme a LGPD.",
                        "7.2. As informações de pagamento não são armazenadas pelo Aplicativo...",
                      ]),
                      _buildSection("8. Responsabilidades", [
                        "8.1. A Prefeitura de São Roque e a operadora do sistema não se responsabilizam por danos causados por uso indevido...",
                      ]),
                      _buildSection("9. Modificações dos Termos", [
                        "9.1. Estes Termos poderão ser alterados a qualquer momento...",
                        "9.2. O uso contínuo do Aplicativo após alterações será considerado como aceitação...",
                      ]),
                      _buildSection("10. Foro e Legislação Aplicável", [
                        "10.1. Este contrato será regido pelas leis da República Federativa do Brasil.",
                        "10.2. Fica eleito o foro da Comarca de São Roque/SP para dirimir quaisquer controvérsias oriundas deste instrumento.",
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
