//stateful widget que chama o state dele msm. O HomePage vai ser chamado no home do material app
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
            Container(
              height: 10,
            ),
            CustomSwitch(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(child: Text("Contador: $counter")),
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
                ),
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
      onTap: (value) {
        if (value == index) {
          //se ja estivar na pagina certa
          //n faz nada
        } else if (value == 0) {
          //home
          Navigator.of(context).pushReplacementNamed('/home');
        } else if (value == 1) {
          //mapa
          Navigator.of(context).pushReplacementNamed('/map');
        } else if (value == 2) {
          _abrirGit();
        }
      },
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
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("res/GitHub-Mark-32px.png")),
          label: 'GitHub',
          //backgroundColor: Colors.red,
        ),
      ],
      currentIndex: index,
    );
  }
  
  void _abrirGit() async {
    var uri = Uri(host: "github.com", path: "yasukawa426/flutter_video_aula" );
    const url = 'https://github.com/yasukawa426/flutter_video_aula';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
  }
}
