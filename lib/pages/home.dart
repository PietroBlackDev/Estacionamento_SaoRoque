import 'package:estacionamentoSaoRoque/componentes/header.dart';
import 'package:estacionamentoSaoRoque/pages/cadastro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> menuItems = [
    {'icon': Icons.confirmation_num, 'title': 'Créditos E-Tickets'},
    {'icon': Icons.point_of_sale, 'title': 'Pontos de Vendas'},
    {'icon': Icons.local_parking, 'title': 'Praça de Estacionamento'},
    {'icon': Icons.history, 'title': 'Histórico de Tickets'},
    {'icon': Icons.notifications, 'title': 'Multas e Notificações'},
    {'icon': Icons.credit_card, 'title': 'Placas e Cartões'},
    {'icon': Icons.person, 'title': 'Meus Dados'},
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: TextStyle(color: Colors.white), // Cor branca
        ),
        backgroundColor: Color(
          0xFF083765,
        ), // Azul personalizado // Ícones do AppBar em branco (se houver)
      ),
      body: Column(
        children: [
          Header(texto: 'Home'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children:
                  menuItems.map((item) {
                    return MenuCard(icon: item['icon'], title: item['title']);
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Card(
        color: Colors.grey[200],
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => Cadastro()),
            );
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: const Color(0xFF083765),
                  child: Icon(icon, color: Colors.white, size: 35),
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
