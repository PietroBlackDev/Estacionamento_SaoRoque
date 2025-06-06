import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.texto});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.20,
          decoration: BoxDecoration(color: Color.fromRGBO(244, 244, 244, 1)),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 13,
              children: [
                Image.asset('assets/images/logo.png', width: 105, height: 105),
                Text(
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
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(color: Color.fromRGBO(8, 55, 101, 1)),
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                texto,
                style: TextStyle(
                  color: Color.fromRGBO(244, 244, 244, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
