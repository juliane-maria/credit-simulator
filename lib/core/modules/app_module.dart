import 'package:flutter_modular/flutter_modular.dart';

import '../../presenter/pages/first_page/first_page.dart';
import '../../presenter/pages/first_page/first_page_state.dart';
import '../../presenter/pages/home_page/home_page.dart';
import '../../presenter/pages/home_page/home_state.dart';
import '../../presenter/pages/second_page/second_page.dart';
import '../../presenter/pages/second_page/second_page_state.dart';
import '../../presenter/pages/third_page/third_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => HomeState(),
        ),
        Bind(
          (i) => FirstPageState(),
        ),
        Bind(
          (i) => SecondPageState(),
        ),
      ];

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
        ChildRoute(
          '/second-page',
          child: (context, args) => const SecondPage(),
        ),
        ChildRoute(
          '/third-page',
          child: (context, args) => const ThirdPage(),
        ),
      ];
}
