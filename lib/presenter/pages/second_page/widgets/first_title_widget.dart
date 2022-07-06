import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme_app.dart';

class FirstTitleWidget extends StatefulWidget {
  final String firstTitle;

  const FirstTitleWidget({Key? key, required this.firstTitle})
      : super(key: key);

  @override
  State<FirstTitleWidget> createState() => _FirstTitleWidgetState();
}

class _FirstTitleWidgetState extends State<FirstTitleWidget> {
  final String recebeValorSimulado = 'R\$25.000';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Text.rich(
                TextSpan(
                  text: widget.firstTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: ThemeApp.secondColor),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 30, right: 20),
              child: Text(
                recebeValorSimulado,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: ThemeApp.primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
