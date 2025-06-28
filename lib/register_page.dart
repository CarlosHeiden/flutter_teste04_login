import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: Center(
        child: Text(
          'Aqui você irá ter uma tela de cadastro',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
