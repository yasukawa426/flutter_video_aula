import 'package:flutter/material.dart';
import 'package:flutter_video_aula/login_page.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'map_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {  
        return MaterialApp(
        //esse materialApp é um widget q da a cara de um app pro app. Basicamente um tema de app da google
        theme: ThemeData(
            primarySwatch:Colors.blue,
            brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light
             //faz ele trabalhar com essa palheta de cor
            ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/map': (context) => MapPage(),
        }
        );
    },);
  }
}
