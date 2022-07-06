import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simular_credito/presenter/theme_app.dart';

class ButtonSemGarantiaComponent extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  const ButtonSemGarantiaComponent(
      {Key? key, required this.buttonText, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, right: 9),
      child: SizedBox(
        width: 340,
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor:
                MaterialStateProperty.all<Color>(ThemeApp.thirdColor),
          ),
          onPressed: onTap,
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: ThemeApp.primaryColor),
          ),
        ),
      ),
    );
  }
}
