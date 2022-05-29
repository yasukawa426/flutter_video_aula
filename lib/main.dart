import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget(
      title: "Teste")); // no começo do app roda a classe AppWidget
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget(
      {super.key,
      required this.title}); //contrutor q incializa tds as variaveis

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //esse materialApp é um widget q da a cara de um app pro app. Basicamente um tema de app da google
        theme: ThemeData(
            primarySwatch:
                Colors.blue //faz ele trabalhar com essa palheta de cor
            ),
        home: HomePage());
  }
}

//stateful widget que chama o state dele msm. O HomePage vai ser chamado no home do material app
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

//state de homepage
class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Oie'));
  }
}
