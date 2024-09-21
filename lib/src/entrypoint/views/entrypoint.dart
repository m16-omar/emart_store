import 'package:emart_store/common/utils/kcolors.dart';
import 'package:emart_store/src/cart/views/cart_screen.dart';
import 'package:emart_store/src/home/views/home_screen.dart';
import 'package:emart_store/src/profile/views/profile_screen.dart';
import 'package:emart_store/src/wishlist/views/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

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
        children: [
          pageList[3],
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Kolors.kOffWhite),
              child: BottomNavigationBar(
                selectedFontSize: 12,
                elevation: 0,
                backgroundColor: Kolors.kOffWhite,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                unselectedIconTheme: IconThemeData(color: Colors.black38),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        AntDesign.home,
                        color: Kolors.kPrimary,
                        size: 24,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        AntDesign.home,
                        color: Kolors.kPrimary,
                        size: 24,
                      ),
                      label: "Wishlist"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        AntDesign.home,
                        color: Kolors.kPrimary,
                        size: 24,
                      ),
                      label: "Cart"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        AntDesign.home,
                        color: Kolors.kPrimary,
                        size: 24,
                      ),
                      label: "Profile"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
