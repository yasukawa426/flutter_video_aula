import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      //da um scroll pra cada filho dele
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                )),
            SizedBox(
              height: 10,
            ),
            TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(),
                )),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                if (email == "email@email.com" && password == "password") {
                  //Navigator.of(context).push(//coloca a proxima tela em cima da atual, podendo voltar caso quiser
                  //Navigator.of(context).pushReplacement(//descarta a ultima tela, substituindo ela
                    //MaterialPageRoute(builder: (context) => HomePage())
                  //);
                  Navigator.of(context).pushReplacementNamed('/home'); //passa para a rota com nome '/home'
                } else {
                  print("errado");
                }
              },
              child: const Text("Entrar"),
            )
          ]),
        ),
      ),
    ));
  }
}
