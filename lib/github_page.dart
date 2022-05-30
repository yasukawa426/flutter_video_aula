import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_page.dart';

class GithubPage extends StatelessWidget {
  const GithubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GitHub"),
      ),
      bottomNavigationBar: CustomBottomBar(index: 2),
      body: Center(
        child: Text("Imagine o GitHub aqui!"),
      )
    );
  }
}