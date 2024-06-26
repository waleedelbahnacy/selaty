import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:selaty/widgets/on_boarding_screen2.dart';



class BoardingModel {
  final String image;
  final String text;

  BoardingModel({
    required this.text,
    required this.image,
  });
}

class onBoardingScreen extends StatelessWidget {
   onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/category_icon.png"),
            fit: BoxFit.cover,
            ),
            
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 125,
                backgroundColor: Color(0xFFFF1744).withOpacity(.1),
                child: CircleAvatar(

                  radius: 100,
                  backgroundColor: Color(0xFFFF1744).withOpacity(.3),
                  child: const CircleAvatar(
                    radius: 75,
                    child: Image(
                      height: 85,
                      width: 85,

                      image: AssetImage('assets/images/store.png'),),
                    backgroundColor: Color(0xFFFF1744)
                  ),
                ),
              ),
            
             
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:30 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'البحث بالقرب منك',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                       color: Color(0xFFFF1744),
                        
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  'ابحث عن المتاجر المفضلة التي تريدها بموقعك أو حيك',
                 maxLines: 2,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 100),
              Padding(
                padding: EdgeInsets.only(left: 10),

                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>onBoardingScreen2(),
                     ),
                     );
                   },
                   style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(
                              ), backgroundColor: Color(0xFFFF1744),
                              padding: EdgeInsets.all(16.0),
                             
                            ),
                            child: Icon(
                              color: Colors.white,
                              Icons.arrow_forward_outlined),
                          ),    
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}