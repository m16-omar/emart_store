import 'package:emart_store/src/cart/views/cart_screen.dart';
import 'package:emart_store/src/home/views/home_screen.dart';
import 'package:emart_store/src/profile/views/profile_screen.dart';
import 'package:emart_store/src/wishlist/views/wishlist_screen.dart';
import 'package:flutter/material.dart';

class AppEntryPoint extends StatelessWidget {
  AppEntryPoint({super.key});

  List<Widget> pageList = [
    const HomeScreen(),
    const WishlistScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [pageList[0]],
      ),
    );
  }
}
