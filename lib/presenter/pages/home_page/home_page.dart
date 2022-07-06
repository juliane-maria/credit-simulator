import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../components/button_padrao_component.dart';
import 'widgets/form_fields_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(
                "assets/image_1.jpeg",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Simule ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 47, 49, 49),
                        ),
                        children: [
                          TextSpan(
                            text: 'Agora',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
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
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    Text(
                      "Crédito rápido,fácil e seguro! :)",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 47, 49, 49),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FormFielsWidget(
                  firsTitle: 'Qual seu ',
                  secondTitle: 'nome Completo?',
                  label: 'Nome Completo',
                ),
              ),
              FormFielsWidget(
                firsTitle: 'E  seu ',
                secondTitle: 'e-mail?',
                label: 'seuemail@email.com',
              ),
              ButtonComponent(
                  buttonText: 'Continuar',
                  onTap: () {
                    Modular.to.pushNamed('/first-page');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
