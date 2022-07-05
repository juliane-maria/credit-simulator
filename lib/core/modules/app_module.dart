import 'package:flutter_modular/flutter_modular.dart';
import 'package:simular_credito/presenter/pages/first_page/first_page.dart';

import '../../presenter/pages/home_page/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/first-page',
          child: (context, args) => const FirstPage(),
        ),
      ];
}
