import 'package:flutter/material.dart';
import 'package:selaty/view/fruits_item_view.dart';

class CategoryItemView extends StatelessWidget {
  const CategoryItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.pushNamed(context,AllFruitsItemsView.id);
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'فواكه',
              style:TextStyle(
                fontSize: 18,
              ),
            ),
            const Spacer(),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    height: 60,
                    width: double.infinity,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/fruits_category.jpg',
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  bottom: 30,
                  left: MediaQuery.of(context).orientation == Orientation.portrait ? 50 :55,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange,
                      child: Image.asset(
                        'assets/images/category_icon.png',
                        width: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
