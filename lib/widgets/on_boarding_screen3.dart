import 'package:flutter/material.dart';
import 'package:selaty/widgets/first_page.dart';

class onBoardingScreen3 extends StatelessWidget {
  const onBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomRight,
            image: AssetImage("assets/images/category_icon.png"),
            ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 125,
                backgroundColor:Color(0xFF7E57C2).withOpacity(.1) ,
                child: CircleAvatar(
                   radius: 100,
                   backgroundColor: Color(0xFF7E57C2).withOpacity(.3),
                  child: const CircleAvatar(
                    radius: 75,

                    child: Image(
                      height: 120,
                      width: 120,
                   image: AssetImage('assets/images/fast.png'),),
                    backgroundColor: Color(0xFF7E57C2),
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
                      'تسليم سريع للمنازل',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                       color: Colors.deepPurple,
                        
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage(),
                      ),
                      );
                    }, 
                    style: ElevatedButton.styleFrom(
            shape: const CircleBorder(
            ), backgroundColor: Colors.deepPurple,
            padding: EdgeInsets.all(16.0),
          
          ),
          child: Icon(
            color: Colors.white,
            Icons.arrow_forward_outlined)
          
        ),
              
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}