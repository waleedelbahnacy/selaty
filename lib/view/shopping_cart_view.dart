import 'package:flutter/material.dart';
import 'package:selaty/widgets/custom_app_bar.dart';
import 'package:selaty/widgets/custom_button.dart';
import 'package:selaty/widgets/empty_shopping_cart_view.dart';
import 'package:selaty/widgets/shopping_list_item.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({super.key});
  static const String id = 'ShoppingCartView';

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              appBar: const CustomAppBar(
                title: 'عربة التسوق',
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: 5,
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: ShoppingListItem(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'البنود',
                                      style: TextStyle(
                                        fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                 ),
                                    ),
                                    Text(
                                      'المجموع الفرعي',
                                      style: TextStyle(
                                        fontSize: 18,
                                fontWeight: FontWeight.bold,
                                 ),
                                 ),
                                    Text(
                                      'رسوم التوصيل',
                                      style: TextStyle(
                                     fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.grey,
                               ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '4',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                     fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.grey,
                             ),
                                    ),
                                    Text(
                                      r'100.00 $',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                     fontSize: 16,
                             fontWeight: FontWeight.bold,
                             color: Colors.grey,),
                                    ),
                                    Text(
                                      'Free',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                     fontSize: 16,
                             fontWeight: FontWeight.bold,
                             color: Colors.grey,),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'الاجمالي',
                                  style: TextStyle(
                                     fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                  color: Colors.black
                                  ),
                                ),
                                Text(
                                  '100.00 SAR',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontSize: 20,
                                fontWeight: FontWeight.bold,
                              color: Colors.black
                                   ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomButton(
                        text: 'الدفع',
                        color: Color(0xff2AC17E),
                        onTap: () {
                          Navigator.pushNamed(context, EmptyShoppingCartView.id);
                        },
                        width: double.infinity),
                  )
                ],
              ),
            ),
        )
        : Scaffold(
            appBar: const CustomAppBar(
              title: 'عربة التسوق',
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: ShoppingListItem(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'البنود',
                                    style: TextStyle(
                                     fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey,
                                 ),
                                     ),
                                  Text(
                                    'المجموع الفرعي',
                                    style:  TextStyle(
                                     fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey,),
                                  ),
                                  Text(
                                    'رسوم التوصيل',
                                    style:  TextStyle(
                                     fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey,),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '4',
                                    textDirection: TextDirection.ltr,
                                    style:  TextStyle(
                                     fontSize: 16,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey,),
                                  ),
                                  Text(
                                    r'100.00 $',
                                    textDirection: TextDirection.ltr,
                                    style:  TextStyle(
                                     fontSize: 16,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey,),
                                  ),
                                  Text(
                                    'Free',
                                    textDirection: TextDirection.ltr,
                                    style:  TextStyle(
                                     fontSize: 16,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                           const Spacer(),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'الاجمالي',
                                style: TextStyle(
                                  fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: Colors.black
                                ),
                              ),
                              Text(
                                '100.00 SAR',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                               fontSize: 20,
                        fontWeight: FontWeight.bold,
                            color: Colors.black
                         ),
                              ),
                            ],
                          ),
                          CustomButton(
                              text: 'الدفع',
                              color: Color(0xff2AC17E),
                              onTap: () {
                                // Navigator.pushNamed(
                                //     context, EmptyShoppingCartView.id);
                              },
                              width: double.infinity),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
