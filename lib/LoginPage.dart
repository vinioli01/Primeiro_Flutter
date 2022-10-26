import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /*Criando nova pagina*/

  //declarando as variaveis email e password
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context) //alinhando os 'child' no centro
              .size
              .width,
          height: MediaQuery.of(context) //alinhando os 'child' no centro
              .size
              .height,
          child: Padding(
            padding: const EdgeInsets.all(
                45.0), //Margem das bordas dos campos de input
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //align  center
              children: [
                TextField(
                  //declarando o input de email
                  onChanged: (text) {
                    email =
                        text; //campo vai receber um texto e vai armazenar em email
                  },
                  keyboardType:
                      TextInputType.emailAddress, //tipo de teclado para o input
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(), //tipo da borda do input
                  ),
                ),
                SizedBox(
                    height:
                        5), //apenas para dar um espaco entre o campo de email e senha
                TextField(
                  //declarando o input de senha
                  onChanged: (text) {
                    password =
                        text; //campo vai receber um texto e vai armazenar em passowrd
                  },
                  obscureText:
                      true, //linha para declarar q a senha deve ficar obstruida
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(), //tipo da borda do input
                  ),
                ),
                SizedBox(height: 20), //espaco entre senha e o botão de entrar
                TextButton(
                  //botão de entrar
                  onPressed: () {
                    if (email == 'user_adm' && password == 'admin') {
                      //login e senha q são aceitos no apk
                      Navigator.of(context).pushReplacementNamed(
                          //para dar o push na tela e ir para a homePage
                          '/home'); //se o login correto => redireciona
                    } else {
                      print('Login invalido');
                    }
                  },
                  child: Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
