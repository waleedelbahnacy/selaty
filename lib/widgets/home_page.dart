import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:selaty/widgets/best_seller_section.dart';
import 'package:selaty/widgets/categories_view.dart';
import 'package:selaty/widgets/category_section.dart';
import 'package:selaty/widgets/chance_section.dart';
import 'package:selaty/widgets/descount_section.dart';
import 'package:selaty/widgets/favourite_section.dart';
import 'package:selaty/widgets/fresh_section.dart';
import 'package:selaty/widgets/head_line.dart';

import 'package:selaty/widgets/header_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
              ),
            ),
             const SliverToBoxAdapter(
              child: HeaderSection(),
            ),
            SliverToBoxAdapter(
                child: HeadLine(
              headline: 'القيمه الافضل',
              subHeadline: 'اعلى المبيعات',
              onTap: () {},
            )),
            const SliverToBoxAdapter(
              child: FavouritesSection(),
            ),
            SliverToBoxAdapter(
                child: HeadLine(
              headline: 'التصنيفات',
              onTap: () {
                Navigator.pushNamed(context, CategoriesView.id);
              },
            )),
            const SliverToBoxAdapter(
              child: CategoriesSection(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'الأكثر مبيعا',
                      style:TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
        ),
                    ),
                    Text(
                      ' ➤ مشاهدة الكل',
                      style: TextStyle(
                        fontSize: 12,
                        color:  Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: BestSellerSection(),
            ),
            // SliverToBoxAdapter(
            //   child: Container(
            //     width: MediaQuery.sizeOf(context).width,
            //     height: 180,
            //     clipBehavior: Clip.hardEdge,
            //     decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(8)),
            //     ),
            //     child: Image.asset(
            //       'assets/images/fruits_img.jpg',
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                    right: 10, left: 10, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'تسوق حسب العروض',
                      style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
        ),
                    ),
                    Text(
                      ' ➤ مشاهدة الكل',
                      style: TextStyle(
      fontSize: 12,
      color: Colors.grey,
        ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: DescountSection(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'طازج وسريع',
                      style: TextStyle(
      fontSize: 18,
        ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: FreshSection(),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 180,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Image.asset(
                  'assets/images/fruits_img.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                    right: 10, left: 10, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'انتهز الفرصة',
                      style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
        ),
                    ),
                    Text(
                      ' ➤ مشاهدة الكل',
                      style:  TextStyle(
      fontSize: 12,
      color: Colors.grey,
        ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: ChanceSection(),
            )
          ],
        ),
        
        ),
    );
  }
 }
