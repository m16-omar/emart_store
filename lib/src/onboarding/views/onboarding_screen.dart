import 'package:emart_store/src/onboarding/controllers/onboarding_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<OnboardingNotifier>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                pro.setSelectedPage = 2;
              },
              child: Text('Increment')),
          Text(pro.selectedPage.toString()),
        ],
      ),
    );
  }
}
