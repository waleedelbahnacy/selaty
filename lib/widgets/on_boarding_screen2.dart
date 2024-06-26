import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:selaty/widgets/on_boarding_screen3.dart';

class onBoardingScreen2 extends StatelessWidget {
  const onBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                backgroundColor: Colors.green.withOpacity(.1),
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.greenAccent.withOpacity(.6),
                  child: const CircleAvatar(
                    radius: 75,
                    child: Image(
                      height: 85,
                      width: 85,
                   image:  AssetImage('assets/images/store.png'),),
                    backgroundColor: Colors.greenAccent,
                  ),
                ),
              ),
            
             
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal:30 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'عروض طازجة وجودة',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                       color: Colors.greenAccent,
                        
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'جميع العناصر لها نضارة حقيقية وهي مخصصة لاحتياجاتك',                     
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
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>onBoardingScreen3(),
                      ),
                      );
                    }, 
                    style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(
                              ), backgroundColor: Colors.greenAccent,
                              padding: EdgeInsets.all(16.0),
                              
                            ),
                            child: Icon(
                              color: Colors.white,
                              Icons.arrow_forward_outlined)
                            
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