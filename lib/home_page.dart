//stateful widget que chama o state dele msm. O HomePage vai ser chamado no home do material app
import 'package:flutter/material.dart';

import 'app_controller.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,//centraliza o eixo principal (y)
          //crossAxisAlignment: CrossAxisAlignment.start,//eixo x
          children: [
            Text("Contador: $counter"),
            Container(
              height: 10,
            ),
            CustomSwitch(),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            //o setstate é necessario para o estado atualizar. Se n, n veriamos nenhuma atualização na tela
            counter++;
          });
          print('clicado $counter vezes');
        },
      ),
      bottomNavigationBar: CustomBottomBar(index: 0),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  final int index;

  const CustomBottomBar({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          //backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.place),
          label: 'Mapa',
          //backgroundColor: Colors.red,
        ),
      ],
      currentIndex: index,
    );
  }
}
