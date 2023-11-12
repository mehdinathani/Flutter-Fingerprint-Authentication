import 'package:fingerprintauthdemo/compnents/custom_botton.dart';
import 'package:fingerprintauthdemo/compnents/textfields.dart';
import 'package:fingerprintauthdemo/viewmodel/RegisterView_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController();
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => RegisterViewModel(),
      builder: ((context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
          ),
          body: SafeArea(
              child: Column(
            children: [
              CustomTextField(controller: _name, labelText: "Name"),
              CustomButton(
                onPressed: () {},
                buttonText: 'Register',
              )
            ],
          )),
        );
      }),
    );
  }
}
