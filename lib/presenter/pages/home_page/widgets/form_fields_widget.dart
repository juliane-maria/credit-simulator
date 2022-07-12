import 'package:flutter/material.dart';

class FormFielsWidget extends StatelessWidget {
  final String firsTitle;
  final String secondTitle;
  final String label;
  final void Function(String value)? onChanged;
  final String? Function(String? value)? validator;

  const FormFielsWidget({
    Key? key,
    required this.firsTitle,
    required this.secondTitle,
    required this.label,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text.rich(
                TextSpan(
                    text: firsTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 125, 133, 133)),
                    children: [
                      TextSpan(
                        text: secondTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 30),
          child: TextFormField(
            onChanged: onChanged,
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: label,
            ),
          ),
        ),
      ],
    );
  }
}
