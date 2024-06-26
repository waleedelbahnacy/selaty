import 'package:flutter/material.dart';
import 'package:selaty/widgets/second_page.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
               Navigator.pop(context, MaterialPageRoute(builder: (context)=>SecondPage(),
               ),
               );
             }, icon: Icon(Icons.arrow_back_ios),
             ),
           ),
           title:
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                'التحقق من الهاتف',
                style: TextStyle(
                  fontSize: 18,
                  
                ),
              ),
            ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_sharp),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
               'الخاص بك هناOTPادخل رمز',
                
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                ),
              ),
      SizedBox(
                height: 80,
              ),
                  OtpTextField(
                    filled: true,
                    borderColor: Colors.red,
                    
                numberOfFields: 4,
                focusedBorderColor: Colors.red,
                fillColor: Colors.red,
                
                
                //set to true to show as box or false to show as dash
                showFieldAsBox: true, 
                //runs when a code is typed in
                onCodeChanged: (String code) {
          //handle validation or checks here           
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode){
          showDialog(
              context: context,
              builder: (context){
              return AlertDialog(
                  title: Text("Verification Code"),
                  content: Text('Code entered is $verificationCode'),
              );
              }
          );
                }, // end onSubmit
            ),
              SizedBox(
        height: 30,
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'لم يصل الكود ؟',
                    
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    ),
                ],
              ),
               SizedBox(
                      height: 5,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text(
                        'اعادة ارسال رمز جديد',
                          
                            style: TextStyle(
                              fontSize: 14,
                          color: Colors.red,
                                             ),
                                             ),
                       ],
                     ),
            ],
        ),
      ),
    );
  }
}