import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // Controladores para capturar o texto digitado pelo usuário
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza o conteúdo verticalmente
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress, // Teclado otimizado para email
            ),
            SizedBox(height: 16),
            TextField(
              controller: senhaController,
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true, // Esconde os caracteres digitados
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Verifica se os campos estão vazios
                if (emailController.text.isEmpty || senhaController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Preencha todos os campos')),
                  );
                  return;
                }

                // Navega para a tela de boas-vindas
                Navigator.pushNamed(context, '/welcome');
              },
              child: Text('Entrar'),
            ),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Não tem conta? Cadastre-se'),
            ),
          ],
        ),
      ),
    );
  }
}