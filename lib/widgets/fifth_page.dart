import 'package:flutter/material.dart';
import 'package:selaty/widgets/login_page.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.key,
              
              color: Colors.white,
              size: 100,
            ),
            SizedBox(height: 25),
            Text(
              'كلمة المرور الخاصة بك لها',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 25),
              Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage(),
                            ),
                             );
                          },
                                    
                           style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 30),
                            
                             shape:  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                           ),
                           foregroundColor: Colors.red,
                            backgroundColor: Colors.white,
                          ),
                          
                          child:const Text(
                            'تم',
                            style: TextStyle(
                              fontSize: 20,
                             
                            ),
                            ),
                          ),
                      ),
        ],
        ),
      ),
    );
  }
}