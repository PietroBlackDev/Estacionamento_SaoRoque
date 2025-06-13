import 'package:flutter/material.dart';// ícone de ticket

class HistoricTicket extends StatelessWidget {
  const HistoricTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Buscar por placa',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Informar placa',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text('Consultar'),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    _ticketCard(isSelected: true),
                    const SizedBox(height: 12),
                    _ticketCard(),
                    const SizedBox(height: 12),
                    _ticketCard(),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              _pagination(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ticketCard({bool isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE1BEE7), // roxo claro
        borderRadius: BorderRadius.circular(12),
        border: isSelected ? Border.all(color: Colors.blue, width: 2) : null,
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Ticket: xxxxxxxxxxxxxx'),
                Text('Placa: ABC1234'),
                Text('Emissão: xx/xx/xxxx xx:xx'),
                Text('Validade: xx/xx/xxxx xx:xx'),
                Text('Tempo de Permanência: 2 Horas'),
                Text('Valor: R\$XX,XX'),
              ],
            ),
          ),
          const SizedBox(width: 12),
          const Icon(
            Icons.confirmation_number,
            size: 48,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }

  Widget _pagination() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _pageButton(Icons.chevron_left, enabled: false),
        const SizedBox(width: 4),
        _numberButton(1, isActive: true),
        _numberButton(2),
        _numberButton(3),
        _numberButton(4),
        const SizedBox(width: 4),
        _pageButton(Icons.chevron_right),
      ],
    );
  }

  Widget _pageButton(IconData icon, {bool enabled = true}) {
    return IconButton(
      onPressed: enabled ? () {} : null,
      icon: Icon(icon),
    );
  }

  Widget _numberButton(int number, {bool isActive = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? Colors.purple : Colors.white,
          foregroundColor: isActive ? Colors.white : Colors.black,
          side: BorderSide(color: Colors.grey.shade300),
          minimumSize: const Size(36, 36),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(number.toString()),
      ),
    );
  }
}
