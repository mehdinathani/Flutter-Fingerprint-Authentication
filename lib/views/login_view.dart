import 'package:fingerprintauthdemo/viewmodel/loginview_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => LoginViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.authenticateWithBiometrics(); // Call your method here
      },
      builder: ((context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Login"),
          ),
          body: SafeArea(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: viewModel.authenticateWithBiometrics,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(viewModel.isAuthenticating
                          ? 'Cancel'
                          : 'Authenticate: biometrics only'),
                      const Icon(Icons.fingerprint),
                    ],
                  ),
                ),
              ],
            ),
          )),
        );
      }),
    );
  }
}
