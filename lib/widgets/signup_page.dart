import 'package:flutter/material.dart';
import 'package:selaty/widgets/first_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
               Navigator.pop(context, MaterialPageRoute(builder: (context)=>FirstPage(),
               ),
               );
             }, icon: Icon(Icons.arrow_back_ios),
             ),
           ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_sharp),),
        ],
      ),
      body: Container(
        alignment: Alignment.topRight,
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'أنشاء حساب جديد',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ادخل بياناتك لانشاء حسابك',
                style: TextStyle(
                  color:Colors.grey,
                ),
                ),
                SizedBox(
                  height: 10,
                ),
              TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  labelText: 'الأسم',
                  border: OutlineInputBorder(),
                ),
              ),
                SizedBox(
                  height: 10,
                ),
            const TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  labelText: 'عنوان البريد الالكتروني',
                   prefixIcon: Icon(
                    Icons.check_circle_outline,
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
              SizedBox(height: 20),
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
                      
                      child:const Text('اشتراك'),
                      ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      'أو اشترك مع',
                     
                      ),
                  ),
                  
                    Row(
                      children: [
                       Image(
                        height: 160,
                        width: 160,
                        image:AssetImage('assets/images/google.PNG'),
                       ),
                    Image(
                        height: 160,
                        width: 160,
                        image:AssetImage('assets/images/facebook.PNG'),
                       ),
                       
                      ],
                    ),
                    SizedBox(height: 20),
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