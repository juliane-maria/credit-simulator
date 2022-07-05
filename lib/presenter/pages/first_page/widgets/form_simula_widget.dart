import 'package:flutter/material.dart';

import '../../../theme_app.dart';

class FormSimulaWidget extends StatefulWidget {
  final String firstTitle;
  final String secondTitle;
  final String label;
  final String firstSubtitle;
  final String secondSubtitle;

  const FormSimulaWidget({
    Key? key,
    required this.firstTitle,
    required this.secondTitle,
    required this.label,
    required this.firstSubtitle,
    required this.secondSubtitle,
  }) : super(key: key);

  @override
  State<FormSimulaWidget> createState() => _FormSimulaWidgetState();
}

class _FormSimulaWidgetState extends State<FormSimulaWidget> {
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
                        color: ThemeApp.primaryColor),
                    children: [
                      TextSpan(
                        text: widget.secondTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: ThemeApp.secondColor,
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text.rich(
                TextSpan(
                    text: widget.firstSubtitle,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: ThemeApp.secondColor),
                    children: [
                      TextSpan(
                        text: widget.secondSubtitle,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          color: ThemeApp.secondColor,
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 30, top: 100),
          child: TextFormField(
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: ThemeApp.primaryColor),
              hintText: widget.label,
            ),
          ),
        ),
      ],
    );
  }
}
