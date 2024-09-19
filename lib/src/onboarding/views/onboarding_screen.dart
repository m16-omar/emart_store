import 'package:emart_store/src/onboarding/controllers/onboarding_notifier.dart';
import 'package:emart_store/src/onboarding/views/widgets/onboarding_screen_one.dart';
import 'package:emart_store/src/onboarding/views/widgets/onboarding_screen_two.dart';
import 'package:emart_store/src/onboarding/views/widgets/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
        initialPage: context.read<OnboardingNotifier>().selectedPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              context.read<OnboardingNotifier>().setSelectedPage = page;
            },
            children: [
              OnboardingScreenOne(),
              OnboardingScreenTwo(),
              WelcomeScreen()
            ],
          ),
        ],
      ),
    );
  }
}
