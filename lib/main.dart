import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/modules/app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: MainWidget()));
}

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App da ju',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 251, 251, 252),
        secondaryHeaderColor: const Color.fromRGBO(11, 107, 185, 1),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
