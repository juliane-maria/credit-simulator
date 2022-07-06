import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme_app.dart';

class SecondSubtitleWidget extends StatefulWidget {
  final String secondSubtitle;
  const SecondSubtitleWidget({Key? key, required this.secondSubtitle})
      : super(key: key);

  @override
  State<SecondSubtitleWidget> createState() => _SecondSubtitleWidgetState();
}

class _SecondSubtitleWidgetState extends State<SecondSubtitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text.rich(
                TextSpan(
                  text: widget.secondSubtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ThemeApp.secondColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
