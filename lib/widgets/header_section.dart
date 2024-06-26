import 'package:flutter/material.dart';
import 'package:selaty/view/profile_view.dart';


class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                 Navigator.pushNamed(context, ProfileView.id);
                } ,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 20,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/me.JPG',
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ),
               Column(
                children: [
                  const Text(
                    'وليد البهنسي ',
                    style: TextStyle(
    fontSize: 16,
  ),
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.location_on,
                            color: Color(0xffEF3F4C),
                            size: 16,
                          )),
                      Text(
                        'القليوبية -بنها',
                        style: TextStyle(
    fontSize: 16,
    color: Colors.grey,
  ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 35.0, // Adjust the width as needed
                height: 35.0, // Adjust the height as needed
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  // border: Border.all(
                  //   color: Colors.grey,
                  //   width: 1.0,
                  // ),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      // Your onPressed logic here
                    },
                    iconSize: 16, // Adjust the icon size as needed
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                    ),
                    color: Colors.black, // Set the icon color
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                      Icons.tune,
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
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          )),
                      labelText: 'البحث عن المنتجات...',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.cancel,
                        color: Colors.black,
                        size: 12,
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
