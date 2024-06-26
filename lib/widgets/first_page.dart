import 'package:flutter/material.dart';
import 'package:selaty/widgets/login_page.dart';
import 'package:selaty/widgets/signup_page.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            
         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Image.asset(
                'assets/images/Capture2.PNG',
                width: 300,
                height: 300,
                ),
                    
                Container(
                  margin: EdgeInsets.symmetric(horizontal:10 ),
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),
                      ),
                      );
                    },
                    child: Text('تسجيل الدخول'),
                       
                    style: ElevatedButton.styleFrom(fixedSize: Size(double.maxFinite,50),
                          
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                     ),
                     
                     foregroundColor: Colors.white,
                     backgroundColor: Colors.red,
                              ),
                            ),
                ),
          const SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage(),
                      ),
                      );
                    },
                              
                     style: ElevatedButton.styleFrom(
                      fixedSize: Size(double.maxFinite, 50),
                      
                       shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                     ),
                     foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                    ),
                    
                    child:const Text('انشاء حساب'),
                    
                  
                    ),
                ),
                  SizedBox(
                    height: 100,
                  ),
                  Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              color: Colors.grey.withOpacity(.2),fit: BoxFit.fill,
              'assets/images/logo.png',
              width: 200,
              height: 200,
            ),
          ),
            ],
          ),  
                ),
            ],
          ),
        
    
      
    );
  }
}