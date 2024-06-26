import 'package:flutter/material.dart';
import 'package:selaty/view/address_view.dart';
import 'package:selaty/view/profile_view.dart';
import 'package:selaty/view/shopping_cart_view.dart';
import 'package:selaty/view/successful_order_view.dart';
import 'package:selaty/view/track_order_view.dart';
import 'package:selaty/widgets/empty_shopping_cart_view.dart';
import 'package:selaty/widgets/splash_screen.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const Selaty());
}

class Selaty extends StatelessWidget {
  const Selaty({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set landscape orientation
SystemChrome.setPreferredOrientations([
  DeviceOrientation.landscapeLeft,
  DeviceOrientation.landscapeRight,
]);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       routes: {
         ProfileView.id: (context) => const ProfileView(),
         ShoppingCartView.id: (context) => const ShoppingCartView(),
         EmptyShoppingCartView.id: (context) => const EmptyShoppingCartView(),
         AddressView.id: (context) => const AddressView(),
         SuccessfulOrderView.id: (context) => const SuccessfulOrderView(),
         TrackOrderView.id : (context) => const TrackOrderView(),
       },
      home:const SplashScreen(),
      );
      
  }
}

