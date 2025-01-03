import 'package:emart_store/common/utils/kcolors.dart';
import 'package:emart_store/common/widgets/app_style.dart';
import 'package:emart_store/src/cart/views/cart_screen.dart';
import 'package:emart_store/src/entrypoint/controllers/bottom_tab_notifier.dart';
import 'package:emart_store/src/home/views/home_screen.dart';
import 'package:emart_store/src/profile/views/profile_screen.dart';
import 'package:emart_store/src/wishlist/views/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

class AppEntryPoint extends StatefulWidget {
  AppEntryPoint({super.key});

  @override
  State<AppEntryPoint> createState() => _AppEntryPointState();
}

class _AppEntryPointState extends State<AppEntryPoint> {
  List<Widget> pageList = [
    HomeScreen(),
    WishListScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabIndexNotifier>(
      builder: (context, tabIndexNotifier, child) {
        return Scaffold(
          body: Stack(
            children: [
              pageList[tabIndexNotifier.index],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Kolors.kOffWhite),
                    child: BottomNavigationBar(
                      selectedFontSize: 12,
                      elevation: 0,
                      showSelectedLabels: true,
                      selectedLabelStyle:
                          appStyle(9, Kolors.kPrimary, FontWeight.w500),
                      showUnselectedLabels: false,
                      currentIndex: tabIndexNotifier.index,
                      selectedItemColor: Kolors.kPrimary,
                      unselectedItemColor: Kolors.kGray,
                      unselectedIconTheme: IconThemeData(color: Colors.black38),
                      onTap: (i) {
                        tabIndexNotifier.setIndex(i);
                      },
                      items: [
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 0
                                ? Icon(
                                    AntDesign.home,
                                    color: Kolors.kPrimary,
                                    size: 24,
                                  )
                                : Icon(
                                    AntDesign.home,
                                    size: 24,
                                  ),
                            label: "Home"),
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 1
                                ? Icon(
                                    Ionicons.heart,
                                    color: Kolors.kPrimary,
                                    size: 24,
                                  )
                                : Icon(
                                    Ionicons.heart_outline,
                                  ),
                            label: "Wishlist"),
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 2
                                ? Badge(
                                    label: Text('9'),
                                    child: Icon(
                                      MaterialCommunityIcons.shopping,
                                      color: Kolors.kPrimary,
                                      size: 24,
                                    ),
                                  )
                                : Badge(
                                    label: Text('9'),
                                    child: Icon(
                                      MaterialCommunityIcons.shopping_outline,
                                    ),
                                  ),
                            label: "Cart"),
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 3
                                ? Icon(
                                    EvilIcons.user,
                                    color: Kolors.kPrimary,
                                    size: 34,
                                  )
                                : Icon(
                                    EvilIcons.user,
                                    size: 34,
                                  ),
                            label: "Profile"),
                      ],
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
