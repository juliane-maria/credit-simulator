import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../components/button_component.dart';
import '../../components/progress_bar_component.dart';
import '../../theme_app.dart';
import 'widgets/form_simula_widget.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double progress = MediaQuery.of(context).size.width / 2;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: ThemeApp.primaryColor,
        centerTitle: true,
        elevation: 0,
        actions: const [],
        title: ProgressBarComponent(
          maxProgress: progress,
          progress: progress / 3,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              FormSimulaWidget(
                firstTitle: 'De quanto ',
                secondTitle: 'você precisa? ',
                label: 'R\$25.000',
                firstSubtitle: 'Insira um valor entre ',
                secondSubtitle: 'R\$500 a R\$300',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ButtonComponent(
                  buttonText: 'Continuar',
                  onTap: () {
                    Modular.to.pushNamed('/second-page');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
