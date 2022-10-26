import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppController.dart';
import 'HomePage.dart';
import 'AppController.dart';
import 'LoginPage.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            //definindo o botão de trocar de tema
            primarySwatch: Colors.purple, //cor primaria do apk
            brightness:
                AppController.instance.isDartTheme //logica do botão de temas
                    ? Brightness.dark //? funcionando com if
                    : Brightness.light, //: funcionando como else
          ),
          initialRoute: '/', //definindo a rota primaria do apk
          routes: {
            //sistema de rotas do apk
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
