import 'package:flutter/material.dart';
import 'package:flutter_application_one/presentation/resources/color_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.gray2,
      body: const Center(child: Text("Welcome to on boarding")),
    );
  }
}
