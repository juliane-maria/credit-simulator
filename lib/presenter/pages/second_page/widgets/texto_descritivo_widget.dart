import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme_app.dart';

class TextoDescritivoWidget extends StatelessWidget {
  final String text;
  const TextoDescritivoWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: ThemeApp.secondColor),
          ),
        ),
      ],
    );
  }
}
