import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key, required String title}) : super(key: key);


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
