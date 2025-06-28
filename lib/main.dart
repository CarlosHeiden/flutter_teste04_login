import 'package:flutter/material.dart';

import 'login_page.dart';
import 'register_page.dart';
import 'welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App01',
      // Define a tela inicial do aplicativo
      initialRoute: '/',
      // Define as rotas nomeadas para navegação
      routes: {
        '/': (context) => LoginPage(), // Rota raiz aponta para a tela de Login
        '/register': (context) => RegisterPage(),
        '/welcome': (context) => WelcomePage(),
      },
    );
  }
}