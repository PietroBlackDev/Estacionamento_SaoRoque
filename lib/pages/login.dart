
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

import '../componentes/header.dart';
import 'cadastro.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FB),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                
                spacing: 20,
                children: [
                  
                  Header(texto: 'Login'),
                  Text(
                    "Faça login com seu e-mail e senha",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(8, 55, 101, 1),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Usuário',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(8, 55, 101, 1),
                        ),
                      ),
                    ),
                    validator:
                        (value) => value!.isEmpty ? 'Informe o usuário' : null,
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(8, 55, 101, 1),
                        ),
                      ),
                    ),
                    validator:
                        (value) => value!.isEmpty ? 'Informe a senha' : null,
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Color.fromRGBO(8, 55, 101, 1),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => HomePage()));
                      },
                      child: Text(
                        'Entrar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      // Ação para recuperação de senha
                    },
                    child: Text(
                      'Esqueceu sua senha ?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text('Não tem uma conta ?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Cadastro(),
                        ),
                      );
                    },
                    child: Text(
                      'Crie uma nova',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
