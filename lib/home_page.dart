//stateful widget que chama o state dele msm. O HomePage vai ser chamado no home do material app
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

//state de homepage
class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          child: Text('Contador: $counter'),
          onTap: () {
            setState(() { //o setstate é necessario para o estado atualizar. Se n, n veriamos nenhuma atualização na tela
            counter++;
            });
            print('clicado $counter vezes');
            
          }),
    );
  }
}
