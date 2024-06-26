import 'package:flutter/material.dart';


class AllFruitsItemsView extends StatelessWidget {
  const AllFruitsItemsView({Key? key}) : super(key: key);
  static const String id=  'AllFruitsItemsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: CustomScrollView(
         physics: const BouncingScrollPhysics(),
         slivers: [
               SliverToBoxAdapter(
             child: Stack(
               clipBehavior: Clip.none,
               children: [
                 Container(
                   height: 130,
                   decoration: const BoxDecoration(
                     color: Color(0xff2AC17E),
                   ),
                 ),
                 Positioned(
                   right: MediaQuery.sizeOf(context).width / 2 -45,
                   bottom: -40,
                   // left: MediaQuery.of(context).orientation == Orientation.portrait ? 50 :55,
                   child: CircleAvatar(
                     radius: 45,
                     backgroundColor: Colors.white.withOpacity(0.5),
                     child: CircleAvatar(
                       radius: 40,
                       backgroundColor: Colors.white,
                       child: Image.asset(
                         'assets/images/fruits.png',
                         width: 70,
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
           const SliverToBoxAdapter(
             child: SizedBox(
               height: 50,
             ),
           ),
           SliverToBoxAdapter(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     width: 50, // Adjust the width as needed
                     height: 50, // Adjust the height as needed
                     decoration: BoxDecoration(
                       color: Color(0xffEF3F4C),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     child: Center(
                       child: IconButton(
                         onPressed: () {
                           // Your onPressed logic here
                         },
                         iconSize: 24, // Adjust the icon size as needed
                         icon: const Icon(
                           Icons.font_download,
                           color: Colors.white,
                         ),
                         color: Colors.black, // Set the icon color
                       ),
                     ),
                   ),
                   const SizedBox(width: 10,),
                   Expanded(
                     child: Container(
                       height: 50,
                       decoration: const BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(8)),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
            const SliverToBoxAdapter(
             child: SizedBox(
               height: 20,
             ),
           ),
     
         ],
       ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
