import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme_app.dart';

class TextsWidgets extends StatefulWidget {
  final String firstTitle;
  final String secondTitle;
  final String firstSubtitle;
  final String secondSubtitle;
  const TextsWidgets(
      {Key? key,
      required this.firstTitle,
      required this.secondTitle,
      required this.firstSubtitle,
      required this.secondSubtitle})
      : super(key: key);

  @override
  State<TextsWidgets> createState() => _TextsWidgetsState();
}

class _TextsWidgetsState extends State<TextsWidgets> {
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
                  text: widget.firstTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: ThemeApp.secondColor),
                  //children: [

                  // TextSpan(
                  //   text: widget.firstSubtitle,
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.normal,
                  //     fontSize: 25,
                  //     color: ThemeApp.secondColor,
                  //   ),
                  // ),
                  // TextSpan(
                  //   text: widget.secondSubtitle,
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //     color: ThemeApp.secondColor,
                  //   ),
                  // ),
                  //],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text.rich(
                TextSpan(
                  text: widget.secondTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: ThemeApp.primaryColor,
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
