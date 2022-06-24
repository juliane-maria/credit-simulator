import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String buttonText;

  const ButtonComponent({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: null,
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
