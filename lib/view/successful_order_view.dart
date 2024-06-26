import 'package:flutter/material.dart';
import 'package:selaty/view/track_order_view.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';

class SuccessfulOrderView extends StatelessWidget {
  const SuccessfulOrderView({super.key});
  static const String id = 'SuccessfulOrderView';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: const CustomAppBar(
          title: ' طلب نجاح',
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 20
                          : MediaQuery.sizeOf(context).width / 4),
              child: Container(
                height: MediaQuery.of(context).orientation == Orientation.portrait
                    ? MediaQuery.sizeOf(context).height * 0.7
                    : MediaQuery.sizeOf(context).height * 0.7,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                  color: Color(0xff2AC17E),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Image.asset(
                      'assets/images/success_bag_icon.png',
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 250
                          : 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'طلبك ناجح !',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 24
                              : 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        textAlign: TextAlign.center,
                        'شكرا على الطلب .. ستحصل عليه فى خلال بضع دقائقستحصل عليه فى خلال بضع دقائق',
                        style: TextStyle(
                     fontSize: 12,
                     color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomButton(
                        text: 'ترتيب المسار',
                        color: const Color(0xff38344B),
                        onTap: () {
                          Navigator.pushNamed(context, TrackOrderView.id);
                        },
                        width: double.infinity,
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 60
                            : 40,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
