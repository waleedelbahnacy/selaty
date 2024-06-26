import 'package:flutter/material.dart';
import 'package:selaty/widgets/fifth_page.dart';
import 'package:selaty/widgets/third_page.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

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
               Navigator.pop(context, MaterialPageRoute(builder: (context)=>ThirdPage(),
               ),
               );
             }, icon: Icon(Icons.arrow_back_ios),
             ),
           ),
           title:
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                'تغيير كلمة المرور',
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
          children: [
            Text(
              'ادخل كلمة المرور الجديدة',
              style: TextStyle(
                color: Colors.grey,
              ),
              ),
              SizedBox(
                    height: 50,
                  ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefix:Icon(Icons.remove_red_eye_outlined),
                    labelText:'كلمة المرور الحالي' ,
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                    height: 15,
                  ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefix:Icon(Icons.remove_red_eye_outlined),
                    labelText:'كلمة مرور جديدة' ,
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>FifthPage(),
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
                            
                            child:const Text('تغير'),
                            ),
                        ),
          ],
        ),
      ),
    );
  }
}