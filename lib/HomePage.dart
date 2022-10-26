import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppController.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  //definindo a segunda tela
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo para Teste'), //titulo da segunda tela
        actions: [
          CustomSwitch(), //chamando o 'CustomSwitch' dentro da AppBar para poder mudar de tema nela msm
        ],
      ),
      body: Container(
        width: double.infinity, //alinhamento dos 'children' no meio da tela
        height: double.infinity, //alinhamento dos 'children' no meio da tela
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //alinhando o contador no meio da tela
          children: [
            Text('Contador: $counter'), //logica do contador
            Container(
                height:
                    20), //apenas para dar um espaço entre o contador e o switch de temas
            CustomSwitch(), //switch de temas
            Container(
                height:
                    20), //apenas para dar um espaço entre o switch e os 3 quadrados
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, //definindo qual vai ser o espacamento entre os 'children'
              crossAxisAlignment:
                  CrossAxisAlignment.center, //alinhando eles no centro
              children: [
                Container(
                  //primeiro quadrado
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  //segundo quadrado
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  //terceiro quadrado
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //botão para incrementar +1 no contador
        child: Icon(Icons.add), //estilo do botao
        onPressed: () {
          setState(() {
            counter++; //quando pressionado adicionar mais 1 na contagem
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  //swich de troca de temas
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance
            .changeTheme(); //chama a logica declarada no AppController
      },
    );
  }
}
