import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../components/button_garantia_component.dart';
import '../../components/button_sem_garantia_component.dart';
import '../../components/progress_bar_component.dart';
import '../../theme_app.dart';
import 'widgets/first_subtitle_widget.dart';
import 'widgets/first_title_widget.dart';
import 'widgets/second_subtitle_widget.dart';
import 'widgets/second_title_widget.dart';
import 'widgets/texto_descritivo_widget.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double _currentSliderValue = 12;
    double _currentSliderValue1 = 12;
    double progress = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      backgroundColor: ThemeApp.thirdColor,
      appBar: AppBar(
        backgroundColor: ThemeApp.thirdColor,
        elevation: 0,
        foregroundColor: ThemeApp.primaryColor,
        centerTitle: true,
        actions: const [],
        title: ProgressBarComponent(
            progress: progress / 3 * 2, maxProgress: progress),
      ),
      body: Column(
        children: [
          Row(
            children: [
              FirstTitleWidget(
                firstTitle: 'Valor escolhido',
                // secondTitle: 'RS 25.000',
                // firstSubtitle: 'Escolha a ',
                // secondSubtitle: 'quantidade de parcelas'
              ),
            ],
          ),
          Row(
            children: [
              FirstSubtitleWidget(firstSubtitle: 'Escolha a '),
              SecondSubtitleWidget(secondSubtitle: 'quantidade de parcelas')
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Slider(
              value: _currentSliderValue,
              activeColor: ThemeApp.primaryColor,
              max: 12,
              divisions: 4,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
          Row(
            children: [
              FirstSubtitleWidget(firstSubtitle: 'Escolha o '),
              SecondSubtitleWidget(secondSubtitle: 'percentual de garantia')
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Slider(
              activeColor: ThemeApp.primaryColor,
              value: _currentSliderValue1,
              max: 20,
              divisions: 2,
              label: _currentSliderValue1.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue1 = value;
                });
              },
            ),
          ),
          Row(
            children: [
              SecondTitleWidget(secondTitle: 'Garantia Protegida'),
            ],
          ),
          Row(
            children: [
              TextoDescritivoWidget(
                  text: 'Bitcoin caiu? Fique Tranquilo! '
                      'Na garantia\nprotegida,você não recebe'
                      ' chamada de\nmargem '
                      'e não é liquidado.'),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: ButtonSemGarantiaComponent(
                  buttonText: 'Continuar sem garantia',
                  onTap: () {
                    Modular.to.pushNamed('/third-page');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: ButtonGarantiaComponent(
                  buttonText: 'Adicionar garantia',
                  onTap: () {
                    Modular.to.pushNamed('/third-page');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
