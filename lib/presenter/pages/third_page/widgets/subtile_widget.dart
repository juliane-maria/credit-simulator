import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme_app.dart';

class SubtitleWidget extends StatelessWidget {
  final String text;
  const SubtitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text.rich(
          TextSpan(
            text: text,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: ThemeApp.secondColor),
          ),
        ),
      ),
    );
  }
}
