import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  //criação do botão de temas

  static AppController instance = AppController();

  bool isDartTheme =
      false; //definindo q ao entrar no sistema, o botão vai estar desativado
  changeTheme() {
    isDartTheme =
        !isDartTheme; // quando o 'changeTheme' é chamado, ele vai inverter e ativar o 'isDartTheme'
    notifyListeners();
  }
}
