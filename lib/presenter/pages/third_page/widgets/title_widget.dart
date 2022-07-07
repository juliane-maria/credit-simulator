import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme_app.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  const TitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 230,
        ),
        Column(
          children: [
            CircularProgressIndicator.adaptive(),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text.rich(
                  TextSpan(
                    text: text,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 28,
                        color: ThemeApp.secondColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
