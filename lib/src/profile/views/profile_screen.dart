import 'package:emart_store/common/services/storage.dart';
import 'package:emart_store/common/utils/kcolors.dart';
import 'package:emart_store/common/widgets/app_style.dart';
import 'package:emart_store/common/widgets/custom_button.dart';
import 'package:emart_store/common/widgets/help_bottom_sheet.dart';
import 'package:emart_store/common/widgets/reusable_text.dart';
import 'package:emart_store/src/auth/views/login_screen.dart';
import 'package:emart_store/src/profile/widget/tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

    if (accessToken == null) {
      return const LoginScreen();
    }
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              CircleAvatar(
                radius: 35,
                backgroundColor: Kolors.kOffWhite,
                child: Icon(
                  FontAwesome.user,
                  size: 35,
                  color: Kolors.kPrimary,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              ReusableText(
                  text: "icontech1@gmail.com",
                  style: appStyle(11, Kolors.kGray, FontWeight.normal)),
              SizedBox(
                height: 7.h,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                      color: Kolors.kOffWhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: ReusableText(
                      text: "Icon Tech",
                      style: appStyle(14, Kolors.kDark, FontWeight.w600)))
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            color: Kolors.kOffWhite,
            child: Column(
              children: [
                ProfileTileWidget(
                  title: 'My Orders',
                  leading: Octicons.checklist,
                  onTap: () {
                    context.push('/orders');
                  },
                ),
                ProfileTileWidget(
                  title: 'Shipping Address',
                  leading: MaterialIcons.location_pin,
                  onTap: () {
                    context.push('/addaddress');
                  },
                ),
                ProfileTileWidget(
                  title: 'Privacy Policy',
                  leading: MaterialIcons.policy,
                  onTap: () {
                    context.push('/policy');
                  },
                ),
                ProfileTileWidget(
                  title: 'Help Center',
                  leading: AntDesign.customerservice,
                  onTap: () => showHelpCenterBottomSheet(context),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: CustomButton(
              text: "Logout".toUpperCase(),
              btnColor: Kolors.kRed,
              btnHieght: 35,
              btnWidth: ScreenUtil().screenWidth,
            ),
          )
        ],
      ),
    );
  }
}
