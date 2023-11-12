import 'package:fingerprintauthdemo/viewmodel/homeview_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: ((context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
          ),
          body: SafeArea(
              child: Column(
            children: [],
          )),
        );
      }),
    );
  }
}
