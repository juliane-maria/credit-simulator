import 'package:flutter/material.dart';

import '../../../core/presenter/app_state.dart';
import '../../components/button_padrao_component.dart';
import 'home_state.dart';
import 'widgets/form_fields_widget.dart';
import 'widgets/home_title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends AppState<HomePage, HomeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(
                "assets/image_1.jpeg",
              ),
              const HomeTitleWidget(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: state.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FormFielsWidget(
                        firsTitle: 'Qual seu ',
                        secondTitle: 'nome Completo?',
                        label: 'Nome Completo',
                        onChanged: (value) {
                          state.name = value;
                        },
                        validator: (value) => state.validateName(value),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FormFielsWidget(
                        firsTitle: 'E  seu ',
                        secondTitle: 'e-mail?',
                        label: 'seuemail@email.com',
                        onChanged: (value) {
                          state.email = value;
                        },
                        validator: (value) => state.validateEmail(value),
                      ),
                    ],
                  ),
                ),
              ),
              ButtonComponent(
                buttonText: 'Continuar',
                onTap: () => state.nextPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
