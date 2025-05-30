import 'package:flutter/material.dart';

class BotaoVoltar extends StatelessWidget {
  const BotaoVoltar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.053,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          backgroundColor: WidgetStateProperty.all(
            Color.fromRGBO(8, 55, 101, 1),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 5,
          children: [
            Icon(
              Icons.arrow_circle_left_outlined,
              color: Color.fromRGBO(244, 244, 244, 1),
              size: 38,
            ),

            Text(
              'Voltar',
              style: TextStyle(
                color: Color.fromRGBO(244, 244, 244, 1),
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
