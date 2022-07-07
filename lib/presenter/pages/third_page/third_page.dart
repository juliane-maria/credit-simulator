import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../theme_app.dart';
import 'widgets/subtile_widget.dart';
import 'widgets/title_widget.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeApp.thirdColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.close),
          )
        ],
        backgroundColor: ThemeApp.thirdColor,
        foregroundColor: ThemeApp.primaryColor,
      ),
      body: Column(
        children: const [
          TitleWidget(
            text: 'Aguarde um momento',
          ),
          SubtitleWidget(
              text: 'Estamos simulando seu pedido de\n                 '
                  'crédito Rispar...')
        ],
      ),
    );
  }
}
