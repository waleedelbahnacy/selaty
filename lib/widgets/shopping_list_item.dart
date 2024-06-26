import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoppingListItem extends StatefulWidget {
  const ShoppingListItem({super.key});

  @override
  State<ShoppingListItem> createState() => _ShoppingListItemState();
}

class _ShoppingListItemState extends State<ShoppingListItem> {
  bool isClicked = false;
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return isClicked
        ? GestureDetector(
            onTap: () {
              setState(() {
                isClicked = false;
              });
            },
            child: Container(
              height: 130,
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 80,
                    decoration: const BoxDecoration(
                      color: Color(0xffEF3F4C),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    count ++;
                                  });
                                },
                                icon: const Icon(
                                 FontAwesomeIcons.plus,
                                  size: 16,
                                ),
                              ),

                              Text(
                                count.toString(),
                                     style:const TextStyle(
                                fontSize: 18,
                         fontWeight: FontWeight.bold,
                                ),
                                ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    count --;
                                  });
                                },
                                icon: const Icon(
                                 FontAwesomeIcons.minus,
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                r'35.00$ ''x$count',
                                textDirection: TextDirection.ltr,
                                style: const TextStyle(
                            color: Color(0xff2AC17E),
                        fontSize: 16,
                         fontWeight: FontWeight.bold,
                                ),
                                ),
                            
                              const Text(
                                'كمثرى امريكي',
                                style: TextStyle(
                             fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                              
                              const Text(
                                '1 kg',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 16,
                               ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      )
                    ),
                  ),
                ],
              )
            )
        )
        : GestureDetector(
            onTap: () {
              setState(() {
                isClicked = true;
              });
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            count ++;
                          });
                        },
                        icon: const Icon(
                          FontAwesomeIcons.plus,
                          size: 16,
                        ),
                      ),

                      Text(
                        count.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                      
                      IconButton(
                        onPressed: () {
                          setState(() {
                            count --;
                          });
                        },
                        icon: const Icon(
                          FontAwesomeIcons.minus,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        r'35.00$ ''x$count',
                        textDirection: TextDirection.ltr,
                        style: const TextStyle(
                            fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2AC17E),
                         ),
                         ),
                      const Text(
                        'كمثرى امريكي',
                        style: TextStyle(
                          fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '1 kg',
                        textDirection: TextDirection.ltr,
                             style: TextStyle(
                         fontSize: 16,
                         ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          );
  }
}
