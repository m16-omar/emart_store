import 'package:emart_store/common/utils/kcolors.dart';
import 'package:emart_store/common/utils/kstrings.dart';
import 'package:emart_store/common/widgets/app_style.dart';
import 'package:emart_store/common/widgets/back_button.dart';
import 'package:emart_store/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: AppBackButton(),
          title: ReusableText(
              text: AppText.kCategories,
              style: appStyle(16, Kolors.kPrimary, FontWeight.bold))),
    );
  }
}
