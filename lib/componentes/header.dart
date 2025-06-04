import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.texto});

  final String texto;

  void _abrirMenuLateral(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Menu',
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.centerLeft,
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 232,
                      height: 232,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.arrow_back_rounded),
                    title: const Text('Voltar'),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.house),
                    title: const Text('Menu'),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.subdirectory_arrow_left),
                    title: const Text('Sair da Conta'),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.contact_support),
                    title: const Text('Dúvidas e informações'),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.privacy_tip),
                    title: const Text('Política de privacidade'),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final offsetAnimation = Tween<Offset>(
          begin: const Offset(-1.0, 0.0),
          end: Offset.zero,
        ).animate(animation);
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.20,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(244, 244, 244, 1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', width: 105, height: 105),
                const SizedBox(width: 13),
                const Text(
                  'Estacionamento Fácil',
                  style: TextStyle(
                    color: Color.fromRGBO(8, 55, 101, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: const BoxDecoration(color: Color.fromRGBO(8, 55, 101, 1)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                IconButton(
                  padding: EdgeInsets.all(0),
                  iconSize: 45,
                  icon: const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(244, 244, 244, 1),
                  ),
                  onPressed: () => _abrirMenuLateral(context),
                ),
                const SizedBox(width: 10),
                Text(
                  texto,
                  style: const TextStyle(
                    color: Color.fromRGBO(244, 244, 244, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
