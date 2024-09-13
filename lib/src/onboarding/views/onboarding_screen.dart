import 'package:emart_store/src/onboarding/controllers/onboarding_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.read<OnboardingNotifier>().selectedPage.toString()),
      ),
    );
  }
}
