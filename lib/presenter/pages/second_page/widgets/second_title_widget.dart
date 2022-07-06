import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme_app.dart';

class SecondTitleWidget extends StatefulWidget {
  final String secondTitle;
  const SecondTitleWidget({Key? key, required this.secondTitle})
      : super(key: key);

  @override
  State<SecondTitleWidget> createState() => _SecondTitleWidgetState();
}

class _SecondTitleWidgetState extends State<SecondTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text.rich(
                TextSpan(
                  text: widget.secondTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: ThemeApp.primaryColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
