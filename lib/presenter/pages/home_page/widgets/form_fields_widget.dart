import 'package:flutter/material.dart';

class FormFielsWidget extends StatefulWidget {
  final String firsTitle;
  final String secondTitle;
  final String label;

  FormFielsWidget({
    Key? key,
    required this.firsTitle,
    required this.secondTitle,
    required this.label,
  }) : super(key: key);

  @override
  State<FormFielsWidget> createState() => _FormFielsWidgetState();
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(88, 44),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    backgroundColor: Colors.blue,
  );
}

class _FormFielsWidgetState extends State<FormFielsWidget> {
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
                    text: widget.firsTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 125, 133, 133)),
                    children: [
                      TextSpan(
                        text: widget.secondTitle,
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
            decoration: InputDecoration(
              hintText: widget.label,
            ),
          ),
        ),
      ],
    );
  }
}
