import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget(
    title:"Teste"
  )); // no começo do app roda a classe AppWidget
}

class AppWidget extends StatelessWidget {

  final String title;

  const AppWidget({super.key, required this.title}); //contrutor q incializa tds as variaveis

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 50.0),
        ),
      ),
    );
  }
}
