import 'package:emart_store/common/utils/kcolors.dart';
import 'package:emart_store/common/utils/kstrings.dart';
import 'package:emart_store/common/widgets/app_style.dart';
import 'package:emart_store/common/widgets/custom_button.dart';
import 'package:emart_store/common/widgets/reusable_text.dart';
import 'package:emart_store/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadiusAll,
      child: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight * 0.16,
            width: ScreenUtil().screenWidth,
            child: ImageSlideshow(
              indicatorColor: Kolors.kPrimaryLight,
              onPageChanged: (p) {},
              autoPlayInterval: 5000,
              isLoop: true,
              children: List.generate(images.length, (i) {
                return CachedNetworkImage(
                  placeholder: placeholder,
                  errorWidget: errorWidget,
                  imageUrl: images[i],
                  fit: BoxFit.cover,
                );
              }),
            ),
          ),
          Positioned(
              child: SizedBox(
            height: ScreenUtil().screenHeight * 0.16,
            width: ScreenUtil().screenWidth,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                      text: AppText.kCollection,
                      style: appStyle(20, Kolors.kOffWhite, FontWeight.w600)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Discount 50% off \nThe first transaction',
                    style: appStyle(
                        14, Kolors.kWhite.withOpacity(.8), FontWeight.normal),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomButton(text: "Shop Now", btnWidth: 150.w),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

List<String> images = [
  "assets/images/placeholder1.webp",
  "assets/images/placeholder1.webp",
  "assets/images/placeholder1.webp",
  "assets/images/placeholder1.webp",
//   "https://d326fntlu7tb1e.cloudfront.net/uploads/1.webp",
//   "https://d326fntlu7tb1e.cloudfront.net/uploads/1.webp",
];
