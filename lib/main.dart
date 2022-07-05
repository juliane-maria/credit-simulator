import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:simular_credito/presenter/theme_app.dart';

import 'core/modules/app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MainWidget()));
}

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Simulador de Crédito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ThemeApp.primaryColor,
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
