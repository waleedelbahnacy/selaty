import 'package:flutter/material.dart';
import 'package:selaty/widgets/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>onBoardingScreen(),),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
     body:Center(
       child: Container(
         child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
            children: [
              Image.asset('assets/images/Capture.PNG'),
              const SizedBox(
                height: 30,
              ),
              const CircularProgressIndicator(
                color: Colors.green,
              ),
              SizedBox(
                height: 70,
              ),
               Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              color: Colors.grey.withOpacity(.2),fit: BoxFit.cover,
              'assets/images/logo.png',
              width: 200,
              height: 200,
            ),
          ),
            ],
           ),
         ),
       ),
     ),
       );

  }
}