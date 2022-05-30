//responsavel por controlar entre tema claro ou escuro
import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController(); //singleton

  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme; //inverte o valor
    notifyListeners(); //basicamente um setState, notifica quem ta escutando
  }
}
