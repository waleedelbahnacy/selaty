import 'package:flutter/material.dart';
import 'package:selaty/widgets/login_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:selaty/widgets/third_page.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
               Navigator.pop(context, MaterialPageRoute(builder: (context)=>const LoginPage(),
               ),
               );
             }, icon: Icon(Icons.arrow_back_ios),
             ),
           ),
           title:
            Container(
              alignment: Alignment.topRight,
              child: Text(
                'تحقق من رقم الهاتف',
                style: TextStyle(
                  fontSize: 16,
                  
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
          children: [
            Text(
              'لقد ارسلنا لك رسالة نصية قصيرة تحتوي علي رمز الي رقم 9665612348',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
              ),
              SizedBox(height: 40),
             IntlPhoneField(
            decoration: InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
              borderSide: BorderSide(),
          ),
            ),
            initialCountryCode: 'IN',
            onChanged: (phone) {
          print(phone.completeNumber);
            },
        ),
             SizedBox(height: 15),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage(),
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
                          
                          child:const Text('تأكيد'),
                          ),
                      ),
          ],
        ),
      ),
      
    );
  }
}