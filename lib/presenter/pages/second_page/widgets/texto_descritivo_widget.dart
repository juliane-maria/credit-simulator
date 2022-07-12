import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme_app.dart';

class TextoDescritivoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Bitcoin caiu? Fique Tranquilo! '
            'Na garantia\nprotegida,você não recebe'
            ' chamada de\nmargem '
            'e não é liquidado.',
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
