import 'package:emart_store/common/services/storage.dart';
import 'package:emart_store/src/auth/views/login_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

    if (accessToken == null) {
      return const LoginScreen();
    }
    return Scaffold(
      body: Center(
        child: Text("Cart Screen"),
      ),
    );
  }
}
