import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme_app.dart';

class FirstSubtitleWidget extends StatefulWidget {
  final String firstSubtitle;
  const FirstSubtitleWidget({Key? key, required this.firstSubtitle})
      : super(key: key);

  @override
  State<FirstSubtitleWidget> createState() => _FirstSubtitleWidgetState();
}

class _FirstSubtitleWidgetState extends State<FirstSubtitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text.rich(
                TextSpan(
                  text: widget.firstSubtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
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
