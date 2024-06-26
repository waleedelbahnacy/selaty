import 'package:flutter/material.dart';
import 'package:selaty/view/category_home_view_body.dart';


class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const CategoryItemHomeView(),
      ),
    );
  }
}