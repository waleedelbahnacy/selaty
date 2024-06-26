import 'package:flutter/material.dart';
import 'package:selaty/widgets/first_page.dart';
import 'package:selaty/widgets/fourth_page.dart';
import 'package:selaty/widgets/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        leading: 
           Container(
          alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              
            ),
             child: IconButton(onPressed: ()
             {
               Navigator.pop(context, MaterialPageRoute(builder: (context)=>const FirstPage(),
               ),
               );
             }, icon: Icon(Icons.arrow_back_ios),
             ),
           ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_sharp),),
        ],
      ),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Capture2.PNG',
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      labelText: 'عنوان البريد الالكتروني',
                      prefixIcon: Icon(Icons.check_circle_outline,
                      color: Colors.green,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                    SizedBox(
                      height: 10,
                    ),
                  TextField(
                    obscureText: true,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      prefix:Icon(Icons.remove_red_eye_outlined),
                      labelText:'كلمة السر' ,
                      border: OutlineInputBorder(),
                    ),
                  ),
                   SizedBox(
                      height: 5,
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                         child: const Text( 'هل نسيت كلمة السر',
                           style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                           ),
                           ),
                        onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthPage(),
                          ),
                           );
                        }
                        ),
                    ],
                  ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage(),
                           
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
                        
                        child:const Text('تسجيل الدخول'),
                        ),
                    ),
                       SizedBox(height: 180),
                      Row(
                        children: [
                          Text(
                            'تسجيل الدخول',
                            
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            ),
                            SizedBox(width: 120,),
                              Text(
                            'لديك حساب بالفعل؟',
                            
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
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