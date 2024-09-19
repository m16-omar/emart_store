import 'package:emart_store/common/services/storage.dart';
import 'package:emart_store/common/utils/kcolors.dart';
import 'package:emart_store/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigator();
    super.initState();
  }

  _navigator() async {
    await Future.delayed(
      Duration(milliseconds: 3000),
      () {
        if (Storage().getBool('firstOpen') == null) {
          // Go to the onboarding screen
          GoRouter.of(context).go('/onboarding');
        } else {
          // Go to home screen
          GoRouter.of(context).go('/home');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.kWhite,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(R.ASSETS_IMAGES_SPLASHSCREEN_WEBP),
          ),
        ),
      ),
    );
  }
}
