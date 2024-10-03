import 'package:emart_store/common/utils/kcolors.dart';
import 'package:emart_store/common/widgets/app_style.dart';
import 'package:emart_store/common/widgets/back_button.dart';
import 'package:emart_store/common/widgets/reusable_text.dart';
import 'package:emart_store/src/categories/controllers/category_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: ReusableText(
            text: context.read<CategoryNotifier>().category,
            style: appStyle(16, Kolors.kPrimary, FontWeight.bold)),
      ),
    );
  }
}
