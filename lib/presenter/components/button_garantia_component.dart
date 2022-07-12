import 'package:flutter/material.dart';

import 'package:simular_credito/presenter/theme_app.dart';

class ButtonGarantiaComponent extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  const ButtonGarantiaComponent(
      {Key? key, required this.buttonText, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 9),
            child: SizedBox(
              width: 340,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(ThemeApp.primaryColor),
                ),
                onPressed: onTap,
                child: Text(
                  buttonText,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: ThemeApp.thirdColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
