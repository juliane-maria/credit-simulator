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
          Padding(
            padding: const EdgeInsets.only(top: 70, right: 9),
            child: SizedBox(
              width: 340,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(
                      255,
                      33,
                      138,
                      147,
                    ),
                  ),
                ),
                onPressed: null,
                child: Text(
                  buttonText,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
