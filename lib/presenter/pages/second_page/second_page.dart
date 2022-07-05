import 'package:flutter/material.dart';
import 'package:simular_credito/presenter/pages/second_page/widgets/texts_widgets.dart';

import '../../components/progress_bar_component.dart';
import '../../theme_app.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double _currentSliderValue = 12;
    double progress = MediaQuery.of(context).size.height / 4;
    return Scaffold(
      backgroundColor: ThemeApp.thirtColor,
      appBar: AppBar(
        backgroundColor: ThemeApp.thirtColor,
        elevation: 0,
        foregroundColor: ThemeApp.primaryColor,
        centerTitle: true,
        actions: const [],
        title:
            ProgressBarComponent(progress: progress / 2, maxProgress: progress),
      ),
      body: Column(
        children: [
          Row(
            children: [
              TextsWidgets(
                  firstTitle: 'Valor Escolhido',
                  secondTitle: 'RS 25.000',
                  firstSubtitle: 'Escolha a ',
                  secondSubtitle: 'quantidade de parcelas')
            ],
          ),
          Slider(
            value: _currentSliderValue,
            max: 12,
            divisions: 4,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
