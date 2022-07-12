import 'package:flutter/material.dart';
// padding: const EdgeInsets.only(left: 20, top: 20),

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text.rich(
                TextSpan(
                  text: 'Simule ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 47, 49, 49),
                  ),
                  children: [
                    TextSpan(
                      text: 'agora',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(
                          255,
                          33,
                          138,
                          147,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Crédito rápido,fácil e seguro! :)",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 47, 49, 49),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
